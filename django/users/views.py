from django.http import HttpResponse
from django.shortcuts import render
from .models import User

def index(request):
  users = User.objects.all()
  return render(request, 'users/index.html', {'users': users})

def show(request, user_id):
  user = User.objects.get(pk=user_id)
  return render(request, 'users/show.html', {'user': user})
