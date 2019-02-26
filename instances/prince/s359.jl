using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@constraint(m, e1, 2.4*x[1]-x[2] >= 0.0)
@constraint(m, e2, -1.2*x[1]+x[2] >= 0.0)
@constraint(m, e3, 60*x[1]-x[3] >= 0.0)
@constraint(m, e4, -20*x[1]+x[3] >= 0.0)
@constraint(m, e5, 9.3*x[1]-x[4] >= 0.0)
@constraint(m, e6, -9*x[1]+x[4] >= 0.0)
@constraint(m, e7, 7*x[1]-x[5] >= 0.0)
@constraint(m, e8, -6.5*x[1]+x[5] >= 0.0)
@constraint(m, e9, -145421.402*x[1]+2931.1506*x[2]-40.427932*x[3]+5106.192*x[4]+15711.36*x[5] >= 0.0)
@constraint(m, e10, -155011.1084*x[1]+4360.53352*x[2]+12.9492344*x[3]+10236.884*x[4]+13176.786*x[5] >= 0.0)
@constraint(m, e11, -326669.5104*x[1]+7390.68412*x[2]-27.8986976*x[3]+16643.076*x[4]+30988.146*x[5] >= 0.0)
@constraint(m, e12, 145421.402*x[1]-2931.1506*x[2]+40.427932*x[3]-5106.192*x[4]-15711.36*x[5] >= -294000.0)
@constraint(m, e13, 155011.1084*x[1]-4360.53352*x[2]-12.9492344*x[3]-10236.884*x[4]-13176.786*x[5] >= -294000.0)
@constraint(m, e14, 326669.5104*x[1]-7390.68412*x[2]+27.8986976*x[3]-16643.076*x[4]-30988.146*x[5] >= -294000.0)
@constraint(m, e15, -8720288.849*x[1]+150512.5253*x[2]-156.6950325*x[3]+476470.3222*x[4]+729482.8271*x[5]+objvar == 121725.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.