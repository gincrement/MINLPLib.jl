using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
@variable(m, x[x_Idx])
setlowerbound(x[5], 0.1)
setlowerbound(x[9], 0.1)
setlowerbound(x[1], 0.1)
setlowerbound(x[7], 0.1)
setlowerbound(x[8], 0.1)
setlowerbound(x[4], 0.1)
setlowerbound(x[2], 0.1)
setlowerbound(x[6], 0.1)
setlowerbound(x[10], 0.1)
setlowerbound(x[3], 0.1)
setupperbound(x[1], 1.0)
setupperbound(x[2], 1.0)
setupperbound(x[3], 1.0)
setupperbound(x[4], 1.0)
setupperbound(x[5], 1.0)
setupperbound(x[6], 1.0)
setupperbound(x[7], 1.0)
setupperbound(x[8], 1.0)
setupperbound(x[9], 1.0)
setupperbound(x[10], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(0.4931*x[1]*x[2]+0.6864*x[1]*x[3]+0.0577*x[1]*x[4]+0.331*x[1]*x[5]+0.4615*x[1]*x[6]-0.1788*x[1]*x[7]-0.2886*x[1]*x[8]+0.4708*x[1]*x[9]-0.0574*x[1]*x[10]-0.0747*x[2]*x[3]+0.5194*x[2]*x[4]+0.4049*x[2]*x[5]-0.4841*x[2]*x[6]+0.8754*x[2]*x[7]-0.0878*x[2]*x[8]+0.617*x[2]*x[9]+0.8177*x[2]*x[10]+0.3898*x[3]*x[4]-0.561*x[3]*x[5]+0.7099*x[3]*x[6]+0.4888*x[3]*x[7]-0.3978*x[3]*x[8]+0.3439*x[3]*x[9]+0.2374*x[3]*x[10]+0.9351*x[4]*x[5]+0.9805*x[4]*x[6]-0.324*x[4]*x[7]+0.8415*x[4]*x[8]-0.3219*x[4]*x[9]+0.8619*x[4]*x[10]+0.0931*x[5]*x[6]-0.069*x[5]*x[7]-0.6462*x[5]*x[8]-0.244*x[5]*x[9]-0.6496*x[5]*x[10]-0.2863*x[6]*x[7]+0.3314*x[6]*x[8]+0.2371*x[6]*x[9]-0.0621*x[6]*x[10]-0.3675*x[7]*x[8]-0.4622*x[7]*x[9]-0.6002*x[7]*x[10]-0.1691*x[8]*x[9]+0.9586*x[8]*x[10]+0.0864*x[9]*x[10]-0.741*x[1]+0.6095*x[2]+0.6916*x[3]+0.4181*x[4]+0.0579*x[5]+0.3277*x[6]+0.8015*x[7]+0.8823*x[8]-0.7712*x[9]+0.7333*x[10]+0.9951*x[1]*x[2]*x[3]+0.1336*x[1]*x[2]*x[4]+0.9318*x[1]*x[2]*x[5]+0.4959*x[1]*x[2]*x[6]-0.2652*x[1]*x[2]*x[7]-0.0387*x[1]*x[2]*x[8]-0.8525*x[1]*x[2]*x[9]-0.9893*x[1]*x[2]*x[10]-0.3058*x[1]*x[3]*x[4]-0.3155*x[1]*x[3]*x[5]-0.5641*x[1]*x[3]*x[6]-0.7337*x[1]*x[3]*x[7]+0.801*x[1]*x[3]*x[8]-0.2265*x[1]*x[3]*x[9]-0.109*x[1]*x[3]*x[10]+0.3239*x[1]*x[4]*x[5]-0.9678*x[1]*x[4]*x[6]+0.3017*x[1]*x[4]*x[7]+0.2928*x[1]*x[4]*x[8]-0.354*x[1]*x[4]*x[9]+0.7114*x[1]*x[4]*x[10]-0.1974*x[1]*x[5]*x[6]-0.5863*x[1]*x[5]*x[7]+0.9371*x[1]*x[5]*x[8]+0.1968*x[1]*x[5]*x[9]+0.346*x[1]*x[5]*x[10]-0.0862*x[1]*x[6]*x[7]-0.34*x[1]*x[6]*x[8]-0.7992*x[1]*x[6]*x[9]+0.5109*x[1]*x[6]*x[10]+0.2114*x[1]*x[7]*x[8]+0.4381*x[1]*x[7]*x[9]+0.7947*x[1]*x[7]*x[10]+0.3165*x[1]*x[8]*x[9]-0.6986*x[1]*x[8]*x[10]+0.2246*x[1]*x[9]*x[10]+0.9573*x[2]*x[3]*x[4]+0.9983*x[2]*x[3]*x[5]-0.4864*x[2]*x[3]*x[6]+0.1017*x[2]*x[3]*x[7]+0.3181*x[2]*x[3]*x[8]+0.108*x[2]*x[3]*x[9]+0.9555*x[2]*x[3]*x[10]+0.8038*x[2]*x[4]*x[5]+0.3158*x[2]*x[4]*x[6]+0.4577*x[2]*x[4]*x[7]-0.1951*x[2]*x[4]*x[8]+0.8573*x[2]*x[4]*x[9]-0.7043*x[2]*x[4]*x[10]+0.3491*x[2]*x[5]*x[6]+0.5392*x[2]*x[5]*x[7]-0.3214*x[2]*x[5]*x[8]-0.7684*x[2]*x[5]*x[9]+0.2287*x[2]*x[5]*x[10]+0.6412*x[2]*x[6]*x[7]+0.8942*x[2]*x[6]*x[8]+0.4623*x[2]*x[6]*x[9]-0.0048*x[2]*x[6]*x[10]-0.2504*x[2]*x[7]*x[8]-0.157*x[2]*x[7]*x[9]+0.1058*x[2]*x[7]*x[10]+0.9958*x[2]*x[8]*x[9]+0.9808*x[2]*x[8]*x[10]+0.4926*x[2]*x[9]*x[10]+0.9075*x[3]*x[4]*x[5]-0.8135*x[3]*x[4]*x[6]+0.468*x[3]*x[4]*x[7]+0.5035*x[3]*x[4]*x[8]+0.8937*x[3]*x[4]*x[9]+0.4124*x[3]*x[4]*x[10]+0.6276*x[3]*x[5]*x[6]+0.1172*x[3]*x[5]*x[7]-0.8766*x[3]*x[5]*x[8]-0.0392*x[3]*x[5]*x[9]+0.1954*x[3]*x[5]*x[10]-0.7249*x[3]*x[6]*x[7]+0.1748*x[3]*x[6]*x[8]+0.0399*x[3]*x[6]*x[9]+0.7718*x[3]*x[6]*x[10]-0.3924*x[3]*x[7]*x[8]+0.3393*x[3]*x[7]*x[9]+0.3299*x[3]*x[7]*x[10]+0.0074*x[3]*x[8]*x[9]-0.4768*x[3]*x[8]*x[10]-0.8469*x[3]*x[9]*x[10]-0.7975*x[4]*x[5]*x[6]+0.0985*x[4]*x[5]*x[7]-0.2488*x[4]*x[5]*x[8]-0.9697*x[4]*x[5]*x[9]+0.5858*x[4]*x[5]*x[10]+0.2418*x[4]*x[6]*x[7]+0.5472*x[4]*x[6]*x[8]+0.9072*x[4]*x[6]*x[9]-0.7715*x[4]*x[6]*x[10]-0.3631*x[4]*x[7]*x[8]+0.1936*x[4]*x[7]*x[9]-0.9037*x[4]*x[7]*x[10]-0.7716*x[4]*x[8]*x[9]-0.5681*x[4]*x[8]*x[10]-0.7989*x[4]*x[9]*x[10]-0.8533*x[5]*x[6]*x[7]-0.5063*x[5]*x[6]*x[8]-0.1132*x[5]*x[6]*x[9]-0.5833*x[5]*x[6]*x[10]+0.134*x[5]*x[7]*x[8]-0.9514*x[5]*x[7]*x[9]-0.1594*x[5]*x[7]*x[10]-0.2043*x[5]*x[8]*x[9]+0.9532*x[5]*x[8]*x[10]+0.3852*x[5]*x[9]*x[10]-0.9901*x[6]*x[7]*x[8]-0.7402*x[6]*x[7]*x[9]-0.9064*x[6]*x[7]*x[10]+0.6796*x[6]*x[8]*x[9]+0.357*x[6]*x[8]*x[10]+0.1639*x[6]*x[9]*x[10]+0.4671*x[7]*x[8]*x[9]-0.7679*x[7]*x[8]*x[10]+0.6806*x[7]*x[9]*x[10]+0.67*x[8]*x[9]*x[10])+x[11] == 0.0)
@NLconstraint(m, e2, 0.9844*x[1]*x[2]-0.5504*x[1]*x[3]+0.8946*x[1]*x[4]+0.6956*x[1]*x[5]+0.4003*x[1]*x[6]+0.1089*x[1]*x[7]-0.1168*x[1]*x[8]-0.5016*x[1]*x[9]+0.7953*x[1]*x[10]-0.7085*x[2]*x[3]-0.1308*x[2]*x[4]-0.0852*x[2]*x[5]-0.3812*x[2]*x[6]-0.0382*x[2]*x[7]+0.3795*x[2]*x[8]+0.6216*x[2]*x[9]-0.2157*x[2]*x[10]-0.4137*x[3]*x[4]+0.152*x[3]*x[5]+0.4507*x[3]*x[6]-0.7145*x[3]*x[7]-0.3329*x[3]*x[8]-0.6792*x[3]*x[9]+0.0692*x[3]*x[10]+0.4467*x[4]*x[5]-0.5436*x[4]*x[6]-0.602*x[4]*x[7]+0.9452*x[4]*x[8]+0.9871*x[4]*x[9]-0.8361*x[4]*x[10]-0.4982*x[5]*x[6]-0.5683*x[5]*x[7]-0.6084*x[5]*x[8]+0.7005*x[5]*x[9]-0.9106*x[5]*x[10]+0.7278*x[6]*x[7]-0.8657*x[6]*x[8]-0.1454*x[6]*x[9]-0.7254*x[6]*x[10]-0.7618*x[7]*x[8]-0.3881*x[7]*x[9]+0.2265*x[7]*x[10]+0.3273*x[8]*x[9]+0.7918*x[8]*x[10]+0.5074*x[9]*x[10]+0.2597*x[1]-0.558*x[2]-0.0323*x[3]+0.23*x[4]+0.9753*x[5]+0.1184*x[6]-0.2582*x[7]-0.3248*x[8]+0.4909*x[9]+0.1395*x[10]+0.2647*x[1]*x[2]*x[3]-0.5144*x[1]*x[2]*x[4]-0.6792*x[1]*x[2]*x[5]-0.9575*x[1]*x[2]*x[6]-0.6195*x[1]*x[2]*x[7]-0.3753*x[1]*x[2]*x[8]+0.6193*x[1]*x[2]*x[9]+0.1474*x[1]*x[2]*x[10]+0.6525*x[1]*x[3]*x[4]-0.4271*x[1]*x[3]*x[5]-0.679*x[1]*x[3]*x[6]-0.3382*x[1]*x[3]*x[7]-0.4683*x[1]*x[3]*x[8]+0.0896*x[1]*x[3]*x[9]+0.107*x[1]*x[3]*x[10]-0.9568*x[1]*x[4]*x[5]-0.7025*x[1]*x[4]*x[6]-0.7902*x[1]*x[4]*x[7]+0.2284*x[1]*x[4]*x[8]-0.1874*x[1]*x[4]*x[9]+0.8031*x[1]*x[4]*x[10]+0.8857*x[1]*x[5]*x[6]-0.6868*x[1]*x[5]*x[7]+0.8739*x[1]*x[5]*x[8]-0.7291*x[1]*x[5]*x[9]-0.2574*x[1]*x[5]*x[10]-0.357*x[1]*x[6]*x[7]+0.4299*x[1]*x[6]*x[8]+0.4594*x[1]*x[6]*x[9]-0.2428*x[1]*x[6]*x[10]+0.6579*x[1]*x[7]*x[8]+0.9073*x[1]*x[7]*x[9]-0.3832*x[1]*x[7]*x[10]+0.1595*x[1]*x[8]*x[9]-0.5331*x[1]*x[8]*x[10]+0.6888*x[1]*x[9]*x[10]-0.4837*x[2]*x[3]*x[4]+0.6795*x[2]*x[3]*x[5]+0.0753*x[2]*x[3]*x[6]+0.2431*x[2]*x[3]*x[7]-0.0184*x[2]*x[3]*x[8]-0.4303*x[2]*x[3]*x[9]-0.5289*x[2]*x[3]*x[10]+0.3028*x[2]*x[4]*x[5]+0.2143*x[2]*x[4]*x[6]-0.2037*x[2]*x[4]*x[7]+0.6976*x[2]*x[4]*x[8]+0.2752*x[2]*x[4]*x[9]-0.4824*x[2]*x[4]*x[10]-0.2823*x[2]*x[5]*x[6]+0.1237*x[2]*x[5]*x[7]-0.7571*x[2]*x[5]*x[8]+0.9569*x[2]*x[5]*x[9]-0.2336*x[2]*x[5]*x[10]+0.4414*x[2]*x[6]*x[7]-0.2835*x[2]*x[6]*x[8]+0.8198*x[2]*x[6]*x[9]+0.0874*x[2]*x[6]*x[10]+0.9194*x[2]*x[7]*x[8]+0.8589*x[2]*x[7]*x[9]+0.2666*x[2]*x[7]*x[10]-0.4088*x[2]*x[8]*x[9]-0.6505*x[2]*x[8]*x[10]+0.6852*x[2]*x[9]*x[10]+0.2372*x[3]*x[4]*x[5]+0.4118*x[3]*x[4]*x[6]-0.5151*x[3]*x[4]*x[7]+0.5959*x[3]*x[4]*x[8]-0.218*x[3]*x[4]*x[9]-0.7801*x[3]*x[4]*x[10]+0.5074*x[3]*x[5]*x[6]-0.9404*x[3]*x[5]*x[7]+0.4013*x[3]*x[5]*x[8]+0.0504*x[3]*x[5]*x[9]+0.5051*x[3]*x[5]*x[10]+0.2954*x[3]*x[6]*x[7]+0.7422*x[3]*x[6]*x[8]+0.6614*x[3]*x[6]*x[9]+0.9144*x[3]*x[6]*x[10]-0.5555*x[3]*x[7]*x[8]+0.159*x[3]*x[7]*x[9]+0.9815*x[3]*x[7]*x[10]+0.6799*x[3]*x[8]*x[9]-0.6504*x[3]*x[8]*x[10]+0.4191*x[3]*x[9]*x[10]-0.3969*x[4]*x[5]*x[6]-0.9499*x[4]*x[5]*x[7]+0.8335*x[4]*x[5]*x[8]+0.3776*x[4]*x[5]*x[9]+0.5135*x[4]*x[5]*x[10]+0.8655*x[4]*x[6]*x[7]-0.89*x[4]*x[6]*x[8]-0.0021*x[4]*x[6]*x[9]-0.881*x[4]*x[6]*x[10]-0.6563*x[4]*x[7]*x[8]+0.3767*x[4]*x[7]*x[9]-0.3868*x[4]*x[7]*x[10]+0.4704*x[4]*x[8]*x[9]+0.5043*x[4]*x[8]*x[10]-0.2086*x[4]*x[9]*x[10]-0.8244*x[5]*x[6]*x[7]-0.9021*x[5]*x[6]*x[8]+0.5587*x[5]*x[6]*x[9]+0.3616*x[5]*x[6]*x[10]-0.3769*x[5]*x[7]*x[8]+0.0455*x[5]*x[7]*x[9]+0.0116*x[5]*x[7]*x[10]-0.1229*x[5]*x[8]*x[9]+0.1753*x[5]*x[8]*x[10]-0.4053*x[5]*x[9]*x[10]-0.4102*x[6]*x[7]*x[8]-0.8524*x[6]*x[7]*x[9]+0.9499*x[6]*x[7]*x[10]+0.4563*x[6]*x[8]*x[9]+0.5162*x[6]*x[8]*x[10]-0.3816*x[6]*x[9]*x[10]-0.507*x[7]*x[8]*x[9]-0.4862*x[7]*x[8]*x[10]+0.2361*x[7]*x[9]*x[10]+0.8756*x[8]*x[9]*x[10] <= 45.614)
@NLconstraint(m, e3, 0.0242*x[1]*x[2]+0.5528*x[1]*x[3]-0.0143*x[1]*x[4]-0.5903*x[1]*x[5]-0.1097*x[1]*x[6]-0.1329*x[1]*x[7]-0.8906*x[1]*x[8]+0.401*x[1]*x[9]+0.8385*x[1]*x[10]-0.222*x[2]*x[3]-0.5022*x[2]*x[4]-0.2673*x[2]*x[5]+0.9973*x[2]*x[6]+0.3242*x[2]*x[7]-0.6405*x[2]*x[8]+0.7448*x[2]*x[9]-0.5121*x[2]*x[10]-0.7672*x[3]*x[4]+0.6364*x[3]*x[5]+0.0713*x[3]*x[6]+0.9761*x[3]*x[7]-0.1674*x[3]*x[8]+0.6164*x[3]*x[9]-0.5201*x[3]*x[10]+0.9405*x[4]*x[5]-0.2474*x[4]*x[6]+0.2668*x[4]*x[7]-0.7262*x[4]*x[8]+0.5369*x[4]*x[9]-0.7976*x[4]*x[10]+0.1039*x[5]*x[6]+0.6633*x[5]*x[7]-0.2455*x[5]*x[8]+0.7355*x[5]*x[9]+0.2493*x[5]*x[10]+0.1046*x[6]*x[7]-0.5768*x[6]*x[8]+0.6454*x[6]*x[9]-0.2728*x[6]*x[10]-0.539*x[7]*x[8]-0.3418*x[7]*x[9]+0.3602*x[7]*x[10]-0.1419*x[8]*x[9]-0.0954*x[8]*x[10]+0.8552*x[9]*x[10]-0.1075*x[1]+0.3345*x[2]+0.5617*x[3]+0.5817*x[4]-0.6045*x[5]-0.4872*x[6]+0.3536*x[7]+0.7971*x[8]-0.25*x[9]-0.9599*x[10]+0.2964*x[1]*x[2]*x[3]+0.3672*x[1]*x[2]*x[4]-0.6592*x[1]*x[2]*x[5]-0.4539*x[1]*x[2]*x[6]-0.1185*x[1]*x[2]*x[7]-0.0846*x[1]*x[2]*x[8]-0.2095*x[1]*x[2]*x[9]+0.3767*x[1]*x[2]*x[10]-0.4022*x[1]*x[3]*x[4]-0.5895*x[1]*x[3]*x[5]-0.6154*x[1]*x[3]*x[6]-0.162*x[1]*x[3]*x[7]+0.3813*x[1]*x[3]*x[8]-0.7189*x[1]*x[3]*x[9]-0.7125*x[1]*x[3]*x[10]+0.3249*x[1]*x[4]*x[5]+0.1514*x[1]*x[4]*x[6]+0.5499*x[1]*x[4]*x[7]+0.5506*x[1]*x[4]*x[8]+0.5307*x[1]*x[4]*x[9]+0.753*x[1]*x[4]*x[10]-0.8016*x[1]*x[5]*x[6]-0.331*x[1]*x[5]*x[7]+0.2902*x[1]*x[5]*x[8]-0.7368*x[1]*x[5]*x[9]+0.6151*x[1]*x[5]*x[10]+0.0837*x[1]*x[6]*x[7]-0.4685*x[1]*x[6]*x[8]-0.0823*x[1]*x[6]*x[9]+0.0219*x[1]*x[6]*x[10]+0.0097*x[1]*x[7]*x[8]+0.9235*x[1]*x[7]*x[9]+0.1005*x[1]*x[7]*x[10]-0.6207*x[1]*x[8]*x[9]-0.5978*x[1]*x[8]*x[10]-0.5025*x[1]*x[9]*x[10]+0.9402*x[2]*x[3]*x[4]+0.5528*x[2]*x[3]*x[5]-0.4546*x[2]*x[3]*x[6]-0.0061*x[2]*x[3]*x[7]-0.2025*x[2]*x[3]*x[8]+0.2266*x[2]*x[3]*x[9]-0.8295*x[2]*x[3]*x[10]+0.474*x[2]*x[4]*x[5]+0.7257*x[2]*x[4]*x[6]-0.3179*x[2]*x[4]*x[7]+0.3889*x[2]*x[4]*x[8]+0.2838*x[2]*x[4]*x[9]-0.829*x[2]*x[4]*x[10]+0.416*x[2]*x[5]*x[6]+0.1849*x[2]*x[5]*x[7]-0.5344*x[2]*x[5]*x[8]-0.8496*x[2]*x[5]*x[9]-0.3513*x[2]*x[5]*x[10]+0.8262*x[2]*x[6]*x[7]-0.5914*x[2]*x[6]*x[8]-0.0945*x[2]*x[6]*x[9]+0.4543*x[2]*x[6]*x[10]-0.9433*x[2]*x[7]*x[8]+0.0341*x[2]*x[7]*x[9]+0.5353*x[2]*x[7]*x[10]+0.7887*x[2]*x[8]*x[9]+0.889*x[2]*x[8]*x[10]-0.4204*x[2]*x[9]*x[10]+0.0629*x[3]*x[4]*x[5]-0.5343*x[3]*x[4]*x[6]-0.3744*x[3]*x[4]*x[7]-0.717*x[3]*x[4]*x[8]-0.3148*x[3]*x[4]*x[9]-0.6929*x[3]*x[4]*x[10]+0.6984*x[3]*x[5]*x[6]+0.9441*x[3]*x[5]*x[7]-0.1182*x[3]*x[5]*x[8]+0.5489*x[3]*x[5]*x[9]-0.0876*x[3]*x[5]*x[10]+0.729*x[3]*x[6]*x[7]+0.456*x[3]*x[6]*x[8]+0.2747*x[3]*x[6]*x[9]+0.4481*x[3]*x[6]*x[10]+0.2084*x[3]*x[7]*x[8]-0.9474*x[3]*x[7]*x[9]-0.4145*x[3]*x[7]*x[10]-0.6056*x[3]*x[8]*x[9]+0.8973*x[3]*x[8]*x[10]+0.0637*x[3]*x[9]*x[10]-0.9793*x[4]*x[5]*x[6]-0.0957*x[4]*x[5]*x[7]+0.9272*x[4]*x[5]*x[8]+0.9722*x[4]*x[5]*x[9]-0.3182*x[4]*x[5]*x[10]+0.9186*x[4]*x[6]*x[7]-0.3466*x[4]*x[6]*x[8]+0.4085*x[4]*x[6]*x[9]+0.5809*x[4]*x[6]*x[10]+0.4471*x[4]*x[7]*x[8]+0.4579*x[4]*x[7]*x[9]-0.1092*x[4]*x[7]*x[10]-0.2364*x[4]*x[8]*x[9]+0.8444*x[4]*x[8]*x[10]+0.4968*x[4]*x[9]*x[10]-0.1465*x[5]*x[6]*x[7]-0.5651*x[5]*x[6]*x[8]+0.4588*x[5]*x[6]*x[9]+0.5938*x[5]*x[6]*x[10]+0.1168*x[5]*x[7]*x[8]+0.7708*x[5]*x[7]*x[9]-0.2337*x[5]*x[7]*x[10]-0.5184*x[5]*x[8]*x[9]-0.3698*x[5]*x[8]*x[10]-0.1342*x[5]*x[9]*x[10]-0.904*x[6]*x[7]*x[8]-0.1518*x[6]*x[7]*x[9]+0.4747*x[6]*x[7]*x[10]+0.7456*x[6]*x[8]*x[9]-0.384*x[6]*x[8]*x[10]+0.6866*x[6]*x[9]*x[10]+0.6322*x[7]*x[8]*x[9]-0.1864*x[7]*x[8]*x[10]+0.73*x[7]*x[9]*x[10]+0.7045*x[8]*x[9]*x[10] <= 40.2)
@NLconstraint(m, e4, (-0.2692*x[1]*x[2])-0.5992*x[1]*x[3]-0.1808*x[1]*x[4]-0.5216*x[1]*x[5]+0.41*x[1]*x[6]-0.8418*x[1]*x[7]-0.5924*x[1]*x[8]-0.9653*x[1]*x[9]-0.3314*x[1]*x[10]-0.4303*x[2]*x[3]+0.6908*x[2]*x[4]-0.0111*x[2]*x[5]+0.4202*x[2]*x[6]-0.4907*x[2]*x[7]+0.6454*x[2]*x[8]-0.4368*x[2]*x[9]+0.2496*x[2]*x[10]+0.4916*x[3]*x[4]+0.7479*x[3]*x[5]-0.7442*x[3]*x[6]-0.4416*x[3]*x[7]+0.847*x[3]*x[8]+0.9726*x[3]*x[9]+0.5786*x[3]*x[10]-0.3041*x[4]*x[5]+0.5286*x[4]*x[6]-0.6138*x[4]*x[7]-0.8712*x[4]*x[8]-0.9096*x[4]*x[9]-0.707*x[4]*x[10]+0.6138*x[5]*x[6]+0.312*x[5]*x[7]-0.5107*x[5]*x[8]-0.3513*x[5]*x[9]+0.9673*x[5]*x[10]+0.2275*x[6]*x[7]-0.415*x[6]*x[8]-0.0089*x[6]*x[9]+0.4723*x[6]*x[10]-0.9209*x[7]*x[8]-0.9687*x[7]*x[9]-0.043*x[7]*x[10]+0.5532*x[8]*x[9]+0.8139*x[8]*x[10]+0.8304*x[9]*x[10]-0.3323*x[1]-0.4014*x[2]+0.6574*x[3]-0.0813*x[4]-0.9703*x[5]-0.3218*x[6]-0.8836*x[7]-0.8145*x[8]+0.3035*x[9]-0.2096*x[10]+0.9819*x[1]*x[2]*x[3]+0.9495*x[1]*x[2]*x[4]+0.9406*x[1]*x[2]*x[5]+0.9377*x[1]*x[2]*x[6]-0.2505*x[1]*x[2]*x[7]-0.8054*x[1]*x[2]*x[8]+0.5014*x[1]*x[2]*x[9]+0.649*x[1]*x[2]*x[10]+0.4489*x[1]*x[3]*x[4]-0.2659*x[1]*x[3]*x[5]+0.2441*x[1]*x[3]*x[6]-0.3874*x[1]*x[3]*x[7]-0.3974*x[1]*x[3]*x[8]+0.3528*x[1]*x[3]*x[9]+0.6601*x[1]*x[3]*x[10]+0.1126*x[1]*x[4]*x[5]+0.1189*x[1]*x[4]*x[6]-0.3444*x[1]*x[4]*x[7]+0.4614*x[1]*x[4]*x[8]-0.6835*x[1]*x[4]*x[9]+0.0658*x[1]*x[4]*x[10]+0.5684*x[1]*x[5]*x[6]-0.5684*x[1]*x[5]*x[7]-0.3494*x[1]*x[5]*x[8]+0.0029*x[1]*x[5]*x[9]-0.5542*x[1]*x[5]*x[10]-0.067*x[1]*x[6]*x[7]-0.6264*x[1]*x[6]*x[8]-0.6098*x[1]*x[6]*x[9]-0.5862*x[1]*x[6]*x[10]+0.8116*x[1]*x[7]*x[8]+0.5998*x[1]*x[7]*x[9]+0.4699*x[1]*x[7]*x[10]-0.1693*x[1]*x[8]*x[9]+0.622*x[1]*x[8]*x[10]+0.9767*x[1]*x[9]*x[10]-0.0178*x[2]*x[3]*x[4]-0.5614*x[2]*x[3]*x[5]+0.5238*x[2]*x[3]*x[6]+0.8146*x[2]*x[3]*x[7]+0.1793*x[2]*x[3]*x[8]+0.7412*x[2]*x[3]*x[9]-0.9228*x[2]*x[3]*x[10]+0.8761*x[2]*x[4]*x[5]-0.9062*x[2]*x[4]*x[6]+0.7942*x[2]*x[4]*x[7]-0.9605*x[2]*x[4]*x[8]+0.9985*x[2]*x[4]*x[9]+0.9604*x[2]*x[4]*x[10]+0.2233*x[2]*x[5]*x[6]+0.1751*x[2]*x[5]*x[7]+0.9245*x[2]*x[5]*x[8]+0.7868*x[2]*x[5]*x[9]-0.5956*x[2]*x[5]*x[10]-0.9745*x[2]*x[6]*x[7]-0.49*x[2]*x[6]*x[8]+0.7809*x[2]*x[6]*x[9]-0.4609*x[2]*x[6]*x[10]+0.778*x[2]*x[7]*x[8]+0.0383*x[2]*x[7]*x[9]-0.2656*x[2]*x[7]*x[10]+0.9676*x[2]*x[8]*x[9]+0.7539*x[2]*x[8]*x[10]+0.3629*x[2]*x[9]*x[10]-0.2751*x[3]*x[4]*x[5]-0.6036*x[3]*x[4]*x[6]-0.6255*x[3]*x[4]*x[7]+0.9753*x[3]*x[4]*x[8]-0.6347*x[3]*x[4]*x[9]-0.9763*x[3]*x[4]*x[10]+0.8874*x[3]*x[5]*x[6]-0.0161*x[3]*x[5]*x[7]+0.9611*x[3]*x[5]*x[8]+0.2266*x[3]*x[5]*x[9]-0.2746*x[3]*x[5]*x[10]+0.0648*x[3]*x[6]*x[7]-0.7084*x[3]*x[6]*x[8]-0.7343*x[3]*x[6]*x[9]-0.2376*x[3]*x[6]*x[10]+0.4007*x[3]*x[7]*x[8]+0.0995*x[3]*x[7]*x[9]+0.6511*x[3]*x[7]*x[10]+0.0747*x[3]*x[8]*x[9]+0.3247*x[3]*x[8]*x[10]-0.8937*x[3]*x[9]*x[10]-0.6571*x[4]*x[5]*x[6]+0.2373*x[4]*x[5]*x[7]+0.5175*x[4]*x[5]*x[8]+0.8201*x[4]*x[5]*x[9]+0.428*x[4]*x[5]*x[10]+0.48*x[4]*x[6]*x[7]-0.2866*x[4]*x[6]*x[8]+0.6437*x[4]*x[6]*x[9]+0.1041*x[4]*x[6]*x[10]+0.3016*x[4]*x[7]*x[8]-0.6249*x[4]*x[7]*x[9]+0.6366*x[4]*x[7]*x[10]-0.9552*x[4]*x[8]*x[9]+0.3144*x[4]*x[8]*x[10]-0.7607*x[4]*x[9]*x[10]-0.2293*x[5]*x[6]*x[7]-0.5147*x[5]*x[6]*x[8]+0.9307*x[5]*x[6]*x[9]-0.0294*x[5]*x[6]*x[10]+0.9847*x[5]*x[7]*x[8]-0.4374*x[5]*x[7]*x[9]+0.9569*x[5]*x[7]*x[10]+0.9057*x[5]*x[8]*x[9]-0.5138*x[5]*x[8]*x[10]-0.1668*x[5]*x[9]*x[10]+0.4716*x[6]*x[7]*x[8]-0.6094*x[6]*x[7]*x[9]+0.2787*x[6]*x[7]*x[10]+0.2594*x[6]*x[8]*x[9]-0.7943*x[6]*x[8]*x[10]-0.7225*x[6]*x[9]*x[10]-0.0902*x[7]*x[8]*x[9]+0.9687*x[7]*x[8]*x[10]-0.1502*x[7]*x[9]*x[10]+0.4096*x[8]*x[9]*x[10] <= 61.993)
@NLconstraint(m, e5, 0.269*x[1]*x[3]-0.0967*x[1]*x[2]-0.5516*x[1]*x[4]-0.2037*x[1]*x[5]+0.6602*x[1]*x[6]-0.722*x[1]*x[7]+0.5119*x[1]*x[8]+0.586*x[1]*x[9]-0.5442*x[1]*x[10]+0.0562*x[2]*x[3]-0.7251*x[2]*x[4]-0.6521*x[2]*x[5]-0.7049*x[2]*x[6]+0.62*x[2]*x[7]-0.497*x[2]*x[8]-0.1799*x[2]*x[9]+0.9132*x[2]*x[10]+0.4395*x[3]*x[4]+0.6708*x[3]*x[5]+0.5537*x[3]*x[6]+0.0758*x[3]*x[7]+0.2226*x[3]*x[8]+0.3882*x[3]*x[9]+0.2014*x[3]*x[10]-0.8073*x[4]*x[5]+0.0984*x[4]*x[6]-0.4142*x[4]*x[7]-0.5883*x[4]*x[8]+0.6861*x[4]*x[9]+0.303*x[4]*x[10]+0.9262*x[5]*x[6]+0.2199*x[5]*x[7]-0.1922*x[5]*x[8]-0.7428*x[5]*x[9]-0.7244*x[5]*x[10]-0.5698*x[6]*x[7]+0.046*x[6]*x[8]+0.4195*x[6]*x[9]+0.0448*x[6]*x[10]-0.6311*x[7]*x[8]+0.7262*x[7]*x[9]-0.3714*x[7]*x[10]-0.9939*x[8]*x[9]+0.9992*x[8]*x[10]+0.7608*x[9]*x[10]-0.5125*x[1]+0.0878*x[2]+0.522*x[3]+0.3632*x[4]-0.1574*x[5]+0.1895*x[6]-0.1071*x[7]+0.889*x[8]-0.6673*x[9]+0.9491*x[10]+0.6504*x[1]*x[2]*x[3]-0.3218*x[1]*x[2]*x[4]-0.3831*x[1]*x[2]*x[5]-0.2782*x[1]*x[2]*x[6]-0.1766*x[1]*x[2]*x[7]-0.0781*x[1]*x[2]*x[8]-0.2352*x[1]*x[2]*x[9]+0.2862*x[1]*x[2]*x[10]-0.5167*x[1]*x[3]*x[4]+0.4314*x[1]*x[3]*x[5]+0.7136*x[1]*x[3]*x[6]-0.6721*x[1]*x[3]*x[7]+0.4626*x[1]*x[3]*x[8]+0.0198*x[1]*x[3]*x[9]-0.4397*x[1]*x[3]*x[10]+0.9861*x[1]*x[4]*x[5]+0.5225*x[1]*x[4]*x[6]-0.9346*x[1]*x[4]*x[7]+0.4133*x[1]*x[4]*x[8]+0.3442*x[1]*x[4]*x[9]-0.8199*x[1]*x[4]*x[10]-0.0776*x[1]*x[5]*x[6]-0.4723*x[1]*x[5]*x[7]-0.289*x[1]*x[5]*x[8]+0.4463*x[1]*x[5]*x[9]-0.9454*x[1]*x[5]*x[10]+0.1697*x[1]*x[6]*x[7]+0.3885*x[1]*x[6]*x[8]-0.7786*x[1]*x[6]*x[9]+0.0525*x[1]*x[6]*x[10]+0.9874*x[1]*x[7]*x[8]+0.4525*x[1]*x[7]*x[9]+0.521*x[1]*x[7]*x[10]-0.5928*x[1]*x[8]*x[9]+0.7265*x[1]*x[8]*x[10]-0.615*x[1]*x[9]*x[10]-0.8237*x[2]*x[3]*x[4]-0.5174*x[2]*x[3]*x[5]+0.821*x[2]*x[3]*x[6]+0.6597*x[2]*x[3]*x[7]-0.8449*x[2]*x[3]*x[8]+0.743*x[2]*x[3]*x[9]+0.1144*x[2]*x[3]*x[10]-0.2056*x[2]*x[4]*x[5]+0.9986*x[2]*x[4]*x[6]+0.54*x[2]*x[4]*x[7]+0.5713*x[2]*x[4]*x[8]+0.5068*x[2]*x[4]*x[9]+0.1204*x[2]*x[4]*x[10]+0.3888*x[2]*x[5]*x[6]+0.7512*x[2]*x[5]*x[7]-0.9713*x[2]*x[5]*x[8]-0.4285*x[2]*x[5]*x[9]-0.6373*x[2]*x[5]*x[10]+0.6154*x[2]*x[6]*x[7]+0.1051*x[2]*x[6]*x[8]-0.0283*x[2]*x[6]*x[9]+0.0735*x[2]*x[6]*x[10]-0.9093*x[2]*x[7]*x[8]-0.7123*x[2]*x[7]*x[9]+0.5603*x[2]*x[7]*x[10]+0.5412*x[2]*x[8]*x[9]-0.6809*x[2]*x[8]*x[10]-0.0621*x[2]*x[9]*x[10]-0.674*x[3]*x[4]*x[5]+0.0977*x[3]*x[4]*x[6]-0.3899*x[3]*x[4]*x[7]-0.6912*x[3]*x[4]*x[8]+0.15*x[3]*x[4]*x[9]-0.7118*x[3]*x[4]*x[10]-0.6134*x[3]*x[5]*x[6]+0.3822*x[3]*x[5]*x[7]+0.9004*x[3]*x[5]*x[8]-0.7372*x[3]*x[5]*x[9]+0.42*x[3]*x[5]*x[10]-0.2405*x[3]*x[6]*x[7]-0.204*x[3]*x[6]*x[8]-0.998*x[3]*x[6]*x[9]-0.1736*x[3]*x[6]*x[10]+0.6076*x[3]*x[7]*x[8]+0.7557*x[3]*x[7]*x[9]-0.7184*x[3]*x[7]*x[10]-0.9139*x[3]*x[8]*x[9]+0.1313*x[3]*x[8]*x[10]-0.8836*x[3]*x[9]*x[10]+0.7427*x[4]*x[5]*x[6]-0.3114*x[4]*x[5]*x[7]-0.0203*x[4]*x[5]*x[8]-0.4356*x[4]*x[5]*x[9]-0.5229*x[4]*x[5]*x[10]+0.0993*x[4]*x[6]*x[7]+0.4277*x[4]*x[6]*x[8]+0.8057*x[4]*x[6]*x[9]+0.5147*x[4]*x[6]*x[10]+0.0785*x[4]*x[7]*x[8]+0.2918*x[4]*x[7]*x[9]+0.5539*x[4]*x[7]*x[10]+0.758*x[4]*x[8]*x[9]+0.2055*x[4]*x[8]*x[10]-0.877*x[4]*x[9]*x[10]-0.1218*x[5]*x[6]*x[7]-0.9826*x[5]*x[6]*x[8]-0.4008*x[5]*x[6]*x[9]+0.947*x[5]*x[6]*x[10]+0.9103*x[5]*x[7]*x[8]-0.5734*x[5]*x[7]*x[9]+0.3479*x[5]*x[7]*x[10]+0.0723*x[5]*x[8]*x[9]-0.2806*x[5]*x[8]*x[10]-0.9973*x[5]*x[9]*x[10]+0.6989*x[6]*x[7]*x[8]-0.1571*x[6]*x[7]*x[9]+0.4957*x[6]*x[7]*x[10]-0.9767*x[6]*x[8]*x[9]+0.2287*x[6]*x[8]*x[10]-0.1111*x[6]*x[9]*x[10]+0.3253*x[7]*x[8]*x[9]+0.3775*x[7]*x[8]*x[10]+0.8783*x[7]*x[9]*x[10]+0.4335*x[8]*x[9]*x[10] <= 8.691)
@NLconstraint(m, e6, (-0.21*x[1]*x[2])-0.5062*x[1]*x[3]-0.8757*x[1]*x[4]+0.8153*x[1]*x[5]+0.0395*x[1]*x[6]-0.8308*x[1]*x[7]-0.2081*x[1]*x[8]-0.797*x[1]*x[9]-0.9042*x[1]*x[10]-0.5208*x[2]*x[3]+0.2869*x[2]*x[4]+0.0977*x[2]*x[5]-0.6313*x[2]*x[6]-0.1462*x[2]*x[7]+0.2552*x[2]*x[8]-0.8255*x[2]*x[9]+0.0742*x[2]*x[10]+0.6895*x[3]*x[4]-0.181*x[3]*x[5]-0.5937*x[3]*x[6]+0.6543*x[3]*x[7]+0.9317*x[3]*x[8]-0.2445*x[3]*x[9]+0.2943*x[3]*x[10]+0.3555*x[4]*x[5]-0.1086*x[4]*x[6]-0.6558*x[4]*x[7]-0.296*x[4]*x[8]-0.3417*x[4]*x[9]+0.4937*x[4]*x[10]-0.457*x[5]*x[6]+0.1226*x[5]*x[7]-0.7351*x[5]*x[8]+0.5968*x[5]*x[9]-0.5881*x[5]*x[10]-0.9469*x[6]*x[7]-0.6075*x[6]*x[8]-0.9843*x[6]*x[9]+0.6435*x[6]*x[10]+0.8889*x[7]*x[8]-0.064*x[7]*x[9]-0.7728*x[7]*x[10]-0.679*x[8]*x[9]+0.6905*x[8]*x[10]+0.7074*x[9]*x[10]-0.3972*x[1]-0.4977*x[2]-0.5983*x[3]-0.4784*x[4]-0.4858*x[5]+0.2572*x[6]-0.0521*x[7]+0.7398*x[8]+0.2972*x[9]+0.7789*x[10]+0.8198*x[1]*x[2]*x[4]-0.6978*x[1]*x[2]*x[3]-0.5889*x[1]*x[2]*x[5]-0.5569*x[1]*x[2]*x[6]-0.7317*x[1]*x[2]*x[7]+0.3949*x[1]*x[2]*x[8]+0.9541*x[1]*x[2]*x[9]-0.9943*x[1]*x[2]*x[10]-0.0116*x[1]*x[3]*x[4]-0.5047*x[1]*x[3]*x[5]+0.8051*x[1]*x[3]*x[6]-0.7914*x[1]*x[3]*x[7]+0.5505*x[1]*x[3]*x[8]-0.7908*x[1]*x[3]*x[9]+0.2414*x[1]*x[3]*x[10]-0.3313*x[1]*x[4]*x[5]+0.9555*x[1]*x[4]*x[6]+0.3839*x[1]*x[4]*x[7]+0.6554*x[1]*x[4]*x[8]+0.9363*x[1]*x[4]*x[9]-0.4451*x[1]*x[4]*x[10]-0.2679*x[1]*x[5]*x[6]-0.6916*x[1]*x[5]*x[7]+0.9618*x[1]*x[5]*x[8]+0.8635*x[1]*x[5]*x[9]-0.5314*x[1]*x[5]*x[10]-0.7532*x[1]*x[6]*x[7]-0.2676*x[1]*x[6]*x[8]+0.6789*x[1]*x[6]*x[9]-0.7484*x[1]*x[6]*x[10]+0.9799*x[1]*x[7]*x[8]-0.04*x[1]*x[7]*x[9]+0.9229*x[1]*x[7]*x[10]+0.9211*x[1]*x[8]*x[9]+0.5065*x[1]*x[8]*x[10]+0.2912*x[1]*x[9]*x[10]+0.3298*x[2]*x[3]*x[4]+0.7586*x[2]*x[3]*x[5]+0.4593*x[2]*x[3]*x[6]+0.3926*x[2]*x[3]*x[7]+0.0687*x[2]*x[3]*x[8]+0.4976*x[2]*x[3]*x[9]+0.6535*x[2]*x[3]*x[10]-0.9917*x[2]*x[4]*x[5]-0.5502*x[2]*x[4]*x[6]-0.1718*x[2]*x[4]*x[7]+0.2573*x[2]*x[4]*x[8]-0.9025*x[2]*x[4]*x[9]+0.3264*x[2]*x[4]*x[10]-0.6443*x[2]*x[5]*x[6]+0.1642*x[2]*x[5]*x[7]+0.9221*x[2]*x[5]*x[8]-0.428*x[2]*x[5]*x[9]-0.4399*x[2]*x[5]*x[10]+0.7566*x[2]*x[6]*x[7]+0.354*x[2]*x[6]*x[8]-0.5276*x[2]*x[6]*x[9]-0.6272*x[2]*x[6]*x[10]-0.8758*x[2]*x[7]*x[8]-0.6662*x[2]*x[7]*x[9]-0.5727*x[2]*x[7]*x[10]-0.1467*x[2]*x[8]*x[9]-0.8066*x[2]*x[8]*x[10]-0.53*x[2]*x[9]*x[10]-0.7406*x[3]*x[4]*x[5]+0.8858*x[3]*x[4]*x[6]-0.3289*x[3]*x[4]*x[7]-0.8604*x[3]*x[4]*x[8]-0.0148*x[3]*x[4]*x[9]+0.3933*x[3]*x[4]*x[10]+0.4846*x[3]*x[5]*x[6]-0.7567*x[3]*x[5]*x[7]+0.083*x[3]*x[5]*x[8]-0.0985*x[3]*x[5]*x[9]+0.3703*x[3]*x[5]*x[10]+0.6679*x[3]*x[6]*x[7]+0.8643*x[3]*x[6]*x[8]+0.533*x[3]*x[6]*x[9]+0.1871*x[3]*x[6]*x[10]-0.1905*x[3]*x[7]*x[8]+0.9994*x[3]*x[7]*x[9]-0.7306*x[3]*x[7]*x[10]-0.2797*x[3]*x[8]*x[9]-0.7742*x[3]*x[8]*x[10]+0.2634*x[3]*x[9]*x[10]-0.6882*x[4]*x[5]*x[6]-0.1916*x[4]*x[5]*x[7]-0.6292*x[4]*x[5]*x[8]+0.3706*x[4]*x[5]*x[9]+0.2252*x[4]*x[5]*x[10]-0.5111*x[4]*x[6]*x[7]-0.7106*x[4]*x[6]*x[8]+0.436*x[4]*x[6]*x[9]+0.6397*x[4]*x[6]*x[10]-0.7626*x[4]*x[7]*x[8]-0.7465*x[4]*x[7]*x[9]-0.4273*x[4]*x[7]*x[10]+0.9735*x[4]*x[8]*x[9]-0.5091*x[4]*x[8]*x[10]-0.0217*x[4]*x[9]*x[10]-0.9406*x[5]*x[6]*x[7]-0.5301*x[5]*x[6]*x[8]-0.0925*x[5]*x[6]*x[9]-0.4232*x[5]*x[6]*x[10]+0.4301*x[5]*x[7]*x[8]-0.1282*x[5]*x[7]*x[9]+0.2232*x[5]*x[7]*x[10]+0.124*x[5]*x[8]*x[9]-0.3137*x[5]*x[8]*x[10]+0.5432*x[5]*x[9]*x[10]-0.0037*x[6]*x[7]*x[8]-0.0924*x[6]*x[7]*x[9]+0.3913*x[6]*x[7]*x[10]-0.6371*x[6]*x[8]*x[9]-0.1172*x[6]*x[8]*x[10]-0.1265*x[6]*x[9]*x[10]-0.8825*x[7]*x[8]*x[9]-0.2623*x[7]*x[8]*x[10]-0.1383*x[7]*x[9]*x[10]-0.6027*x[8]*x[9]*x[10] <= 79.525)


# ----- Objective ----- #
@objective(m, Min, x[11])

m = m 		 # model get returned when including this script. 
