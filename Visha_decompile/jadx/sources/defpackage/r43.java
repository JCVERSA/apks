package defpackage;

import java.math.BigInteger;

public abstract class r43 {
    public static i53 a(i53 i53Var) {
        if (i53Var.w()) {
            return i53Var;
        }
        throw new IllegalStateException("Invalid result");
    }

    public static i53 b(t43 t43Var, i53 i53Var) {
        if (t43Var.k(i53Var.i())) {
            return t43Var.v(i53Var);
        }
        throw new IllegalArgumentException("Point must be on the same curve");
    }

    public static boolean c(t43 t43Var) {
        return d(t43Var.q());
    }

    public static boolean d(vv3 vv3Var) {
        return vv3Var.a() > 1 && vv3Var.b().equals(s43.c) && (vv3Var instanceof sc8);
    }

    public static boolean e(t43 t43Var) {
        return f(t43Var.q());
    }

    public static boolean f(vv3 vv3Var) {
        return vv3Var.a() == 1;
    }

    public static void g(w43[] w43VarArr, int i, int i2, w43 w43Var) {
        w43[] w43VarArr2 = new w43[i2];
        int i3 = 0;
        w43VarArr2[0] = w43VarArr[i];
        while (true) {
            int i4 = i3 + 1;
            if (i4 >= i2) {
                break;
            }
            w43VarArr2[i4] = w43VarArr2[i3].j(w43VarArr[i + i4]);
            i3 = i4;
        }
        if (w43Var != null) {
            w43VarArr2[i3] = w43VarArr2[i3].j(w43Var);
        }
        w43 w43VarG = w43VarArr2[i3].g();
        while (i3 > 0) {
            int i5 = i3 - 1;
            int i6 = i3 + i;
            w43 w43Var2 = w43VarArr[i6];
            w43VarArr[i6] = w43VarArr2[i5].j(w43VarG);
            w43VarG = w43VarG.j(w43Var2);
            i3 = i5;
        }
        w43VarArr[i] = w43VarG;
    }

    public static i53 h(i53 i53Var, BigInteger bigInteger) {
        BigInteger bigIntegerAbs = bigInteger.abs();
        i53 i53VarS = i53Var.i().s();
        int iBitLength = bigIntegerAbs.bitLength();
        if (iBitLength > 0) {
            if (bigIntegerAbs.testBit(0)) {
                i53VarS = i53Var;
            }
            for (int i = 1; i < iBitLength; i++) {
                i53Var = i53Var.E();
                if (bigIntegerAbs.testBit(i)) {
                    i53VarS = i53VarS.a(i53Var);
                }
            }
        }
        return bigInteger.signum() < 0 ? i53VarS.x() : i53VarS;
    }
}
