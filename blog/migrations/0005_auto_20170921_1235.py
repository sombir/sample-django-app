# -*- coding: utf-8 -*-
# Generated by Django 1.11.5 on 2017-09-21 07:05
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0004_contacts'),
    ]

    operations = [
        migrations.AlterField(
            model_name='contacts',
            name='phone_number',
            field=models.CharField(max_length=50, null=True, verbose_name='phone_number'),
        ),
    ]
