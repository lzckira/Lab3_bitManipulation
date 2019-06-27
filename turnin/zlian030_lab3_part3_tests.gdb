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

test "PINA: 0x10 => PORTC: 0x40"
setPINA 0x10
continue 5
expectPORTC 0x40
checkResult

test "PINA: 0x71 => PORTC: 0x60"
setPINA 0x71
continue 5
expectPORTC 0x60
checkResult

test "PINA: 0x32 => PORTC: 0xE0"
setPINA 0x32
continue 5
expectPORTC 0xE0
checkResult

test "PINA: 0x33 => PORTC: 0xF0"
setPINA 0x33
continue 5
expectPORTC 0xF0
checkResult

test "PINA: 0x74 => PORTC: 0x70"
setPINA 0x74
continue 5
expectPORTC 0x70
checkResult

test "PINA: 0x35 => PORTC: 0xB8"
setPINA 0x35
continue 5
expectPORTC 0xB8
checkResult

test "PINA: 0x76 => PORTC: 0x38"
setPINA 0x76
continue 5
expectPORTC 0x38
checkResult

test "PINA: 0x17 => PORTC: 0x3C"
setPINA 0x17
continue 5
expectPORTC 0x3C
checkResult

test "PINA: 0x78 => PORTC: 0x3C"
setPINA 0x78
continue 5
expectPORTC 0x3C
checkResult

test "PINA: 0x09 => PORTC: 0x3C"
setPINA 0x09
continue 5
expectPORTC 0x3C
checkResult

test "PINA: 0x0A => PORTC: 0x3E"
setPINA 0x0A
continue 5
expectPORTC 0x3E
checkResult

test "PINA: 0x0B => PORTC: 0x3E"
setPINA 0x0B
continue 5
expectPORTC 0x3E
checkResult

test "PINA: 0x3C => PORTC: 0xBE"
setPINA 0x3C
continue 5
expectPORTC 0xBE
checkResult

test "PINA: 0x0D => PORTC: 0x3F"
setPINA 0x0D
continue 5
expectPORTC 0x3F
checkResult

test "PINA: 0x0E => PORTC: 0x3F"
setPINA 0x0E
continue 5
expectPORTC 0x3F
checkResult

test "PINA: 0x3F => PORTC: 0x3F"
setPINA 0x3F
continue 5
expectPORTC 0xBF
checkResult


# Report on how many tests passed/tests ran
set $passed=$tests-$failed
eval "shell echo Passed %d/%d tests.\n",$passed,$tests
echo ======================================================\n
