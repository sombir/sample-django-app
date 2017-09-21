from django import forms

class ContactUsForm(forms.Form):
    name = forms.CharField(label='Full Name', max_length=100)
    email = forms.CharField(label='Email Address', max_length=100)
    phone_number = forms.CharField(label='Mobile Number', max_length=11)
    subject = forms.CharField(label='Subject', max_length=200)
    message = forms.CharField(widget=forms.Textarea, label='Message', max_length=500)