using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117]
@variable(m, x[x_Idx])
setlowerbound(x[1], 0.1)
setlowerbound(x[2], 0.1)
setlowerbound(x[3], 0.1)
setlowerbound(x[4], 0.1)
setlowerbound(x[5], 0.1)
setlowerbound(x[6], 0.1)
setlowerbound(x[7], 0.1)
setlowerbound(x[8], 0.1)
setlowerbound(x[9], 0.1)
setlowerbound(x[10], 0.1)
setlowerbound(x[11], 0.1)
setlowerbound(x[12], 0.1)
setlowerbound(x[13], 0.1)
setlowerbound(x[14], 0.1)
setlowerbound(x[15], 0.1)
setlowerbound(x[16], 0.1)
setlowerbound(x[17], 0.1)
setlowerbound(x[18], 0.1)
setlowerbound(x[19], 0.1)
setlowerbound(x[20], 0.1)
setlowerbound(x[21], 0.1)
setlowerbound(x[22], 0.1)
setlowerbound(x[23], 0.1)
setlowerbound(x[24], 0.1)
setlowerbound(x[25], 0.1)
setlowerbound(x[26], 0.1)
setlowerbound(x[27], 0.1)
setlowerbound(x[28], 0.1)
setlowerbound(x[29], 0.1)
setlowerbound(x[30], 0.1)
setlowerbound(x[31], 0.1)
setlowerbound(x[32], 0.1)
setlowerbound(x[33], 0.1)
setlowerbound(x[34], 0.1)
setlowerbound(x[35], 0.1)
setlowerbound(x[36], 0.1)
setlowerbound(x[37], 0.1)
setlowerbound(x[38], 0.1)
setlowerbound(x[39], 0.1)
setlowerbound(x[40], 0.1)
setlowerbound(x[41], 0.1)
setlowerbound(x[42], 0.1)
setlowerbound(x[43], 0.1)
setlowerbound(x[44], 0.1)
setlowerbound(x[45], 0.1)
setlowerbound(x[46], 0.1)
setlowerbound(x[47], 0.1)
setlowerbound(x[48], 0.1)
setlowerbound(x[49], 0.1)
setlowerbound(x[50], 0.1)
setlowerbound(x[51], 0.1)
setlowerbound(x[52], 0.1)
setlowerbound(x[53], 0.1)
setlowerbound(x[54], 0.1)
setlowerbound(x[55], 0.1)
setlowerbound(x[56], 0.1)
setlowerbound(x[57], 0.1)
setlowerbound(x[58], 0.1)
setlowerbound(x[59], 0.1)
setlowerbound(x[60], 0.1)
setlowerbound(x[61], 0.1)
setlowerbound(x[62], 0.1)
setlowerbound(x[63], 0.1)
setlowerbound(x[64], 0.1)
setlowerbound(x[65], 0.1)
setlowerbound(x[66], 0.1)
setlowerbound(x[67], 0.1)
setlowerbound(x[68], 0.1)
setlowerbound(x[69], 0.1)
setlowerbound(x[70], 0.1)
setlowerbound(x[71], 0.1)
setlowerbound(x[72], 0.1)
setlowerbound(x[73], 0.1)
setlowerbound(x[74], 0.1)
setlowerbound(x[75], 0.1)
setlowerbound(x[76], 0.1)
setlowerbound(x[77], 0.1)
setlowerbound(x[78], 0.1)
setlowerbound(x[79], 0.1)
setlowerbound(x[80], 0.1)
setlowerbound(x[81], 0.1)
setlowerbound(x[82], 0.1)
setlowerbound(x[83], 0.1)
setlowerbound(x[84], 0.1)
setlowerbound(x[85], 0.1)


