from django.db import models
from django.contrib.auth.models import User
from datetime import datetime
class Evento(models.Model):
    #Create a tittle
    titulo = models.TextField(verbose_name ='Título', max_length= 100)
    descricao = models.TextField(blank= True, null = True)
    data_evento = models.DateTimeField(verbose_name='Data do Evento')
    local = models.TextField(blank = True, null = True)
    #Get the time it was created
    data_criacao = models.DateTimeField(verbose_name= 'Data da Criação', auto_now=True)
    #Opening to other users
    usuario = models.ForeignKey(User, on_delete= models.CASCADE)
    
    class Meta:
        db_table = 'evento'

    def __str__(self):
        return self.titulo
    def get_data_evento(self):
        return self.data_evento.strftime('%d/%m/%y %H:%M hrs')

    def get_data_input_evento(self):
        return self.data_evento.strftime('%Y-%m-%dT%H:%M')
    
    def evento_atrasado(self):
        if self.data_evento < datetime.now():
            return True
        else:
            return False