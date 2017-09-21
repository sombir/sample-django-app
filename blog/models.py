from django.db import models
from django import forms

# Create your models here.
class Articles(models.Model):                                                                      
	title = models.CharField('title', max_length=100)      
	summary = models.TextField('summary', max_length=200, blank=True)	
	description = models.TextField('description', max_length=500, blank=True)
	created_at = models.DateTimeField('Datetime created') 
	
class Pages(models.Model):                                                                      
	title = models.CharField('title', max_length=100)                                                 
	summary = models.TextField('summary', max_length=200, blank=True)
	description = models.TextField('description', max_length=500, blank=True)
	created_at = models.DateTimeField('Datetime created') 	
	
class Contacts(models.Model):                                                                      
	name = models.CharField('name', max_length=100, blank=False)                                                 
	email = models.CharField('email', max_length=100, blank=False)
	phone_number = models.CharField('phone_number', max_length=50, null=True, blank=False)
	subject = models.CharField('subject', max_length=200, blank=False)
	message = models.TextField('message', max_length=500, blank=True)
	created_at = models.DateTimeField('Datetime created')	