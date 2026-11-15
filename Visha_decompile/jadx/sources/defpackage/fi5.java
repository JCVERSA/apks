package defpackage;

import org.bouncycastle.pqc.crypto.lms.LMOtsParameters;
import org.bouncycastle.pqc.crypto.lms.LMSigParameters;

public abstract class fi5 {
    public static ji5 a(LMSigParameters lMSigParameters, LMOtsParameters lMOtsParameters, int i, byte[] bArr, byte[] bArr2) {
        if (bArr2 != null && bArr2.length >= lMSigParameters.d()) {
            return new ji5(lMSigParameters, lMOtsParameters, i, bArr, 1 << lMSigParameters.c(), bArr2);
        }
        throw new IllegalArgumentException("root seed is less than " + lMSigParameters.d());
    }

    public static li5 b(gi5 gi5Var) {
        return new li5(gi5Var.i().d(), mi5.c(gi5Var.i(), gi5Var.j(), gi5Var.d()), gi5Var.k(), gi5Var.e());
    }

    public static li5 c(ji5 ji5Var, byte[] bArr) {
        gi5 gi5VarF = ji5Var.f();
        gi5VarF.update(bArr, 0, bArr.length);
        return b(gi5VarF);
    }
}
