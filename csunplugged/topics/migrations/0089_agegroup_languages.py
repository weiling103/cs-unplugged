# -*- coding: utf-8 -*-
# Generated by Django 1.11.5 on 2017-10-26 02:37
from __future__ import unicode_literals

import django.contrib.postgres.fields
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('topics', '0088_programmingchallengedifficulty_languages'),
    ]

    operations = [
        migrations.AddField(
            model_name='agegroup',
            name='languages',
            field=django.contrib.postgres.fields.ArrayField(base_field=models.CharField(max_length=5), default=[], size=100),
        ),
    ]
