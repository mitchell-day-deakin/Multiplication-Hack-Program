// R0 * R1 > R2
//initialize R2 to 0
@0
D=A
@R2
M=D

//if R1==0 Jump to end
@R1
D=M
@END
D;JEQ

//set the loop iterator to the R1 value
@R1
D=M
@i
M=D



//loop over and add R0 to R2 and reduce i by 1
//if i=0 then jump to the end else repeat
(LOOP)
//add R0 to R2
@R0
D=M
@R2
M=M+D
//reduce i by one
@i
M=M-1
//if i==0 then jump to the end
@i
D=M
@END
D;JEQ
//else go back to loop
@LOOP
0;JEQ
(END)
@END
0;JMP

