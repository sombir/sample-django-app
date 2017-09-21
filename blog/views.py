from django.shortcuts import render
from django.http import HttpResponseRedirect
from django.views.generic import TemplateView
from .models import Articles
from .models import Pages
from .models import Contacts
from .forms import ContactUsForm
from datetime import datetime



# Create your views here.
class HomePageView(TemplateView):
	def get(self, request, **kwargs):
		ArticleList =  Articles.objects.all()
		AboutContent = Pages.objects.get(id=1)
		ServicesContent = Pages.objects.get(id=2)
		return render(request, 'index.html', {'ArticleList': ArticleList,'AboutContent': AboutContent,'ServicesContent': ServicesContent})

# Add this view
class AboutPageView(TemplateView):
	def get(self, request, **kwargs):
		PageContent = Pages.objects.get(id=1)
		return render(request, 'about.html', {'PageContent': PageContent})		

# Add this view
class ServicesPageView(TemplateView):
	def get(self, request, **kwargs):
		PageContent = Pages.objects.get(id=2)
		return render(request, 'services.html', {'PageContent': PageContent})	


# Add this view
class ContactPageView(TemplateView):
	def post(self, request, **kwargs):
		PageContent = Pages.objects.get(id=3)
		if request.method == 'POST':
			form = ContactUsForm(request.POST)
			if form.is_valid():
				print("is post if")
				# process form data
				obj = Contacts() #gets new object
				obj.name = form.cleaned_data['name']
				obj.email = form.cleaned_data['email']
				obj.phone_number = form.cleaned_data['phone_number']
				obj.subject = form.cleaned_data['subject']
				obj.message = form.cleaned_data['message']
				obj.created_at = datetime.now()
				#finally save the object in db
				obj.save()
				return render(request, 'contact.html', {'PageContent': PageContent,'formSubmitted': 'true'})
			else:
				print(form.errors)
				return render(request, 'contact.html', {'PageContent': PageContent})
	def get(self, request, **kwargs):	
		PageContent = Pages.objects.get(id=3)
		return render(request,'contact.html', {'PageContent': PageContent})	
		
# Add this view
class ArticleDetailPageView(TemplateView):
	def get(self, request, **kwargs):
		ArticleContent = Articles.objects.get(id=kwargs['article_id'])
		return render(request, 'article_details.html', {'ArticleContent': ArticleContent})		