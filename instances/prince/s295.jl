using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
@variable(m, x[x_Idx])
set_upper_bound(x[1], 0.0)
set_upper_bound(x[1], -0.6)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(100* (x[2]- (x[1])^2)^2+ (1-x[1])^2+100* (x[3]- (x[2])^2)^2+ (1-x[2])^2+100* (x[4]- (x[3])^2)^2+ (1-x[3])^2+100* (x[5]- (x[4])^2)^2+ (1-x[4])^2+100* (x[6]- (x[5])^2)^2+ (1-x[5])^2+100* (x[7]- (x[6])^2)^2+ (1-x[6])^2+100* (x[8]- (x[7])^2)^2+ (1-x[7])^2+100* (x[9]- (x[8])^2)^2+ (1-x[8])^2+100* (x[10]- (x[9])^2)^2+ (1-x[9])^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.