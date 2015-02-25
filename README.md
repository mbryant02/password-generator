Password Generator

This is a simple encrypted string generator written in Ruby that may be suitable
for creating passwords, depending on your security requirements.

Requires Ruby installed (written and tested on 2.1, may not work on lower versions).
Also requires the Clipboard gem installed. After Ruby is installed correctly, you
can add the Clipboard gem with "gem install clipboard". A compiled/packaged version 
for Windows is available at: 

https://mega.co.nz/#!RIxwSbBb!IA8inM0qasny_A4JPbzfrVdq-oxrkjXGPSMF2q5J_Lc

If you need special or specific characters in the resulting password, include
them in the 2 character salt. (e.g. !8 as salt will make !8 the first two
characters of the resulting string).
