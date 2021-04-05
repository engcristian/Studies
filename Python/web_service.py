import json
data = """ [

    {
    "First_name":"Cristian",
    "Second_name": "Santiago",
    "Last_name": "da Silva"
    },

    {     
    "day": "31",
    "month": "October",
    "year": "1991",
    "age": "29"
    }]
    
    """
info = json.loads(data)
print('Idade:', info[1]['day'])


