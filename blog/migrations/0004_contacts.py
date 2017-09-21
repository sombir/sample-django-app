# -*- coding: utf-8 -*-
# Generated by Django 1.11.5 on 2017-09-21 07:01
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0003_articles_summary'),
    ]

    operations = [
        migrations.CreateModel(
            name='Contacts',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=100, verbose_name='name')),
                ('email', models.CharField(max_length=100, verbose_name='email')),
                ('phone_number', models.IntegerField(null=True, verbose_name='phone_number')),
                ('subject', models.CharField(max_length=200, verbose_name='subject')),
                ('message', models.TextField(blank=True, max_length=500, verbose_name='message')),
                ('created_at', models.DateTimeField(verbose_name='Datetime created')),
            ],
        ),
    ]