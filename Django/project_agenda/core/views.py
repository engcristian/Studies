from django.shortcuts import render, HttpResponse, redirect
from core.models import Evento
from django.contrib.auth.decorators import login_required
from django.contrib.auth import authenticate, login, logout
from django.contrib import messages
from datetime import datetime, timedelta

def submit_login(request):
    if request.POST:
        username = request.POST.get('username')
        password = request.POST.get('password')
        usuario = authenticate(username = username, password = password)
        if usuario is not None:
            login(request, usuario)
            return redirect('/')
        else:
            messages.error(request, "usuario ou senha inválidos")    
    return redirect('/')


def logout_user(request):
    logout(request)
    return redirect('/')

def login_user(request):
    return render(request, 'login.html')

@login_required(login_url = '/login/')
def lista_eventos(request):
    usuario= request.user
    data_atual = datetime.now() - timedelta(hours=1)
    eventos = Evento.objects.filter(usuario = usuario,
                                    data_evento__gt = data_atual)
    dados = ({'eventos' : eventos})
    return render(request,'agenda.html', dados)


@login_required(login_url= '/login/')
def evento(request):
    id_evento = request.GET.get('id')
    dados = {}
    if id_evento:
        dados['evento'] = Evento.objects.get(id=id_evento)
    return render(request,'evento.html', dados)


@login_required(login_url='/login/')
def delete_evento(request, id_evento):
    usuario = request.user
    evento = Evento.objects.get(id = id_evento)
    if usuario == evento.usuario:
        evento.delete()
    return redirect('/')




@login_required(login_url= '/login/')
def submit_evento(request):
    if request.POST:
        titulo = request.POST.get('titulo')
        data_event = request.POST.get('data_event')
        descricao = request.POST.get('descricao')
        locale = request.POST.get('lugar')
        usuario = request.user
        id_evento = request.POST.get('id_evento')
        if id_evento:
            Evento.objects.filter(id= id_evento).update(titulo = titulo,
                data_evento = data_event,
                descricao = descricao)
            
        else:   
            Evento.objects.create(
                titulo = titulo,
                data_evento = data_event,
                descricao = descricao,
                local = locale,
                usuario = usuario            
            )   
    return redirect('/')
