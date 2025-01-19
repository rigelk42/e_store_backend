from uuid import uuid4

from django.db import models


class TimeStampedModel(models.Model):
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    class Meta:
        abstract = True


class Customer(TimeStampedModel):
    email = models.EmailField(unique=True)
    given_names = models.CharField(max_length=32)
    id = models.UUIDField(primary_key=True, default=uuid4, editable=False)
    surnames = models.CharField(max_length=32)
