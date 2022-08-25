'======================================================================='

' Title:  Stepper Motor Driver
' Last Updated :  01.2022
' Author : A.Hossein.Khalilian
' Program code  : BASCOM-AVR 2.0.8.5
' Hardware req. : Atmega16 + UNL2003

'======================================================================='

$regfile = "m16def.dat"
$crystal = 1000000

Config Portd = Output

Dim A As Byte
Dim B As Byte
Dim C As Byte

'-----------------------------------------------------------

Do

For A = 1 To 50
C = &B10000000
For B = 1 To 4
Rotate C , Left
Portd = C
Waitms 200
Next B
Next A

Wait 1

For A = 1 To 50
C = &B00010000
For B = 1 To 4
Rotate C , Right
Portd = C
Waitms 200
Next B
Next A

Wait 1

Loop

End

'-----------------------------------------------------------
