# -*- coding: utf-8 -*-
# Generated by Django 1.11.5 on 2017-09-20 11:27
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0002_pages'),
    ]

    operations = [
        migrations.AddField(
            model_name='articles',
            name='summary',
            field=models.TextField(blank=True, max_length=200, verbose_name='summary'),
        ),
    ]
