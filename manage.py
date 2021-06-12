#!/usr/bin/env python
import os
import sys
import beeline

beeline.init(
    writekey='1252c1ce92b00ad574131fa6e873366d',
    dataset='cheems-app',
    service_name='cheems-app',
    debug=False, # defaults to False. if True, data doesn't get sent to Honeycomb
)


if __name__ == "__main__":
    os.environ.setdefault("DJANGO_SETTINGS_MODULE", "conduit.settings")
    try:
        from django.core.management import execute_from_command_line
    except ImportError:
        # The above import may fail for some other reason. Ensure that the
        # issue is really that Django is missing to avoid masking other
        # exceptions on Python 2.
        try:
            import django
        except ImportError:
            raise ImportError(
                "Couldn't import Django. Are you sure it's installed and "
                "available on your PYTHONPATH environment variable? Did you "
                "forget to activate a virtual environment?"
            )
        raise
    execute_from_command_line(sys.argv)
