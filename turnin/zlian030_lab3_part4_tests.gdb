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

test "PINA: 0x16 => PORTB: 0x01, PORTC: 0x60"
setPINA 0x16
continue 5
expectPORTB 0x01
expectPORTC 0x60
checkResult

test "PINA: 0xFC => PORTB: 0x0F, PORTC: 0xC0"
setPINA 0xFC
continue 5
expectPORTB 0x0F
expectPORTC 0xC0
checkResult

test "PINA: 0x2D => PORTB: 0x02, PORTC: 0xD0"
setPINA 0x2D
continue 5
expectPORTB 0x02
expectPORTC 0xD0
checkResult

test "PINA: 0x33 => PORTB: 0x03, PORTC: 0x30"
setPINA 0x33
continue 5
expectPORTB 0x03
expectPORTC 0x30
checkResult

test "PINA: 0x06 => PORTB: 0x00, PORTC: 0x60"
setPINA 0x06
continue 5
expectPORTB 0x00
expectPORTC 0x60
checkResult

test "PINA: 0xA0 => PORTB: 0x0A, PORTC: 0x00"
setPINA 0xA0
continue 5
expectPORTB 0x0A
expectPORTC 0x00
checkResult

# Report on how many tests passed/tests ran
set $passed=$tests-$failed
eval "shell echo Passed %d/%d tests.\n",$passed,$tests
echo ======================================================\n
