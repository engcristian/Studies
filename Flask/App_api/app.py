from flask import Flask, jsonify, request

app = Flask(__name__)

devs = [
    { 
    'nome': 'Cristian',
    'habilidade': 'Python'
    },
    {   
    'nome': 'Santiago',
    'habilidade' : 'Flask'
    }
]
@app.route('/dev/<int:id>/', methods=['GET', 'PUT'])
    
def developer(id):
    if request.method == 'GET':
            
        developer = devs[id]
        print(developer)
        return jsonify(developer)
    elif request.method == 'PUT':
        dados = json.loads(request.data)
        devs[id] = dados
        return jsonify(dados)
    



if __name__ =='__main__':
    app.run( debug= True)