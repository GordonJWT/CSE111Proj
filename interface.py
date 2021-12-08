from os import error
import sqlite3
from sqlite3 import Error
from pprint import pprint


def openConnection(_dbFile):

    conn = None
    try:
        conn = sqlite3.connect(_dbFile)
    except Error as e:
        print(e)

    return conn

def closeConnection(_conn, _dbFile):
    try:
        _conn.close()
    except Error as e:
        print(e)

def menu(conn, team):
    print("""Options:
    1. Search for a character
    2. Search for a weapon
    3. Build a Team
    4. Edit a Team
    5. Quit
    """)
    choice = int(input())

    if choice == 1:
        characterselect(conn)
    if choice == 2:
        weaponselect(conn)
    if choice == 3:
        build(conn)
    if choice == 4:
        edit(conn, team)
    if choice == 5:
        quit
def characterselect(conn):
    print("""Search for a character:
    """)
    name = input()
    cur = conn.cursor()
    cur.execute(f"""
        Select m_name, nb_name, wb_name
        from Character, NBoss, Monster, WBoss, Talent, CharMat
        where c_name = "{name}"
        and c_commonmat = cm_commonmat
        and cm_commonmat = m_commonmat
        and (nb_jewel = c_jewel or nb_ascentmat = c_ascentmat)
        and c_name = t_charname
        and t_talentmat = wb_talentmat
        group by nb_name, wb_name, m_name
    """)
    results = cur.fetchall()
    print(f"Here are the enemies you need to fight for {name}:")
    for result in results:
        print(', '.join(result))
    print()

    cur.execute(f"""
        Select w_name
        from Character, Weapon, CharWeap
        where c_name = "{name}"
        and c_weapontype = cw_weapontype
        and cw_weapontype = w_weapontype
        group by w_name
    """)
    results = cur.fetchall()
    print(f"Here are the possible weapons for {name}:")
    for result in results:
        print(''.join(result))
    print()
    return menu(conn, 0)


def weaponselect(conn):
    print("""Search for a weapon:
    """)
    name = input()
    cur = conn.cursor()
    cur.execute(f"""
        Select m_name, d_name, d_time
        from Weapon, Monster, Domain
        where w_name = "{name}"
        and (w_ascentmat = m_ascentmat or m_commonmat = w_commonmat)
        and d_weaponmat = w_weaponmat
    """)
    results = cur.fetchall()
    print("Here are the enemies you need to fight and what domain with its time:")
    for result in results:
        print(', '.join(result))
    return menu(conn, 0)
def build(conn):
    print("Add a character:")
    team = []
    for x in range(4):
        character = input()
        team += [character]
    print ('This is your team:', ', '.join(team))
    cur = conn.cursor()
    for y in team:
        cur.execute(f"""
        Select m_name, nb_name, wb_name
        from Character, NBoss, Monster, WBoss, Talent
        where c_name = "{y}"
        and c_commonmat = m_commonmat
        and (nb_jewel = c_jewel or nb_ascentmat = c_ascentmat)
        and c_name = t_charname
        and t_talentmat = wb_talentmat
        group by nb_name, wb_name, m_name
    """)
        results = cur.fetchall()
        print(f"Here are the enemies you need to fight for {y}:")
        for result in results:
            print(', '.join(result))
        print()
    return menu(conn, team)

def edit(conn, team):
    print ('This is your team:', ', '.join(team))
    print ('Who would you like to change?')
    character = input()
    for x, member in enumerate(team):
        if character == member:
            del team[x]
    while len(team) <= 3:
            print("Add a character:")
            character = input()
            team += [character]
            print ('This is your new team:', ', '.join(team))
    cur = conn.cursor()
    for y in team:
        cur.execute(f"""
        Select m_name, nb_name, wb_name
        from Character, NBoss, Monster, WBoss, Talent
        where c_name = "{y}"
        and c_commonmat = m_commonmat
        and (nb_jewel = c_jewel or nb_ascentmat = c_ascentmat)
        and c_name = t_charname
        and t_talentmat = wb_talentmat
        group by nb_name, wb_name, m_name
    """)
        results = cur.fetchall()
        print(f"Here are the enemies you need to fight for {y}:")
        for result in results:
            print(', '.join(result))
        print() 
    
def main():
    database = r"Genshin.db"

    # create a database connection
    conn = openConnection(database)
    team = []
    with conn:
        menu(conn, team)

    closeConnection(conn, database)


if __name__ == '__main__':
    main()