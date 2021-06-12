#!/usr/bin/env python
import time
import beeline

beeline.init(
    writekey='1252c1ce92b00ad574131fa6e873366d',
    dataset='cheems-app',
    service_name='cheems-app',
    debug=False, # defaults to False. if True, data doesn't get sent to Honeycomb
)

i=0;
while(i < 100):
    print(time.time())
    time.sleep(.3)
    i += 1
