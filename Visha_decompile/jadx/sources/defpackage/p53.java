package defpackage;

import java.math.BigInteger;

public abstract class p53 {
    public static int[] a(int[] iArr) {
        int i;
        int[] iArr2 = new int[3];
        if (iArr.length == 1) {
            iArr2[0] = iArr[0];
        } else {
            if (iArr.length != 3) {
                throw new IllegalArgumentException("Only Trinomials and pentanomials supported");
            }
            int i2 = iArr[0];
            int i3 = iArr[1];
            if (i2 >= i3 || i2 >= (i = iArr[2])) {
                int i4 = iArr[2];
                if (i3 < i4) {
                    iArr2[0] = i3;
                    int i5 = iArr[0];
                    if (i5 < i4) {
                        iArr2[1] = i5;
                        iArr2[2] = i4;
                    } else {
                        iArr2[1] = i4;
                        iArr2[2] = i5;
                    }
                } else {
                    iArr2[0] = i4;
                    int i6 = iArr[0];
                    if (i6 < i3) {
                        iArr2[1] = i6;
                        iArr2[2] = iArr[1];
                    } else {
                        iArr2[1] = i3;
                        iArr2[2] = i6;
                    }
                }
            } else {
                iArr2[0] = i2;
                if (i3 < i) {
                    iArr2[1] = i3;
                    iArr2[2] = i;
                } else {
                    iArr2[1] = i;
                    iArr2[2] = iArr[1];
                }
            }
        }
        return iArr2;
    }

    public static String b(i53 i53Var, h53 h53Var) {
        t43 t43VarA = h53Var.a();
        return t43VarA != null ? new rv3(ci.m(i53Var.l(false), t43VarA.m().e(), t43VarA.n().e(), h53Var.b().l(false))).toString() : new rv3(i53Var.l(false)).toString();
    }

    public static String c(l1 l1Var) {
        return f53.c(l1Var);
    }

    public static u43 d(qj8 qj8Var, h53 h53Var) {
        if (h53Var instanceof d53) {
            d53 d53Var = (d53) h53Var;
            return new g53(g(d53Var.f()), d53Var.a(), d53Var.b(), d53Var.d(), d53Var.c(), d53Var.e());
        }
        if (h53Var != null) {
            return new u43(h53Var.a(), h53Var.b(), h53Var.d(), h53Var.c(), h53Var.e());
        }
        h53 h53VarA = qj8Var.a();
        return new u43(h53VarA.a(), h53VarA.b(), h53VarA.d(), h53VarA.c(), h53VarA.e());
    }

    public static u43 e(qj8 qj8Var, oqc oqcVar) {
        u43 u43Var;
        if (oqcVar.p()) {
            l1 l1VarD = l1.D(oqcVar.n());
            qqc qqcVarF = f(l1VarD);
            if (qqcVarF == null) {
                qqcVarF = (qqc) qj8Var.c().get(l1VarD);
            }
            return new g53(l1VarD, qqcVarF);
        }
        if (oqcVar.o()) {
            h53 h53VarA = qj8Var.a();
            u43Var = new u43(h53VarA.a(), h53VarA.b(), h53VarA.d(), h53VarA.c(), h53VarA.e());
        } else {
            qqc qqcVarP = qqc.p(oqcVar.n());
            u43Var = new u43(qqcVarP.m(), qqcVarP.n(), qqcVarP.q(), qqcVarP.o(), qqcVarP.r());
        }
        return u43Var;
    }

    public static qqc f(l1 l1Var) {
        qqc qqcVarJ = oo1.j(l1Var);
        return qqcVarJ == null ? f53.b(l1Var) : qqcVarJ;
    }

    public static l1 g(String str) {
        if (str == null || str.length() < 1) {
            return null;
        }
        int iIndexOf = str.indexOf(32);
        if (iIndexOf > 0) {
            str = str.substring(iIndexOf + 1);
        }
        l1 l1VarH = h(str);
        return l1VarH != null ? l1VarH : f53.d(str);
    }

    public static l1 h(String str) {
        char cCharAt = str.charAt(0);
        if (cCharAt < '0' || cCharAt > '2') {
            return null;
        }
        try {
            return new l1(str);
        } catch (Exception unused) {
            return null;
        }
    }

    public static int i(qj8 qj8Var, BigInteger bigInteger, BigInteger bigInteger2) {
        h53 h53VarA;
        if (bigInteger != null) {
            return bigInteger.bitLength();
        }
        if (qj8Var != null && (h53VarA = qj8Var.a()) != null) {
            return h53VarA.d().bitLength();
        }
        return bigInteger2.bitLength();
    }

    public static String j(String str, BigInteger bigInteger, h53 h53Var) {
        StringBuffer stringBuffer = new StringBuffer();
        String strD = u0a.d();
        i53 i53VarY = new fx3().b(h53Var.b(), bigInteger).y();
        stringBuffer.append(str);
        stringBuffer.append(" Private Key [");
        stringBuffer.append(b(i53VarY, h53Var));
        stringBuffer.append("]");
        stringBuffer.append(strD);
        stringBuffer.append("            X: ");
        stringBuffer.append(i53VarY.f().t().toString(16));
        stringBuffer.append(strD);
        stringBuffer.append("            Y: ");
        stringBuffer.append(i53VarY.g().t().toString(16));
        stringBuffer.append(strD);
        return stringBuffer.toString();
    }

    public static String k(String str, i53 i53Var, h53 h53Var) {
        StringBuffer stringBuffer = new StringBuffer();
        String strD = u0a.d();
        stringBuffer.append(str);
        stringBuffer.append(" Public Key [");
        stringBuffer.append(b(i53Var, h53Var));
        stringBuffer.append("]");
        stringBuffer.append(strD);
        stringBuffer.append("            X: ");
        stringBuffer.append(i53Var.f().t().toString(16));
        stringBuffer.append(strD);
        stringBuffer.append("            Y: ");
        stringBuffer.append(i53Var.g().t().toString(16));
        stringBuffer.append(strD);
        return stringBuffer.toString();
    }
}
