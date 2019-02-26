using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
i_Idx = Any[1, 2, 3]
@variable(m, i[i_Idx])
set_integer(i[3])
set_lower_bound(i[3], 0.0)
set_upper_bound(i[3], 100.0)
set_integer(i[1])
set_lower_bound(i[1], 0.0)
set_upper_bound(i[1], 100.0)
set_integer(i[2])
set_lower_bound(i[2], 0.0)
set_upper_bound(i[2], 100.0)
set_upper_bound(i[1], 100.0)
set_upper_bound(i[2], 100.0)
set_upper_bound(i[3], 100.0)


# ----- Constraints ----- #
@constraint(m, e1, i[1] <= 4.0)
@constraint(m, e2, i[2] <= 4.0)
@constraint(m, e3, i[3] <= 4.0)
@constraint(m, e4, 2*i[1]+3*i[2]+4*i[3] <= 35.0)
@constraint(m, e5, 2*i[1]+3*i[2]-4*i[3] <= 19.0)
@constraint(m, e6, 2*i[1]-3*i[2]+4*i[3] <= 23.0)
@constraint(m, e7, -2*i[1]+3*i[2]+4*i[3] <= 27.0)
@constraint(m, e8, 2*i[1]-3*i[2]-4*i[3] <= 7.0)
@constraint(m, e9, -2*i[1]-3*i[2]+4*i[3] <= 15.0)
@constraint(m, e10, -2*i[1]+3*i[2]-4*i[3] <= 11.0)
@NLconstraint(m, e11, -(3.5*i[1]*i[1]-35*i[1]+0.5*i[2]*i[2]+3*i[2]+2*i[3]*i[3]+4*i[3])+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.