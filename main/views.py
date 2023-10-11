from django.shortcuts import render
from django.http import HttpResponse


def index(request):
    return HttpResponse("<h4>Test</h4>")


def about(request):
    return HttpResponse(
        """<h2>This is an a new version of application for our 
        solid state electrochemistry laboratory.</h2>
        <h4>Here I take into account last half of year experience and will extend
        a applicatin functional by addition of new equipment.</h4>""")
