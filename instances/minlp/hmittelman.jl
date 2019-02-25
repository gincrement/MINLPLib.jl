using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
b_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]
@variable(m, b[b_Idx])
set_binary(b[12])
set_binary(b[2])
set_binary(b[14])
set_binary(b[8])
set_binary(b[15])
set_binary(b[11])
set_binary(b[7])
set_binary(b[9])
set_binary(b[3])
set_binary(b[5])
set_binary(b[16])
set_binary(b[10])
set_binary(b[4])
set_binary(b[6])
set_binary(b[13])
set_binary(b[1])


# ----- Constraints ----- #
@NLconstraint(m, e1, -(10*b[5]*b[7]*b[9]*b[10]*b[14]*b[15]*b[16]+7*b[1]*b[2]*b[3]*b[4]*b[8]*b[11]+b[3]*b[4]*b[6]*b[7]*b[8]+12*b[3]*b[4]*b[8]*b[11]+8*b[6]*b[7]*b[8]*b[12]+3*b[6]*b[7]*b[9]*b[14]*b[16]+b[9]*b[10]*b[14]*b[16]+5*b[5]*b[10]*b[14]*b[15]*b[16]+3*b[1]*b[2]*b[11]*b[12])+objvar == 0.0)
@NLconstraint(m, e2, 3*b[5]*b[7]*b[9]*b[10]*b[14]*b[15]*b[16]-12*b[1]*b[2]*b[3]*b[4]*b[8]*b[11]-8*b[3]*b[4]*b[6]*b[7]*b[8]+b[3]*b[4]*b[8]*b[11]-7*b[1]*b[2]*b[11]*b[12]+2*b[13]*b[14]*b[15]*b[16] <= -2.0)
@NLconstraint(m, e3, b[1]*b[2]*b[3]*b[4]*b[8]*b[11]-10*b[3]*b[4]*b[6]*b[7]*b[8]-5*b[6]*b[7]*b[8]*b[12]+b[6]*b[7]*b[9]*b[14]*b[16]+7*b[9]*b[10]*b[14]*b[16]+b[5]*b[10]*b[14]*b[15]*b[16] <= -1.0)
@NLconstraint(m, e4, 5*b[5]*b[7]*b[9]*b[10]*b[14]*b[15]*b[16]-3*b[1]*b[2]*b[3]*b[4]*b[8]*b[11]-b[3]*b[4]*b[6]*b[7]*b[8]-2*b[5]*b[10]*b[14]*b[15]*b[16]+b[13]*b[14]*b[15]*b[16] <= -1.0)
@NLconstraint(m, e5, 3*b[1]*b[2]*b[3]*b[4]*b[8]*b[11]-5*b[5]*b[7]*b[9]*b[10]*b[14]*b[15]*b[16]+b[3]*b[4]*b[6]*b[7]*b[8]+2*b[5]*b[10]*b[14]*b[15]*b[16]-b[13]*b[14]*b[15]*b[16] <= 1.0)
@NLconstraint(m, e6, (-4*b[3]*b[4]*b[6]*b[7]*b[8])-2*b[3]*b[4]*b[8]*b[11]-5*b[6]*b[7]*b[9]*b[14]*b[16]+b[9]*b[10]*b[14]*b[16]-9*b[5]*b[10]*b[14]*b[15]*b[16]-2*b[1]*b[2]*b[11]*b[12] <= -3.0)
@NLconstraint(m, e7, 9*b[1]*b[2]*b[3]*b[4]*b[8]*b[11]-12*b[3]*b[4]*b[8]*b[11]-7*b[6]*b[7]*b[8]*b[12]+6*b[6]*b[7]*b[9]*b[14]*b[16]+2*b[5]*b[10]*b[14]*b[15]*b[16]-15*b[1]*b[2]*b[11]*b[12]+3*b[13]*b[14]*b[15]*b[16] <= -7.0)
@NLconstraint(m, e8, 5*b[1]*b[2]*b[3]*b[4]*b[8]*b[11]-8*b[5]*b[7]*b[9]*b[10]*b[14]*b[15]*b[16]+2*b[3]*b[4]*b[6]*b[7]*b[8]-7*b[3]*b[4]*b[8]*b[11]-b[6]*b[7]*b[8]*b[12]-5*b[9]*b[10]*b[14]*b[16]-10*b[1]*b[2]*b[11]*b[12] <= -1.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.