using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28]
@variable(m, x[x_Idx])
setlowerbound(x[16], 0.0)
setlowerbound(x[27], 0.0)
setlowerbound(x[14], 0.0)
setlowerbound(x[17], 0.0)
setlowerbound(x[25], 0.0)
setlowerbound(x[26], 0.0)
setlowerbound(x[23], 0.0)
setlowerbound(x[11], 0.0)
setlowerbound(x[22], 0.0)
setlowerbound(x[12], 0.0)
setlowerbound(x[19], 0.0)
setlowerbound(x[20], 0.0)
setlowerbound(x[24], 0.0)
setlowerbound(x[18], 0.0)
setlowerbound(x[9], 0.0)
setlowerbound(x[15], 0.0)
setlowerbound(x[8], 0.0)
setlowerbound(x[13], 0.0)
setlowerbound(x[21], 0.0)
setlowerbound(x[28], 0.0)
setlowerbound(x[10], 0.0)
setlowerbound(x[1], 0.5)
setupperbound(x[1], 1.0)
setlowerbound(x[2], 0.5)
setupperbound(x[2], 1.0)
setlowerbound(x[3], 0.5)
setupperbound(x[3], 1.0)
setlowerbound(x[4], 0.5)
setupperbound(x[4], 1.0)
setlowerbound(x[5], 0.5)
setupperbound(x[5], 1.0)
setlowerbound(x[6], 0.5)
setupperbound(x[6], 1.0)
setlowerbound(x[7], 0.5)
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


