file = open('file.txt','a')
tableName="moon"
file.write("\n\n")
for i in range(2,21):
    planet_id=i%15 
    if i==15: planet_id=1
    query=f"insert into moon(name,moon_age,moon_description,planet_id) values('{tableName}{i}',{i*10},'{tableName}{i} is amazing',{planet_id});"
    query+="\n"
    file.write(query)
    print(query)