from django.http import HttpResponse
from django.shortcuts import render

# Create your views here.

def index(request):
    context ={

        'movies':['gladiator','top Gun', 'casino']
    }
    return render(request,'movies/index.html', context)  
def about(request):
    return render(request,'movies/about.html', {})  