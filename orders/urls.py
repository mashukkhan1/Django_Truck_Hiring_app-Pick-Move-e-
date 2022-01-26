from django.urls import path
from . import views

urlpatterns = [
    path('instantorders/',views.instantorders, name = 'instantorders'),
    path('memberOrders/',views.memberOrders, name = 'memberOrders'),
    path('bill/',views.bill, name = 'bill'),

]