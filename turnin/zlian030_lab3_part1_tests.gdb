# Test file for Lab3_bitManipulation


# commands.gdb provides the following functions for ease:
#   test "<message>"
#       Where <message> is the message to print. Must call this at the beginning of every test
#       Example: test "PINA: 0x00 => expect PORTC: 0x01"
#   checkResult
#       Verify if the test passed or failed. Prints "passed." or "failed." accordingly, 
#       Must call this at the end of every test.
#   expectPORTx <val>
#       With x as the port (A,B,C,D)
#       The value the port is epected to have. If not it will print the erroneous actual value
#   setPINx <val>
#       With x as the port or pin (A,B,C,D)
#       The value to set the pin to (can be decimal or hexidecimal
#       Example: setPINA 0x01
#   printPORTx f OR printPINx f 
#       With x as the port or pin (A,B,C,D)
#       With f as a format option which can be: [d] decimal, [x] hexadecmial (default), [t] binary 
#       Example: printPORTC d
#   printDDRx
#       With x as the DDR (A,B,C,D)
#       Example: printDDRB

echo ======================================================\n
echo Running all tests..."\n\n

test “PINA: 0x03, PINB: 0x05 => PORTC: 0x04”
setPINA 0x03
setPINB 0x05
continue 5
expectPORTC 0x04
checkResult

test “PINA: 0x02, PINB: 0x07 => PORTC: 0x04”
setPINA 0x02
setPINB 0x07
continue 5
expectPORTC 0x04
checkResult

test “PINA: 0x01, PINB: 0x06 => PORTC: 0x03”
setPINA 0x01
setPINB 0x06
continue 5
expectPORTC 0x03
checkResult

test “PINA: 0x01, PINB: 0x00 => PORTC: 0x01”
setPINA 0x01
setPINB 0x00
continue 5
expectPORTC 0x01
checkResult

test “PINA: 0x33, PINB: 0x55 => PORTC: 0x08”
setPINA 0x33
setPINB 0x55
continue 5
expectPORTC 0x08
checkResult

test “PINA: 0xF3, PINB: 0xD1 => PORTC: 0x0A”
setPINA 0xF3
setPINB 0xD1
continue 5
expectPORTC 0x0A
checkResult


# Report on how many tests passed/tests ran
set $passed=$tests-$failed
eval "shell echo Passed %d/%d tests.\n",$passed,$tests
echo ======================================================\n
