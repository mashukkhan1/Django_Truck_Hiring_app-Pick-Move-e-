from django.shortcuts import render,redirect
from django.contrib.auth.models import User
# import according to model class


# Create your views here.
def index(request):
    user = request.user
    if user.is_authenticated and user.is_staff:
        return redirect('adminHome/')# sent to the html as object values
    else:
        return render(request, '1.home.html')

def about(request):
    return render(request, 'about.html')

def faq(request):
    return render(request, 'faq.html')

def tnc(request):
    return render(request,'tnc.html')

def services(request):
    return render(request,'services.html')

def contactUs(request):
    return render(request,'contactUs.html')