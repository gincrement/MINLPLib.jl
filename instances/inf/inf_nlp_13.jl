using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@constraint(m, e1, x[1] == 1.0)
@constraint(m, e2, x[5] == 3.0)
@constraint(m, e3, x[2] >= 1.0)
@constraint(m, e4, x[3] >= 1.0)
@constraint(m, e5, x[4] >= 1.0)
@constraint(m, e6, x[5] >= 1.0)
@constraint(m, e7, x[1] <= 3.0)
@constraint(m, e8, x[2] <= 3.0)
@constraint(m, e9, x[3] <= 3.0)
@constraint(m, e10, x[4] <= 3.0)
@constraint(m, e11, 0.5*x[2] >= 0.5)
@constraint(m, e12, 0.5*x[3] >= 0.5)
@constraint(m, e13, 0.5*x[4] >= 0.5)
@constraint(m, e14, 0.5*x[5] >= 0.5)
@constraint(m, e15, 0.5*x[1] <= 1.5)
@constraint(m, e16, 0.5*x[2] <= 1.5)
@constraint(m, e17, 0.5*x[3] <= 1.5)
@constraint(m, e18, 0.5*x[4] <= 1.5)
@constraint(m, e19, -0.5*x[1]+0.5*x[2] >= 1.00000008274037e-10)
@constraint(m, e20, -0.5*x[2]+0.5*x[3] >= 1.00000008274037e-10)
@constraint(m, e21, -0.5*x[3]+0.5*x[4] >= 1.00000008274037e-10)
@constraint(m, e22, -0.5*x[4]+0.5*x[5] >= 1.00000008274037e-10)
@NLconstraint(m, e23, (x[2]-x[1])*(x[2]-x[1])+(x[2]*x[2]*x[2]-x[1]*x[1]*x[1])*(x[2]*x[2]*x[2]-x[1]*x[1]*x[1]) >= 1.0e-10)
@NLconstraint(m, e24, (x[3]-x[2])*(x[3]-x[2])+(x[3]*x[3]*x[3]-x[2]*x[2]*x[2])*(x[3]*x[3]*x[3]-x[2]*x[2]*x[2]) >= 1.0e-10)
@NLconstraint(m, e25, (x[4]-x[3])*(x[4]-x[3])+(x[4]*x[4]*x[4]-x[3]*x[3]*x[3])*(x[4]*x[4]*x[4]-x[3]*x[3]*x[3]) >= 1.0e-10)
@NLconstraint(m, e26, (x[5]-x[4])*(x[5]-x[4])+(x[5]*x[5]*x[5]-x[4]*x[4]*x[4])*(x[5]*x[5]*x[5]-x[4]*x[4]*x[4]) >= 1.0e-10)
@NLconstraint(m, e27, (x[2]-x[1])*(x[2]-x[1])+(x[2]*x[2]*x[2]-x[1]*x[1]*x[1])*(x[2]*x[2]*x[2]-x[1]*x[1]*x[1]) <= 25.0)
@NLconstraint(m, e28, (x[3]-x[2])*(x[3]-x[2])+(x[3]*x[3]*x[3]-x[2]*x[2]*x[2])*(x[3]*x[3]*x[3]-x[2]*x[2]*x[2]) <= 25.0)
@NLconstraint(m, e29, (x[4]-x[3])*(x[4]-x[3])+(x[4]*x[4]*x[4]-x[3]*x[3]*x[3])*(x[4]*x[4]*x[4]-x[3]*x[3]*x[3]) <= 25.0)
@NLconstraint(m, e30, (x[5]-x[4])*(x[5]-x[4])+(x[5]*x[5]*x[5]-x[4]*x[4]*x[4])*(x[5]*x[5]*x[5]-x[4]*x[4]*x[4]) <= 25.0)
@NLconstraint(m, e31, -sqrt((x[2]-x[1])*(x[2]-x[1])+(x[2]*x[2]*x[2]-x[1]*x[1]*x[1])*(x[2]*x[2]*x[2]-x[1]*x[1]*x[1]))+x[6] == 0.0)
@NLconstraint(m, e32, -sqrt((x[3]-x[2])*(x[3]-x[2])+(x[3]*x[3]*x[3]-x[2]*x[2]*x[2])*(x[3]*x[3]*x[3]-x[2]*x[2]*x[2]))+x[7] == 0.0)
@NLconstraint(m, e33, -sqrt((x[4]-x[3])*(x[4]-x[3])+(x[4]*x[4]*x[4]-x[3]*x[3]*x[3])*(x[4]*x[4]*x[4]-x[3]*x[3]*x[3]))+x[8] == 0.0)
@NLconstraint(m, e34, -sqrt((x[5]-x[4])*(x[5]-x[4])+(x[5]*x[5]*x[5]-x[4]*x[4]*x[4])*(x[5]*x[5]*x[5]-x[4]*x[4]*x[4]))+x[9] == 0.0)
@constraint(m, e35, x[6]+x[7]+x[8]+x[9]+x[10] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[10])

m = m 		 # model get returned when including this script.