# ----- Constraints ----- #
@constraint(m, e1, -x[1]+x[86] == 0.0)
@constraint(m, e2, -x[2]+x[87] == 0.0)
@constraint(m, e3, -x[3]+x[88] == 0.0)
@constraint(m, e4, -x[4]+x[89] == 0.0)
@constraint(m, e5, -x[5]-x[6]-x[7]-x[8]+x[85]+x[90] == 0.0)
@constraint(m, e6, -x[9]-x[10]-x[11]-x[12]+x[91] == 0.0)
@constraint(m, e7, -x[13]-x[14]-x[15]+x[92] == 0.0)
@constraint(m, e8, -x[16]-x[17]-x[18]-x[19]-x[20]+x[93] == 0.0)
@constraint(m, e9, -x[21]+x[94] == 0.0)
@constraint(m, e10, -x[22]+x[95] == 0.0)
@constraint(m, e11, -x[23]-x[24]-x[25]-x[26]+x[96] == 0.0)
@constraint(m, e12, -x[27]-x[28]+x[97] == 0.0)
@constraint(m, e13, -x[29]-x[30]+x[98] == 0.0)
@constraint(m, e14, -x[31]+x[99] == 0.0)
@constraint(m, e15, -x[32]-x[33]+x[100] == 0.0)
@constraint(m, e16, -x[34]+x[101] == 0.0)
@constraint(m, e17, -x[35]+x[102] == 0.0)
@constraint(m, e18, -x[36]+x[103] == 0.0)
@constraint(m, e19, -x[37]+x[104] == 0.0)
@constraint(m, e20, -x[38]-x[39]-x[40]-x[41]-x[42]+x[105] == 0.0)
@constraint(m, e21, -x[43]-x[44]-x[45]-x[46]-x[47]-x[48]-x[49]+x[106] == 0.0)
@constraint(m, e22, -x[50]-x[51]-x[52]-x[53]-x[54]-x[55]-x[56]+x[107] == 0.0)
@constraint(m, e23, -x[57]-x[58]-x[59]-x[60]-x[61]-x[62]+x[108] == 0.0)
@constraint(m, e24, -x[63]+x[109] == 0.0)
@constraint(m, e25, -x[64]+x[110] == 0.0)
@constraint(m, e26, -x[65]+x[111] == 0.0)
@constraint(m, e27, -x[66]+x[112] == 0.0)
@constraint(m, e28, -x[67]+x[113] == 0.0)
@constraint(m, e29, -x[68]+x[114] == 0.0)
@constraint(m, e30, -x[69]+x[115] == 0.0)
@constraint(m, e31, -x[70]-x[71]-x[72]-x[73]-x[74]-x[75]-x[76]-x[77]-x[78]+x[116] == 0.0)
@constraint(m, e32, -x[79]-x[80]-x[81]-x[82]-x[83]-x[84]+x[117] == 0.0)
@constraint(m, e33, x[8]-x[86] == 0.0)
@constraint(m, e34, x[7]-x[87] == 0.0)
@constraint(m, e35, x[6]-x[88] == 0.0)
@constraint(m, e36, x[5]-x[89] == 0.0)
@constraint(m, e37, x[12]+x[15]+x[20]-x[90] == 0.0)
@constraint(m, e38, x[14]+x[19]+x[21]+x[26]+x[84]-x[91] == 0.0)
@constraint(m, e39, x[11]+x[18]+x[25]-x[92] == 0.0)
@constraint(m, e40, x[10]+x[13]+x[22]+x[24]+x[83]-x[93] == 0.0)
@constraint(m, e41, x[42]+x[49]+x[56]+x[62]-x[94] == 0.0)
@constraint(m, e42, x[48]+x[55]+x[61]-x[95] == 0.0)
@constraint(m, e43, x[41]+x[47]+x[54]-x[96] == 0.0)
@constraint(m, e44, x[1]+x[40]+x[46]+x[53]+x[60]-x[97] == 0.0)
@constraint(m, e45, x[2]+x[39]+x[45]+x[52]+x[59]-x[98] == 0.0)
@constraint(m, e46, x[3]+x[44]+x[51]+x[58]-x[99] == 0.0)
@constraint(m, e47, x[4]+x[38]+x[43]+x[50]+x[57]-x[100] == 0.0)
@constraint(m, e48, x[28]+x[78]-x[101] == 0.0)
@constraint(m, e49, x[30]+x[77]-x[102] == 0.0)
@constraint(m, e50, x[31]+x[76]-x[103] == 0.0)
@constraint(m, e51, x[33]+x[75]-x[104] == 0.0)
@constraint(m, e52, x[34]+x[63]-x[105] == 0.0)
@constraint(m, e53, x[35]+x[64]-x[106] == 0.0)
@constraint(m, e54, x[36]+x[65]-x[107] == 0.0)
@constraint(m, e55, x[37]+x[66]-x[108] == 0.0)
@constraint(m, e56, x[74]+x[82]-x[109] == 0.0)
@constraint(m, e57, x[73]+x[81]-x[110] == 0.0)
@constraint(m, e58, x[72]+x[80]-x[111] == 0.0)
@constraint(m, e59, x[79]-x[112] == 0.0)
@constraint(m, e60, x[27]+x[71]-x[113] == 0.0)
@constraint(m, e61, x[29]+x[70]-x[114] == 0.0)
@constraint(m, e62, x[32]-x[115] == 0.0)
@constraint(m, e63, x[17]-x[116] == 0.0)
@constraint(m, e64, x[9]+x[16]+x[23]+x[67]+x[68]+x[69]-x[85]-x[117] == 0.0)
@NLconstraint(m, e65, -((-1+log(5.69067753206697e-6*x[1]))*x[1]+(-1+log(7.10020519593016e-6*x[2]))*x[2]+(-1+log(7.75735008920953e-5*x[3]))*x[3]+(-1+log(3.66044269393941e-6*x[4]))*x[4]+(-1+log(3.66044269393941e-6*x[5]))*x[5]+(-1+log(7.75735008920953e-5*x[6]))*x[6]+(-1+log(7.10020519593016e-6*x[7]))*x[7]+(-1+log(5.69067753206697e-6*x[8]))*x[8]+(-1+log(0.000210128178188695*x[9]))*x[9]+(-1+log(0.00263157894736842*x[10]))*x[10]+(-1+log(0.000259134490800726*x[11]))*x[11]+(-1+log(1.92027774897361e-6*x[12]))*x[12]+(-1+log(0.000100603621730382*x[13]))*x[13]+(-1+log(0.000162232316677482*x[14]))*x[14]+(-1+log(1.58433410437593e-5*x[15]))*x[15]+(-1+log(0.000365230094959825*x[16]))*x[16]+(-1+log(1.40680612804749e-5*x[17]))*x[17]+(-1+log(9.84930562395351e-5*x[18]))*x[18]+(-1+log(0.000107596298687325*x[19]))*x[19]+(-1+log(0.000228990153423403*x[20]))*x[20]+(-1+log(2.25983082906414e-6*x[21]))*x[21]+(-1+log(1.18108376246043e-5*x[22]))*x[22]+(-1+log(2.06083587503091e-5*x[23]))*x[23]+(-1+log(0.000378071833648393*x[24]))*x[24]+(-1+log(1.53350713080816e-5*x[25]))*x[25]+(-1+log(1.39805390895873e-5*x[26]))*x[26]+(-1+log(1.3450622763834e-5*x[27]))*x[27]+(-1+log(4.40827698085926e-6*x[28]))*x[28]+(-1+log(1.70285227756492e-5*x[29]))*x[29]+(-1+log(2.43892326415734e-6*x[30]))*x[30]+(-1+log(1.89487247508243e-5*x[31]))*x[31]+(-1+log(3.14001318805539e-5*x[32]))*x[32]+(-1+log(2.39996928039321e-6*x[33]))*x[33]+(-1+log(4.36860545376705e-6*x[34]))*x[34]+(-1+log(2.28361596886975e-6*x[35]))*x[35]+(-1+log(1.86846038863976e-5*x[36]))*x[36]+(-1+log(2.30407314049777e-6*x[37]))*x[37]+(-1+log(8.38363514419852e-5*x[38]))*x[38]+(-1+log(2.13917470639827e-5*x[39]))*x[39]+(-1+log(4.48752468138575e-5*x[40]))*x[40]+(-1+log(5.23752160477662e-5*x[41]))*x[41]+(-1+log(7.57868570432516e-6*x[42]))*x[42]+(-1+log(3.33923264433833e-5*x[43]))*x[43]+(-1+log(0.0010183299389002*x[44]))*x[44]+(-1+log(5.68828213879408e-6*x[45]))*x[45]+(-1+log(3.3031644315254e-5*x[46]))*x[46]+(-1+log(6.20755583696475e-6*x[47]))*x[47]+(-1+log(0.00013883104262113*x[48]))*x[48]+(-1+log(5.76837660577184e-6*x[49]))*x[49]+(-1+log(5.27120341573981e-5*x[50]))*x[50]+(-1+log(3.03905181583346e-5*x[51]))*x[51]+(-1+log(4.55000455000455e-5*x[52]))*x[52]+(-1+log(0.000104025798398003*x[53]))*x[53]+(-1+log(0.000129533678756477*x[54]))*x[54]+(-1+log(0.000351370344342937*x[55]))*x[55]+(-1+log(5.12242598094458e-5*x[56]))*x[56]+(-1+log(8.73499764155064e-6*x[57]))*x[57]+(-1+log(0.000166777851901267*x[58]))*x[58]+(-1+log(1.19938591441182e-5*x[59]))*x[59]+(-1+log(1.57990362587882e-5*x[60]))*x[60]+(-1+log(1.34014125088784e-5*x[61]))*x[61]+(-1+log(8.49754845727008e-6*x[62]))*x[62]+(-1+log(0.000323101777059774*x[63]))*x[63]+(-1+log(7.10444240783762e-6*x[64]))*x[64]+(-1+log(1.66569501124344e-5*x[65]))*x[65]+(-1+log(3.93159032828779e-5*x[66]))*x[66]+(-1+log(1.28887571371493e-5*x[67]))*x[67]+(-1+log(1.69825419468786e-5*x[68]))*x[68]+(-1+log(3.14001318805539e-5*x[69]))*x[69]+(-1+log(0.00628930817610063*x[70]))*x[70]+(-1+log(0.000308546744831842*x[71]))*x[71]+(-1+log(0.000467726847521048*x[72]))*x[72]+(-1+log(6.03027196526563e-5*x[73]))*x[73]+(-1+log(0.00107642626480086*x[74]))*x[74]+(-1+log(5.76634759543305e-5*x[75]))*x[75]+(-1+log(0.00134048257372654*x[76]))*x[76]+(-1+log(3.58615743231128e-5*x[77]))*x[77]+(-1+log(0.000485436893203883*x[78]))*x[78]+(-1+log(3.93159032828779e-5*x[79]))*x[79]+(-1+log(1.72720520925091e-5*x[80]))*x[80]+(-1+log(8.05321564900865e-6*x[81]))*x[81]+(-1+log(0.000461680517082179*x[82]))*x[82]+(-1+log(0.5*x[83]))*x[83]+(-1+log(0.00386100386100386*x[84]))*x[84]+(-1+log(6.9415521310565e-5*x[85]))*x[85])+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 