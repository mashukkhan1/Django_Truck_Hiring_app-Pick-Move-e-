from django.urls import path
from . import views
import accounts.views as V

urlpatterns = [
    path('',views.index, name = 'index'),
    path('adminHome/',V.adminHome, name = 'adminHome'),
    path('about/',views.about, name = 'about'),
    path('faq/',views.faq, name = 'faq'),
    path('tnc/',views.tnc, name = 'tnc'),
    path('services/',views.services, name = 'services'),
    path('contactUs/',views.contactUs, name = 'contactUs'),

]