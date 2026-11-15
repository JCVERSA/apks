package defpackage;

import java.math.BigInteger;
import java.util.Random;

public abstract class qr1 {
    public static i53 a(t43 t43Var, byte[] bArr) {
        w43 w43VarJ;
        w43 w43VarL = t43Var.l(BigInteger.valueOf(bArr[bArr.length - 1] & 1));
        w43 w43VarL2 = t43Var.l(new BigInteger(1, bArr));
        if (!d(w43VarL2).equals(t43Var.m())) {
            w43VarL2 = w43VarL2.b();
        }
        if (w43VarL2.i()) {
            w43VarJ = t43Var.n().n();
        } else {
            w43 w43VarC = c(t43Var, w43VarL2.o().g().j(t43Var.n()).a(t43Var.m()).a(w43VarL2));
            if (w43VarC != null) {
                if (!d(w43VarC).equals(w43VarL)) {
                    w43VarC = w43VarC.b();
                }
                w43VarJ = w43VarL2.j(w43VarC);
            } else {
                w43VarJ = null;
            }
        }
        if (w43VarJ != null) {
            return t43Var.B(w43VarL2.t(), w43VarJ.t());
        }
        throw new IllegalArgumentException("Invalid point compression");
    }

    public static byte[] b(i53 i53Var) {
        i53 i53VarY = i53Var.y();
        w43 w43VarF = i53VarY.f();
        byte[] bArrE = w43VarF.e();
        if (!w43VarF.i()) {
            if (d(i53VarY.g().d(w43VarF)).h()) {
                int length = bArrE.length - 1;
                bArrE[length] = (byte) (bArrE[length] | 1);
            } else {
                int length2 = bArrE.length - 1;
                bArrE[length2] = (byte) (bArrE[length2] & 254);
            }
        }
        return bArrE;
    }

    public static w43 c(t43 t43Var, w43 w43Var) {
        w43 w43VarA;
        if (w43Var.i()) {
            return w43Var;
        }
        w43 w43VarL = t43Var.l(s43.a);
        Random random = new Random();
        int iF = w43Var.f();
        do {
            w43 w43VarL2 = t43Var.l(new BigInteger(iF, random));
            w43 w43VarA2 = w43Var;
            w43VarA = w43VarL;
            for (int i = 1; i <= iF - 1; i++) {
                w43 w43VarO = w43VarA2.o();
                w43VarA = w43VarA.o().a(w43VarO.j(w43VarL2));
                w43VarA2 = w43VarO.a(w43Var);
            }
            if (!w43VarA2.i()) {
                return null;
            }
        } while (w43VarA.o().a(w43VarA).i());
        return w43VarA;
    }

    public static w43 d(w43 w43Var) {
        w43 w43VarA = w43Var;
        for (int i = 1; i < w43Var.f(); i++) {
            w43VarA = w43VarA.o().a(w43Var);
        }
        return w43VarA;
    }
}
