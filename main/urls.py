from django.urls import path
from . import views

urlpatterns = [
    # path('', home_view, name='home'),
    path('', views.index, name='home'),
]