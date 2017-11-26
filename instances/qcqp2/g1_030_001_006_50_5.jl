using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]
@variable(m, x[x_Idx])
setlowerbound(x[4], 0.0)
setlowerbound(x[16], 0.0)
setlowerbound(x[6], 0.0)
setlowerbound(x[27], 0.0)
setlowerbound(x[14], 0.0)
setlowerbound(x[17], 0.0)
setlowerbound(x[3], 0.0)
setlowerbound(x[25], 0.0)
setlowerbound(x[30], 0.0)
setlowerbound(x[26], 0.0)
setlowerbound(x[23], 0.0)
setlowerbound(x[11], 0.0)
setlowerbound(x[29], 0.0)
setlowerbound(x[22], 0.0)
setlowerbound(x[12], 0.0)
setlowerbound(x[5], 0.0)
setlowerbound(x[19], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[20], 0.0)
setlowerbound(x[24], 0.0)
setlowerbound(x[31], 0.0)
setlowerbound(x[18], 0.0)
setlowerbound(x[9], 0.0)
setlowerbound(x[15], 0.0)
setlowerbound(x[8], 0.0)
setlowerbound(x[7], 0.0)
setlowerbound(x[13], 0.0)
setlowerbound(x[21], 0.0)
setlowerbound(x[28], 0.0)
setlowerbound(x[10], 0.0)
setupperbound(x[2], 1.0)
setupperbound(x[3], 1.0)
setupperbound(x[4], 1.0)
setupperbound(x[5], 1.0)
setupperbound(x[6], 1.0)
setupperbound(x[7], 1.0)
setupperbound(x[8], 1.0)
setupperbound(x[9], 1.0)
setupperbound(x[10], 1.0)
setupperbound(x[11], 1.0)
setupperbound(x[12], 1.0)
setupperbound(x[13], 1.0)
setupperbound(x[14], 1.0)
setupperbound(x[15], 1.0)
setupperbound(x[16], 1.0)
setupperbound(x[17], 1.0)
setupperbound(x[18], 1.0)
setupperbound(x[19], 1.0)
setupperbound(x[20], 1.0)
setupperbound(x[21], 1.0)
setupperbound(x[22], 1.0)
setupperbound(x[23], 1.0)
setupperbound(x[24], 1.0)
setupperbound(x[25], 1.0)
setupperbound(x[26], 1.0)
setupperbound(x[27], 1.0)
setupperbound(x[28], 1.0)
setupperbound(x[29], 1.0)
setupperbound(x[30], 1.0)
setupperbound(x[31], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(0.58*x[2]*x[9]+1.38*x[2]*x[12]+1.66*x[2]*x[13]+0.56*x[2]*x[14]+0.68*x[2]*x[17]+0.52*x[2]*x[21]+0.28*x[2]*x[26]+0.34*x[2]*x[27]+1.34*x[2]*x[29]+0.76*x[3]*x[6]-1.72*x[3]*x[4]-0.12*x[3]*x[8]-1.14*x[3]*x[10]+1.84*x[3]*x[12]-1.52*x[3]*x[14]-1.6*x[3]*x[16]-1.88*x[3]*x[17]-0.64*x[3]*x[19]+1.5*x[3]*x[21]-0.06*x[3]*x[22]-0.08*x[3]*x[24]-1.94*x[3]*x[30]+1.34*x[4]*x[5]+0.5*x[4]*x[7]+1.7*x[4]*x[9]-2*x[4]*x[10]-0.96*x[4]*x[14]+1.72*x[4]*x[15]-x[4]*x[18]-0.22*x[4]*x[20]+1.46*x[4]*x[21]+0.76*x[4]*x[23]-1.08*x[4]*x[24]-0.74*x[4]*x[26]-0.7*x[4]*x[28]-1.28*x[4]*x[29]-0.6*x[4]*x[30]+0.3*x[5]*x[7]+1.14*x[5]*x[11]-0.96*x[5]*x[13]-0.1*x[5]*x[15]+1.98*x[5]*x[16]+1.14*x[5]*x[18]+0.88*x[5]*x[19]+0.28*x[5]*x[22]+1.76*x[5]*x[25]-1.72*x[5]*x[26]-0.72*x[5]*x[27]+0.82*x[5]*x[29]+0.84*x[6]*x[7]-0.26*x[6]*x[9]-1.24*x[6]*x[14]-0.46*x[6]*x[15]-0.98*x[6]*x[18]+0.64*x[6]*x[19]-0.16*x[6]*x[20]-0.28*x[6]*x[22]+1.92*x[6]*x[24]-0.12*x[6]*x[27]-0.62*x[6]*x[28]-1.42*x[6]*x[30]+1.52*x[6]*x[31]+(-0.8*x[7]*x[8])-1.1*x[7]*x[11]+1.28*x[7]*x[16]+1.78*x[7]*x[17]+1.2*x[7]*x[18]+0.24*x[7]*x[19]-1.62*x[7]*x[21]+1.3*x[7]*x[22]+0.78*x[7]*x[26]+1.36*x[7]*x[27]-0.62*x[7]*x[29]+1.62*x[7]*x[31]+0.16*x[8]*x[12]-0.42*x[8]*x[11]-1.96*x[8]*x[15]+1.16*x[8]*x[16]-1.86*x[8]*x[17]+0.82*x[8]*x[18]-1.66*x[8]*x[20]-0.96*x[8]*x[22]-0.98*x[8]*x[23]-1.22*x[8]*x[25]-1.12*x[8]*x[27]-0.42*x[8]*x[29]+0.08*x[9]*x[12]-0.3*x[9]*x[13]+1.82*x[9]*x[14]+1.52*x[9]*x[16]-0.1*x[9]*x[17]-0.86*x[9]*x[20]+0.46*x[9]*x[21]+1.72*x[9]*x[22]+1.02*x[9]*x[23]+1.94*x[9]*x[24]+0.34*x[9]*x[26]+(-1.6*x[10]*x[12])-0.12*x[10]*x[13]+1.72*x[10]*x[14]-1.22*x[10]*x[15]-0.18*x[10]*x[23]-1.14*x[10]*x[24]+0.4*x[10]*x[27]-1.3*x[10]*x[29]+0.58*x[10]*x[31]+0.4*x[11]*x[14]-1.16*x[11]*x[15]-0.08*x[11]*x[19]+0.02*x[11]*x[21]-1.1*x[11]*x[23]+1.86*x[11]*x[26]-0.42*x[11]*x[31]+1.74*x[12]*x[13]+1.16*x[12]*x[15]+0.36*x[12]*x[16]-0.52*x[12]*x[22]+2*x[12]*x[23]+1.24*x[12]*x[26]+0.04*x[12]*x[28]+1.86*x[12]*x[30]-0.68*x[12]*x[31]+1.76*x[13]*x[17]-0.08*x[13]*x[16]+0.68*x[13]*x[19]-0.2*x[13]*x[21]+0.1*x[13]*x[23]-0.22*x[13]*x[26]+1.28*x[13]*x[28]-1.66*x[13]*x[30]+(-0.72*x[14]*x[22])-1.84*x[14]*x[23]+1.1*x[14]*x[24]+0.52*x[14]*x[25]-0.3*x[14]*x[26]+0.98*x[14]*x[27]+1.98*x[14]*x[29]+2*x[14]*x[30]+1.32*x[14]*x[31]+0.6*x[15]*x[19]+0.58*x[15]*x[20]-1.66*x[15]*x[26]-0.86*x[15]*x[28]-0.48*x[15]*x[29]-1.62*x[15]*x[30]+1.36*x[16]*x[22]-0.28*x[16]*x[24]-1.36*x[16]*x[25]+0.58*x[16]*x[26]+0.82*x[16]*x[29]+0.64*x[16]*x[30]+0.86*x[16]*x[31]+(-1.58*x[17]*x[18])-0.68*x[17]*x[20]+1.04*x[17]*x[23]-0.24*x[17]*x[31]+(-1.92*x[18]*x[19])-1.94*x[18]*x[20]+0.56*x[18]*x[22]-1.6*x[18]*x[23]-0.7*x[18]*x[24]+0.84*x[18]*x[29]+1.74*x[19]*x[23]-1.26*x[19]*x[22]+1.06*x[19]*x[25]+0.52*x[19]*x[29]-1.66*x[19]*x[30]+0.74*x[20]*x[25]-0.7*x[20]*x[22]+1.8*x[20]*x[26]-1.64*x[20]*x[27]+x[20]*x[29]+1.96*x[21]*x[22]-1.6*x[21]*x[23]+1.48*x[21]*x[26]-1.56*x[21]*x[27]-1.32*x[21]*x[28]+0.08*x[21]*x[29]+1.32*x[22]*x[23]-1.12*x[22]*x[24]-1.28*x[22]*x[25]+1.24*x[22]*x[26]-0.26*x[22]*x[28]+0.84*x[23]*x[26]-1.32*x[23]*x[24]-1.3*x[23]*x[31]+x[24]*x[25]-0.2*x[24]*x[26]+0.82*x[24]*x[27]-0.74*x[24]*x[28]+0.26*x[24]*x[31]+1.36*x[25]*x[26]+0.82*x[25]*x[30]-0.98*x[25]*x[31]+(-0.4*x[26]*x[28])-0.04*x[26]*x[30]+0.98*x[27]*x[28]-0.58*x[27]*x[29]+1.28*x[28]*x[30]-0.38*x[28]*x[29]+0.38*x[29]*x[30]+0.22*x[29]*x[31]+(-0.55*x[2]*x[2])-0.21*x[3]*x[3]+0.11*x[4]*x[4]-0.28*x[6]*x[6]-0.32*x[7]*x[7]-0.92*x[9]*x[9]+0.46*x[10]*x[10]+0.83*x[12]*x[12]+0.42*x[13]*x[13]-0.34*x[14]*x[14]+0.87*x[16]*x[16]-0.27*x[17]*x[17]+0.78*x[18]*x[18]-0.27*x[20]*x[20]-0.48*x[21]*x[21]-0.97*x[25]*x[25]-0.56*x[26]*x[26]+0.14*x[27]*x[27]+0.41*x[28]*x[28]+0.45*x[30]*x[30]+0.28*x[31]*x[31]-0.58*x[2]+0.35*x[3]+0.21*x[4]-0.67*x[5]+0.75*x[6]+0.65*x[7]+0.97*x[8]+0.34*x[9]+0.48*x[10]+0.61*x[11]-0.65*x[12]-0.35*x[13]+0.55*x[14]-0.86*x[15]-0.09*x[16]+0.63*x[17]+0.31*x[18]-0.1*x[19]-0.4*x[20]-0.18*x[21]-0.94*x[22]-0.03*x[23]-0.94*x[24]+0.16*x[25]-0.93*x[26]-0.69*x[27]+0.44*x[28]+0.23*x[29]+0.88*x[30]+0.49*x[31])+x[1] == 0.0)
@NLconstraint(m, e2, 1.14*x[2]*x[4]+0.68*x[2]*x[5]-2*x[2]*x[7]+1.86*x[2]*x[8]-0.72*x[2]*x[14]+0.28*x[2]*x[15]-0.64*x[2]*x[17]+1.42*x[2]*x[18]+1.14*x[2]*x[19]-1.66*x[2]*x[20]-1.12*x[2]*x[22]-1.64*x[2]*x[23]+1.46*x[2]*x[24]+0.06*x[2]*x[25]-1.16*x[2]*x[27]-0.64*x[2]*x[30]+0.94*x[3]*x[4]+0.14*x[3]*x[5]-0.68*x[3]*x[7]-0.6*x[3]*x[8]+1.4*x[3]*x[10]+0.08*x[3]*x[12]-0.9*x[3]*x[14]+1.62*x[3]*x[15]-1.8*x[3]*x[17]-1.18*x[3]*x[18]-0.1*x[3]*x[19]+0.56*x[3]*x[22]-0.92*x[3]*x[23]+0.56*x[3]*x[27]+1.26*x[3]*x[29]+1.78*x[3]*x[30]+0.32*x[4]*x[5]-1.36*x[4]*x[6]-0.74*x[4]*x[7]+1.76*x[4]*x[8]-0.3*x[4]*x[9]+0.46*x[4]*x[11]-0.26*x[4]*x[13]-0.98*x[4]*x[14]-1.58*x[4]*x[15]+0.82*x[4]*x[17]+1.98*x[4]*x[20]-1.64*x[4]*x[22]-1.98*x[4]*x[24]-0.78*x[4]*x[25]-1.78*x[4]*x[26]+0.76*x[4]*x[27]+0.86*x[4]*x[30]+0.48*x[5]*x[7]-0.22*x[5]*x[6]-1.34*x[5]*x[10]-0.72*x[5]*x[13]-0.66*x[5]*x[14]+0.8*x[5]*x[15]+1.1*x[5]*x[20]+1.4*x[5]*x[22]-0.62*x[5]*x[23]+0.74*x[5]*x[24]+1.96*x[5]*x[28]-1.88*x[5]*x[30]+(-0.46*x[6]*x[9])-0.82*x[6]*x[10]-1.32*x[6]*x[12]+1.16*x[6]*x[14]-0.28*x[6]*x[16]-0.5*x[6]*x[17]+0.44*x[6]*x[19]-0.84*x[6]*x[21]+1.66*x[6]*x[22]+1.66*x[6]*x[24]-1.94*x[6]*x[29]+0.54*x[6]*x[30]+1.16*x[7]*x[8]+0.8*x[7]*x[9]-0.14*x[7]*x[13]-1.78*x[7]*x[18]+0.9*x[7]*x[19]+1.4*x[7]*x[25]+1.74*x[7]*x[31]+(-1.98*x[8]*x[10])-0.18*x[8]*x[12]+1.14*x[8]*x[14]+1.58*x[8]*x[15]+1.62*x[8]*x[16]-1.88*x[8]*x[17]+1.22*x[8]*x[21]+0.22*x[8]*x[25]+1.36*x[8]*x[26]+1.78*x[8]*x[28]+1.56*x[8]*x[30]-1.66*x[8]*x[31]+1.1*x[9]*x[10]+1.44*x[9]*x[11]+1.84*x[9]*x[13]-1.04*x[9]*x[14]-0.12*x[9]*x[16]+1.3*x[9]*x[19]+0.5*x[9]*x[22]+0.22*x[9]*x[23]-0.94*x[9]*x[24]-1.14*x[9]*x[25]+0.76*x[9]*x[26]-0.4*x[9]*x[27]-1.74*x[9]*x[28]+0.98*x[9]*x[30]+0.22*x[9]*x[31]+(-0.66*x[10]*x[11])-0.58*x[10]*x[15]+1.8*x[10]*x[22]+1.08*x[10]*x[26]-0.82*x[10]*x[28]-1.66*x[10]*x[29]-0.52*x[10]*x[30]+0.22*x[10]*x[31]+1.72*x[11]*x[13]-1.3*x[11]*x[12]-0.94*x[11]*x[15]+1.5*x[11]*x[17]+1.12*x[11]*x[18]+0.24*x[11]*x[19]+0.2*x[11]*x[23]-0.04*x[11]*x[26]-0.66*x[11]*x[27]+(-1.92*x[12]*x[13])-1.82*x[12]*x[16]-0.7*x[12]*x[17]+1.78*x[12]*x[20]-0.28*x[12]*x[21]-1.96*x[12]*x[22]-0.24*x[12]*x[23]-0.84*x[12]*x[27]-1.98*x[12]*x[29]+0.2*x[13]*x[15]-0.46*x[13]*x[17]+1.6*x[13]*x[21]+1.02*x[13]*x[22]+0.7*x[13]*x[23]+0.02*x[13]*x[25]-1.3*x[13]*x[26]+1.88*x[13]*x[27]-1.14*x[13]*x[28]+1.5*x[14]*x[15]-0.78*x[14]*x[22]+1.12*x[14]*x[23]+1.3*x[14]*x[27]-1.34*x[14]*x[30]+0.94*x[14]*x[31]+(-1.18*x[15]*x[19])-1.56*x[15]*x[20]-0.5*x[15]*x[24]-0.46*x[15]*x[26]-1.62*x[15]*x[27]-1.52*x[15]*x[28]-0.68*x[15]*x[31]+0.28*x[16]*x[19]+2*x[16]*x[20]-0.08*x[16]*x[21]+1.76*x[16]*x[23]-0.94*x[16]*x[24]-0.34*x[16]*x[25]-1.48*x[16]*x[30]-1.32*x[16]*x[31]+0.42*x[17]*x[19]+0.68*x[17]*x[23]+1.38*x[17]*x[27]-0.28*x[17]*x[28]-1.66*x[17]*x[29]+1.02*x[17]*x[31]+0.78*x[18]*x[21]-0.14*x[18]*x[26]-1.9*x[18]*x[30]+0.38*x[18]*x[31]+1.52*x[19]*x[23]-1.1*x[19]*x[20]+0.68*x[19]*x[25]-0.66*x[19]*x[26]-1.46*x[19]*x[27]+1.84*x[19]*x[28]+1.1*x[19]*x[29]+0.14*x[19]*x[30]+1.46*x[20]*x[21]-1.1*x[20]*x[24]-1.48*x[20]*x[27]+0.6*x[21]*x[24]-0.6*x[21]*x[23]+1.18*x[21]*x[25]-0.04*x[21]*x[29]-0.42*x[21]*x[30]+1.92*x[22]*x[24]-0.88*x[22]*x[26]+1.24*x[22]*x[29]-0.18*x[22]*x[30]+1.1*x[23]*x[25]-1.6*x[23]*x[27]+1.42*x[23]*x[30]+1.86*x[24]*x[25]-0.04*x[24]*x[28]+1.42*x[24]*x[29]+(-1.78*x[25]*x[26])-1.7*x[25]*x[27]+1.92*x[25]*x[29]+0.84*x[25]*x[30]+1.5*x[26]*x[30]-0.04*x[26]*x[27]-1.42*x[26]*x[31]+(-1.66*x[27]*x[30])-0.22*x[27]*x[31]-1.7*x[28]*x[30]+0.53*x[13]*x[13]-0.48*x[9]*x[9]+0.94*x[14]*x[14]+0.14*x[16]*x[16]-0.69*x[17]*x[17]+0.78*x[18]*x[18]-0.71*x[20]*x[20]+0.61*x[23]*x[23]+0.5*x[24]*x[24]+0.24*x[25]*x[25]-0.79*x[26]*x[26]-0.27*x[27]*x[27]+0.97*x[29]*x[29]+0.07*x[30]*x[30]-0.72*x[31]*x[31]-0.52*x[2]-0.06*x[3]+0.42*x[4]-0.22*x[5]+0.15*x[6]+0.96*x[7]-0.09*x[8]-0.99*x[9]-0.37*x[10]-0.83*x[11]+0.01*x[12]-0.57*x[13]-0.49*x[14]+0.16*x[15]-0.63*x[16]+0.75*x[17]-0.53*x[18]+0.56*x[19]-0.61*x[20]+0.01*x[21]+0.42*x[22]-0.93*x[23]-0.46*x[24]-0.16*x[25]+0.46*x[26]-0.52*x[27]+0.22*x[28]+0.59*x[29]+0.55*x[30]-0.33*x[31] <= 62.14)
@constraint(m, e3, -0.03*x[2]+0.37*x[3]+0.12*x[4]-0.78*x[5]-0.65*x[6]-0.24*x[7]-0.22*x[8]+0.26*x[9]+0.01*x[10]+0.3*x[11]+0.47*x[12]-0.69*x[13]-0.88*x[14]+0.64*x[15]-0.83*x[16]-0.88*x[17]-0.26*x[18]+0.79*x[19]-0.78*x[20]-0.7*x[21]-0.73*x[22]+0.72*x[23]-0.75*x[24]+0.28*x[25]-0.53*x[26]+0.05*x[27]-0.2*x[28]+0.03*x[29]+0.59*x[30]-0.62*x[31] == -0.79)
@constraint(m, e4, -0.95*x[2]+0.91*x[3]+0.97*x[4]-0.7*x[5]-0.34*x[6]+0.06*x[7]+0.64*x[8]-0.85*x[9]-0.59*x[10]+0.86*x[11]+0.15*x[12]-0.66*x[13]+0.52*x[14]+0.03*x[15]+0.2*x[16]-0.85*x[17]-0.66*x[18]-0.18*x[19]+0.21*x[20]+0.73*x[21]+0.47*x[22]-0.37*x[23]+0.4*x[24]+0.49*x[25]-0.25*x[26]-0.91*x[27]+0.5*x[28]-0.83*x[29]-0.58*x[30]+0.72*x[31] == 0.52)
@constraint(m, e5, 0.55*x[2]+0.2*x[3]+0.97*x[4]+0.71*x[5]+0.13*x[6]+0.7*x[7]+0.91*x[8]-0.71*x[9]+0.33*x[10]-0.86*x[11]+0.23*x[12]+0.56*x[13]+0.9*x[14]-0.29*x[15]-0.2*x[16]+0.14*x[17]+0.98*x[18]+0.46*x[19]-0.55*x[20]-0.68*x[21]+0.72*x[22]+0.5*x[23]-0.21*x[24]-0.63*x[25]+0.85*x[26]-0.27*x[27]+0.1*x[28]-0.73*x[29]-0.06*x[30]-0.92*x[31] == 0.88)
@constraint(m, e6, -0.2*x[2]-0.37*x[3]-0.72*x[4]-0.68*x[5]-0.32*x[6]+0.96*x[7]+0.76*x[8]+0.05*x[9]+0.42*x[10]-0.26*x[11]+0.4*x[12]+0.52*x[13]-0.21*x[14]-0.4*x[15]-0.71*x[16]+0.9*x[17]-0.76*x[18]+0.79*x[19]+0.46*x[20]-0.34*x[21]+0.88*x[22]+0.31*x[23]+0.32*x[24]+0.61*x[25]-0.09*x[26]-0.61*x[27]-0.64*x[28]+0.47*x[29]+0.08*x[30]+0.98*x[31] == 0.0)
@constraint(m, e7, 0.48*x[2]-0.97*x[3]-0.59*x[4]-0.37*x[5]+0.41*x[6]+0.03*x[7]+0.3*x[8]-0.34*x[9]+0.12*x[10]-0.79*x[11]-0.05*x[12]+0.64*x[13]+0.53*x[14]+0.01*x[15]-0.44*x[16]+0.92*x[17]-0.04*x[18]+0.18*x[19]-0.93*x[20]+0.62*x[21]+0.82*x[22]+0.06*x[23]-0.78*x[24]-0.06*x[25]-0.93*x[26]-0.67*x[27]+0.53*x[28]+0.02*x[29]-0.16*x[30]+0.95*x[31] == 0.19)
@constraint(m, e8, 0.97*x[2]-0.94*x[3]+0.26*x[4]+0.74*x[5]+0.89*x[6]+0.48*x[7]+0.41*x[8]+x[9]-0.77*x[10]-0.34*x[11]-0.35*x[12]-0.08*x[13]-0.61*x[14]+0.01*x[15]+0.06*x[16]+0.76*x[17]-0.89*x[18]-0.58*x[19]-0.63*x[20]+0.02*x[21]+0.35*x[22]-0.41*x[23]-0.72*x[24]+0.88*x[25]-0.55*x[26]-0.62*x[27]-0.52*x[28]-0.54*x[29]+0.57*x[30]-0.55*x[31] == 0.1)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script. 