# ----- Constraints ----- #
@NLconstraint(m, e1, 2*x[1]*x[2]-x[1]*x[1]-x[2]*x[2]-x[15]*x[15]+2*x[15]*x[16]-x[16]*x[16]+objvar <= 0.0)
@NLconstraint(m, e2, 2*x[1]*x[3]-x[1]*x[1]-x[3]*x[3]-x[15]*x[15]+2*x[15]*x[17]-x[17]*x[17]+objvar <= 0.0)
@NLconstraint(m, e3, 2*x[1]*x[4]-x[1]*x[1]-x[4]*x[4]-x[15]*x[15]+2*x[15]*x[18]-x[18]*x[18]+objvar <= 0.0)
@NLconstraint(m, e4, 2*x[1]*x[5]-x[1]*x[1]-x[5]*x[5]-x[15]*x[15]+2*x[15]*x[19]-x[19]*x[19]+objvar <= 0.0)
@NLconstraint(m, e5, 2*x[1]*x[6]-x[1]*x[1]-x[6]*x[6]-x[15]*x[15]+2*x[15]*x[20]-x[20]*x[20]+objvar <= 0.0)
@NLconstraint(m, e6, 2*x[1]*x[7]-x[1]*x[1]-x[7]*x[7]-x[15]*x[15]+2*x[15]*x[21]-x[21]*x[21]+objvar <= 0.0)
@NLconstraint(m, e7, 2*x[1]*x[8]-x[1]*x[1]-x[8]*x[8]-x[15]*x[15]+2*x[15]*x[22]-x[22]*x[22]+objvar <= 0.0)
@NLconstraint(m, e8, 2*x[1]*x[9]-x[1]*x[1]-x[9]*x[9]-x[15]*x[15]+2*x[15]*x[23]-x[23]*x[23]+objvar <= 0.0)
@NLconstraint(m, e9, 2*x[1]*x[10]-x[1]*x[1]-x[10]*x[10]-x[15]*x[15]+2*x[15]*x[24]-x[24]*x[24]+objvar <= 0.0)
@NLconstraint(m, e10, 2*x[1]*x[11]-x[1]*x[1]-x[11]*x[11]-x[15]*x[15]+2*x[15]*x[25]-x[25]*x[25]+objvar <= 0.0)
@NLconstraint(m, e11, 2*x[1]*x[12]-x[1]*x[1]-x[12]*x[12]-x[15]*x[15]+2*x[15]*x[26]-x[26]*x[26]+objvar <= 0.0)
@NLconstraint(m, e12, 2*x[1]*x[13]-x[1]*x[1]-x[13]*x[13]-x[15]*x[15]+2*x[15]*x[27]-x[27]*x[27]+objvar <= 0.0)
@NLconstraint(m, e13, 2*x[1]*x[14]-x[1]*x[1]-x[14]*x[14]-x[15]*x[15]+2*x[15]*x[28]-x[28]*x[28]+objvar <= 0.0)
@NLconstraint(m, e14, 2*x[2]*x[3]-x[2]*x[2]-x[3]*x[3]-x[16]*x[16]+2*x[16]*x[17]-x[17]*x[17]+objvar <= 0.0)
@NLconstraint(m, e15, 2*x[2]*x[4]-x[2]*x[2]-x[4]*x[4]-x[16]*x[16]+2*x[16]*x[18]-x[18]*x[18]+objvar <= 0.0)
@NLconstraint(m, e16, 2*x[2]*x[5]-x[2]*x[2]-x[5]*x[5]-x[16]*x[16]+2*x[16]*x[19]-x[19]*x[19]+objvar <= 0.0)
@NLconstraint(m, e17, 2*x[2]*x[6]-x[2]*x[2]-x[6]*x[6]-x[16]*x[16]+2*x[16]*x[20]-x[20]*x[20]+objvar <= 0.0)
@NLconstraint(m, e18, 2*x[2]*x[7]-x[2]*x[2]-x[7]*x[7]-x[16]*x[16]+2*x[16]*x[21]-x[21]*x[21]+objvar <= 0.0)
@NLconstraint(m, e19, 2*x[2]*x[8]-x[2]*x[2]-x[8]*x[8]-x[16]*x[16]+2*x[16]*x[22]-x[22]*x[22]+objvar <= 0.0)
@NLconstraint(m, e20, 2*x[2]*x[9]-x[2]*x[2]-x[9]*x[9]-x[16]*x[16]+2*x[16]*x[23]-x[23]*x[23]+objvar <= 0.0)
@NLconstraint(m, e21, 2*x[2]*x[10]-x[2]*x[2]-x[10]*x[10]-x[16]*x[16]+2*x[16]*x[24]-x[24]*x[24]+objvar <= 0.0)
@NLconstraint(m, e22, 2*x[2]*x[11]-x[2]*x[2]-x[11]*x[11]-x[16]*x[16]+2*x[16]*x[25]-x[25]*x[25]+objvar <= 0.0)
@NLconstraint(m, e23, 2*x[2]*x[12]-x[2]*x[2]-x[12]*x[12]-x[16]*x[16]+2*x[16]*x[26]-x[26]*x[26]+objvar <= 0.0)
@NLconstraint(m, e24, 2*x[2]*x[13]-x[2]*x[2]-x[13]*x[13]-x[16]*x[16]+2*x[16]*x[27]-x[27]*x[27]+objvar <= 0.0)
@NLconstraint(m, e25, 2*x[2]*x[14]-x[2]*x[2]-x[14]*x[14]-x[16]*x[16]+2*x[16]*x[28]-x[28]*x[28]+objvar <= 0.0)
@NLconstraint(m, e26, 2*x[3]*x[4]-x[3]*x[3]-x[4]*x[4]-x[17]*x[17]+2*x[17]*x[18]-x[18]*x[18]+objvar <= 0.0)
@NLconstraint(m, e27, 2*x[3]*x[5]-x[3]*x[3]-x[5]*x[5]-x[17]*x[17]+2*x[17]*x[19]-x[19]*x[19]+objvar <= 0.0)
@NLconstraint(m, e28, 2*x[3]*x[6]-x[3]*x[3]-x[6]*x[6]-x[17]*x[17]+2*x[17]*x[20]-x[20]*x[20]+objvar <= 0.0)
@NLconstraint(m, e29, 2*x[3]*x[7]-x[3]*x[3]-x[7]*x[7]-x[17]*x[17]+2*x[17]*x[21]-x[21]*x[21]+objvar <= 0.0)
@NLconstraint(m, e30, 2*x[3]*x[8]-x[3]*x[3]-x[8]*x[8]-x[17]*x[17]+2*x[17]*x[22]-x[22]*x[22]+objvar <= 0.0)
@NLconstraint(m, e31, 2*x[3]*x[9]-x[3]*x[3]-x[9]*x[9]-x[17]*x[17]+2*x[17]*x[23]-x[23]*x[23]+objvar <= 0.0)
@NLconstraint(m, e32, 2*x[3]*x[10]-x[3]*x[3]-x[10]*x[10]-x[17]*x[17]+2*x[17]*x[24]-x[24]*x[24]+objvar <= 0.0)
@NLconstraint(m, e33, 2*x[3]*x[11]-x[3]*x[3]-x[11]*x[11]-x[17]*x[17]+2*x[17]*x[25]-x[25]*x[25]+objvar <= 0.0)
@NLconstraint(m, e34, 2*x[3]*x[12]-x[3]*x[3]-x[12]*x[12]-x[17]*x[17]+2*x[17]*x[26]-x[26]*x[26]+objvar <= 0.0)
@NLconstraint(m, e35, 2*x[3]*x[13]-x[3]*x[3]-x[13]*x[13]-x[17]*x[17]+2*x[17]*x[27]-x[27]*x[27]+objvar <= 0.0)
@NLconstraint(m, e36, 2*x[3]*x[14]-x[3]*x[3]-x[14]*x[14]-x[17]*x[17]+2*x[17]*x[28]-x[28]*x[28]+objvar <= 0.0)
@NLconstraint(m, e37, 2*x[4]*x[5]-x[4]*x[4]-x[5]*x[5]-x[18]*x[18]+2*x[18]*x[19]-x[19]*x[19]+objvar <= 0.0)
@NLconstraint(m, e38, 2*x[4]*x[6]-x[4]*x[4]-x[6]*x[6]-x[18]*x[18]+2*x[18]*x[20]-x[20]*x[20]+objvar <= 0.0)
@NLconstraint(m, e39, 2*x[4]*x[7]-x[4]*x[4]-x[7]*x[7]-x[18]*x[18]+2*x[18]*x[21]-x[21]*x[21]+objvar <= 0.0)
@NLconstraint(m, e40, 2*x[4]*x[8]-x[4]*x[4]-x[8]*x[8]-x[18]*x[18]+2*x[18]*x[22]-x[22]*x[22]+objvar <= 0.0)
@NLconstraint(m, e41, 2*x[4]*x[9]-x[4]*x[4]-x[9]*x[9]-x[18]*x[18]+2*x[18]*x[23]-x[23]*x[23]+objvar <= 0.0)
@NLconstraint(m, e42, 2*x[4]*x[10]-x[4]*x[4]-x[10]*x[10]-x[18]*x[18]+2*x[18]*x[24]-x[24]*x[24]+objvar <= 0.0)
@NLconstraint(m, e43, 2*x[4]*x[11]-x[4]*x[4]-x[11]*x[11]-x[18]*x[18]+2*x[18]*x[25]-x[25]*x[25]+objvar <= 0.0)
@NLconstraint(m, e44, 2*x[4]*x[12]-x[4]*x[4]-x[12]*x[12]-x[18]*x[18]+2*x[18]*x[26]-x[26]*x[26]+objvar <= 0.0)
@NLconstraint(m, e45, 2*x[4]*x[13]-x[4]*x[4]-x[13]*x[13]-x[18]*x[18]+2*x[18]*x[27]-x[27]*x[27]+objvar <= 0.0)
@NLconstraint(m, e46, 2*x[4]*x[14]-x[4]*x[4]-x[14]*x[14]-x[18]*x[18]+2*x[18]*x[28]-x[28]*x[28]+objvar <= 0.0)
@NLconstraint(m, e47, 2*x[5]*x[6]-x[5]*x[5]-x[6]*x[6]-x[19]*x[19]+2*x[19]*x[20]-x[20]*x[20]+objvar <= 0.0)
@NLconstraint(m, e48, 2*x[5]*x[7]-x[5]*x[5]-x[7]*x[7]-x[19]*x[19]+2*x[19]*x[21]-x[21]*x[21]+objvar <= 0.0)
@NLconstraint(m, e49, 2*x[5]*x[8]-x[5]*x[5]-x[8]*x[8]-x[19]*x[19]+2*x[19]*x[22]-x[22]*x[22]+objvar <= 0.0)
@NLconstraint(m, e50, 2*x[5]*x[9]-x[5]*x[5]-x[9]*x[9]-x[19]*x[19]+2*x[19]*x[23]-x[23]*x[23]+objvar <= 0.0)
@NLconstraint(m, e51, 2*x[5]*x[10]-x[5]*x[5]-x[10]*x[10]-x[19]*x[19]+2*x[19]*x[24]-x[24]*x[24]+objvar <= 0.0)
@NLconstraint(m, e52, 2*x[5]*x[11]-x[5]*x[5]-x[11]*x[11]-x[19]*x[19]+2*x[19]*x[25]-x[25]*x[25]+objvar <= 0.0)
@NLconstraint(m, e53, 2*x[5]*x[12]-x[5]*x[5]-x[12]*x[12]-x[19]*x[19]+2*x[19]*x[26]-x[26]*x[26]+objvar <= 0.0)
@NLconstraint(m, e54, 2*x[5]*x[13]-x[5]*x[5]-x[13]*x[13]-x[19]*x[19]+2*x[19]*x[27]-x[27]*x[27]+objvar <= 0.0)
@NLconstraint(m, e55, 2*x[5]*x[14]-x[5]*x[5]-x[14]*x[14]-x[19]*x[19]+2*x[19]*x[28]-x[28]*x[28]+objvar <= 0.0)
@NLconstraint(m, e56, 2*x[6]*x[7]-x[6]*x[6]-x[7]*x[7]-x[20]*x[20]+2*x[20]*x[21]-x[21]*x[21]+objvar <= 0.0)
@NLconstraint(m, e57, 2*x[6]*x[8]-x[6]*x[6]-x[8]*x[8]-x[20]*x[20]+2*x[20]*x[22]-x[22]*x[22]+objvar <= 0.0)
@NLconstraint(m, e58, 2*x[6]*x[9]-x[6]*x[6]-x[9]*x[9]-x[20]*x[20]+2*x[20]*x[23]-x[23]*x[23]+objvar <= 0.0)
@NLconstraint(m, e59, 2*x[6]*x[10]-x[6]*x[6]-x[10]*x[10]-x[20]*x[20]+2*x[20]*x[24]-x[24]*x[24]+objvar <= 0.0)
@NLconstraint(m, e60, 2*x[6]*x[11]-x[6]*x[6]-x[11]*x[11]-x[20]*x[20]+2*x[20]*x[25]-x[25]*x[25]+objvar <= 0.0)
@NLconstraint(m, e61, 2*x[6]*x[12]-x[6]*x[6]-x[12]*x[12]-x[20]*x[20]+2*x[20]*x[26]-x[26]*x[26]+objvar <= 0.0)
@NLconstraint(m, e62, 2*x[6]*x[13]-x[6]*x[6]-x[13]*x[13]-x[20]*x[20]+2*x[20]*x[27]-x[27]*x[27]+objvar <= 0.0)
@NLconstraint(m, e63, 2*x[6]*x[14]-x[6]*x[6]-x[14]*x[14]-x[20]*x[20]+2*x[20]*x[28]-x[28]*x[28]+objvar <= 0.0)
@NLconstraint(m, e64, 2*x[7]*x[8]-x[7]*x[7]-x[8]*x[8]-x[21]*x[21]+2*x[21]*x[22]-x[22]*x[22]+objvar <= 0.0)
@NLconstraint(m, e65, 2*x[7]*x[9]-x[7]*x[7]-x[9]*x[9]-x[21]*x[21]+2*x[21]*x[23]-x[23]*x[23]+objvar <= 0.0)
@NLconstraint(m, e66, 2*x[7]*x[10]-x[7]*x[7]-x[10]*x[10]-x[21]*x[21]+2*x[21]*x[24]-x[24]*x[24]+objvar <= 0.0)
@NLconstraint(m, e67, 2*x[7]*x[11]-x[7]*x[7]-x[11]*x[11]-x[21]*x[21]+2*x[21]*x[25]-x[25]*x[25]+objvar <= 0.0)
@NLconstraint(m, e68, 2*x[7]*x[12]-x[7]*x[7]-x[12]*x[12]-x[21]*x[21]+2*x[21]*x[26]-x[26]*x[26]+objvar <= 0.0)
@NLconstraint(m, e69, 2*x[7]*x[13]-x[7]*x[7]-x[13]*x[13]-x[21]*x[21]+2*x[21]*x[27]-x[27]*x[27]+objvar <= 0.0)
@NLconstraint(m, e70, 2*x[7]*x[14]-x[7]*x[7]-x[14]*x[14]-x[21]*x[21]+2*x[21]*x[28]-x[28]*x[28]+objvar <= 0.0)
@NLconstraint(m, e71, 2*x[8]*x[9]-x[8]*x[8]-x[9]*x[9]-x[22]*x[22]+2*x[22]*x[23]-x[23]*x[23]+objvar <= 0.0)
@NLconstraint(m, e72, 2*x[8]*x[10]-x[8]*x[8]-x[10]*x[10]-x[22]*x[22]+2*x[22]*x[24]-x[24]*x[24]+objvar <= 0.0)
@NLconstraint(m, e73, 2*x[8]*x[11]-x[8]*x[8]-x[11]*x[11]-x[22]*x[22]+2*x[22]*x[25]-x[25]*x[25]+objvar <= 0.0)
@NLconstraint(m, e74, 2*x[8]*x[12]-x[8]*x[8]-x[12]*x[12]-x[22]*x[22]+2*x[22]*x[26]-x[26]*x[26]+objvar <= 0.0)
@NLconstraint(m, e75, 2*x[8]*x[13]-x[8]*x[8]-x[13]*x[13]-x[22]*x[22]+2*x[22]*x[27]-x[27]*x[27]+objvar <= 0.0)
@NLconstraint(m, e76, 2*x[8]*x[14]-x[8]*x[8]-x[14]*x[14]-x[22]*x[22]+2*x[22]*x[28]-x[28]*x[28]+objvar <= 0.0)
@NLconstraint(m, e77, 2*x[9]*x[10]-x[9]*x[9]-x[10]*x[10]-x[23]*x[23]+2*x[23]*x[24]-x[24]*x[24]+objvar <= 0.0)
@NLconstraint(m, e78, 2*x[9]*x[11]-x[9]*x[9]-x[11]*x[11]-x[23]*x[23]+2*x[23]*x[25]-x[25]*x[25]+objvar <= 0.0)
@NLconstraint(m, e79, 2*x[9]*x[12]-x[9]*x[9]-x[12]*x[12]-x[23]*x[23]+2*x[23]*x[26]-x[26]*x[26]+objvar <= 0.0)
@NLconstraint(m, e80, 2*x[9]*x[13]-x[9]*x[9]-x[13]*x[13]-x[23]*x[23]+2*x[23]*x[27]-x[27]*x[27]+objvar <= 0.0)
@NLconstraint(m, e81, 2*x[9]*x[14]-x[9]*x[9]-x[14]*x[14]-x[23]*x[23]+2*x[23]*x[28]-x[28]*x[28]+objvar <= 0.0)
@NLconstraint(m, e82, 2*x[10]*x[11]-x[10]*x[10]-x[11]*x[11]-x[24]*x[24]+2*x[24]*x[25]-x[25]*x[25]+objvar <= 0.0)
@NLconstraint(m, e83, 2*x[10]*x[12]-x[10]*x[10]-x[12]*x[12]-x[24]*x[24]+2*x[24]*x[26]-x[26]*x[26]+objvar <= 0.0)
@NLconstraint(m, e84, 2*x[10]*x[13]-x[10]*x[10]-x[13]*x[13]-x[24]*x[24]+2*x[24]*x[27]-x[27]*x[27]+objvar <= 0.0)
@NLconstraint(m, e85, 2*x[10]*x[14]-x[10]*x[10]-x[14]*x[14]-x[24]*x[24]+2*x[24]*x[28]-x[28]*x[28]+objvar <= 0.0)
@NLconstraint(m, e86, 2*x[11]*x[12]-x[11]*x[11]-x[12]*x[12]-x[25]*x[25]+2*x[25]*x[26]-x[26]*x[26]+objvar <= 0.0)
@NLconstraint(m, e87, 2*x[11]*x[13]-x[11]*x[11]-x[13]*x[13]-x[25]*x[25]+2*x[25]*x[27]-x[27]*x[27]+objvar <= 0.0)
@NLconstraint(m, e88, 2*x[11]*x[14]-x[11]*x[11]-x[14]*x[14]-x[25]*x[25]+2*x[25]*x[28]-x[28]*x[28]+objvar <= 0.0)
@NLconstraint(m, e89, 2*x[12]*x[13]-x[12]*x[12]-x[13]*x[13]-x[26]*x[26]+2*x[26]*x[27]-x[27]*x[27]+objvar <= 0.0)
@NLconstraint(m, e90, 2*x[12]*x[14]-x[12]*x[12]-x[14]*x[14]-x[26]*x[26]+2*x[26]*x[28]-x[28]*x[28]+objvar <= 0.0)
@NLconstraint(m, e91, 2*x[13]*x[14]-x[13]*x[13]-x[14]*x[14]-x[27]*x[27]+2*x[27]*x[28]-x[28]*x[28]+objvar <= 0.0)
@constraint(m, e92, -x[15]+x[16] <= 0.0)
@constraint(m, e93, -x[1]+x[2] <= 0.0)
@constraint(m, e94, -x[2]+x[3] <= 0.0)
@constraint(m, e95, -x[3]+x[4] <= 0.0)
@constraint(m, e96, -x[4]+x[5] <= 0.0)
@constraint(m, e97, -x[5]+x[6] <= 0.0)
@constraint(m, e98, -x[6]+x[7] <= 0.0)
@constraint(m, e99, -x[7]+x[8] <= 0.0)
@constraint(m, e100, -x[8]+x[9] <= 0.0)
@constraint(m, e101, -x[9]+x[10] <= 0.0)
@constraint(m, e102, -x[10]+x[11] <= 0.0)
@constraint(m, e103, -x[11]+x[12] <= 0.0)
@constraint(m, e104, -x[12]+x[13] <= 0.0)
@constraint(m, e105, -x[13]+x[14] <= 0.0)


# ----- Objective ----- #
@objective(m, Max, objvar)

m = m 		 # model get returned when including this script. 