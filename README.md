# sample-django-app


Install Python on Windows: 
Download latest python version executable to install python on windows
Double click on the donloaded executable file and follow the steps to install.
Install Django on windows:

pip install virtualenvwrapper-win

mkvirtualenv myproject

The virtual environment will be activated automatically and you’ll see “(myproject)” next to the command prompt to designate that. If you start a new command prompt, you’ll need to activate the environment again using:

workon myproject


Django can be installed easily using pip within your virtual environment.

In the command prompt, ensure your virtual environment is active, and execute the following command:

pip install django

After the installation has completed, you can verify your Django installation by executing django-admin --version in the command prompt.
django-admin --version


Now create your project folder like in my case i have created : my_django_projects
cd my_django_projects

Now create sample django app using below command:
django-admin startproject sample_django_app

cd sample_django_app

python manage.py migrate

python manage.py runserver
