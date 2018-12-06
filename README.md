# AUTO DIFFER
### It is only for linux devices.
# USAGE

## REQUIREMENTS
* You have to put `auto_differ.sh` with the same directory  sample output and input text files.
* Your input and output text files have to be like this;
`input1.txt`
`output1.txt`
`input2.txt`
`output2.txt`
* Name of your .c file is have to be `main.c`.
* There is no need to execute gcc command before `auto_differ.sh`.Because when you execute `auto_differ.sh`, your c file already compile in script.

## TO RUN
Open terminal in containing `auto_differ.sh`.

Execute;
`chmod +x auto_differ.sh`

## TESTING ONE FILE
`./auto_differ.sh`

`enter the number of input file : 1`

`There is no differences`

## PASSING INPUT NUMBERS AS ARGUMENT
`./auto_differ.sh 1`

`There is no differences`

## TESTING ALL INPUT-OUTPUT PAIRS

`./auto_differ.sh all 5`



`checking 1. input`

`There are differences`

`3,4c3`

`< cccc`

`< d`

`\ No newline at end of file`

`---`

`> cccc`

`\ No newline at end of file`




`checking 2. input
There is no differences`

`checking 3. input
There is no differences`

`checking 4. input
There is no differences`

`checking 5. input
There is no differences
`

## NOTES:
As you see above, the all numbers are numbers of input-output pairs.

Sorry for my poor English:)And don't hesitate to give pull-request:)
