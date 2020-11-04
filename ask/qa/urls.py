from django.urls import path
from . import views

urlpatterns = [
    path(r'\d+/', views.test, name='test')
]
