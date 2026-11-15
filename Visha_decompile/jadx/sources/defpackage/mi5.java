package defpackage;

import org.bouncycastle.pqc.crypto.lms.LMOtsParameters;

public abstract class mi5 {
    public static int a(byte[] bArr, int i, LMOtsParameters lMOtsParameters) {
        int iH = (1 << lMOtsParameters.h()) - 1;
        int iB = 0;
        for (int i2 = 0; i2 < (i * 8) / lMOtsParameters.h(); i2++) {
            iB = (iB + iH) - b(bArr, i2, lMOtsParameters.h());
        }
        return iB << lMOtsParameters.c();
    }

    public static int b(byte[] bArr, int i, int i2) {
        int i3 = (i * i2) / 8;
        return (bArr[i3] >>> (((~i) & ((8 / i2) - 1)) * i2)) & ((1 << i2) - 1);
    }

    public static ei5 c(di5 di5Var, byte[] bArr, byte[] bArr2) {
        LMOtsParameters lMOtsParametersC = di5Var.c();
        int iD = lMOtsParametersC.d();
        int iE = lMOtsParametersC.e();
        int iH = lMOtsParametersC.h();
        byte[] bArr3 = new byte[iE * iD];
        sb2 sb2VarC = tb2.c(lMOtsParametersC);
        ia9 ia9VarA = di5Var.a();
        int iA = a(bArr, iD, lMOtsParametersC);
        bArr[iD] = (byte) ((iA >>> 8) & 255);
        bArr[iD + 1] = (byte) iA;
        int i = iD + 23;
        byte[] bArrB = zc1.f().d(di5Var.b()).i(di5Var.d()).g(0, i).b();
        ia9VarA.d(0);
        int i2 = 0;
        while (i2 < iE) {
            cv7.n((short) i2, bArrB, 20);
            int i3 = 23;
            ia9VarA.b(bArrB, i2 < iE + (-1), 23);
            int iB = b(bArr, i2, iH);
            for (int i4 = 0; i4 < iB; i4++) {
                bArrB[22] = (byte) i4;
                sb2VarC.update(bArrB, 0, i);
                i3 = 23;
                sb2VarC.a(bArrB, 23);
            }
            System.arraycopy(bArrB, i3, bArr3, iD * i2, iD);
            i2++;
        }
        return new ei5(lMOtsParametersC, bArr2, bArr3);
    }

    public static byte[] d(LMOtsParameters lMOtsParameters, byte[] bArr, int i, byte[] bArr2) {
        sb2 sb2VarC = tb2.c(lMOtsParameters);
        byte[] bArrB = zc1.f().d(bArr).i(i).h(-32640).g(0, 22).b();
        sb2VarC.update(bArrB, 0, bArrB.length);
        sb2 sb2VarC2 = tb2.c(lMOtsParameters);
        byte[] bArrB2 = zc1.f().d(bArr).i(i).g(0, sb2VarC2.g() + 23).b();
        ia9 ia9Var = new ia9(bArr, bArr2, tb2.c(lMOtsParameters));
        ia9Var.e(i);
        ia9Var.d(0);
        int iE = lMOtsParameters.e();
        int iD = lMOtsParameters.d();
        int iH = (1 << lMOtsParameters.h()) - 1;
        int i2 = 0;
        while (i2 < iE) {
            ia9Var.b(bArrB2, i2 < iE + (-1), 23);
            cv7.n((short) i2, bArrB2, 20);
            for (int i3 = 0; i3 < iH; i3++) {
                bArrB2[22] = (byte) i3;
                sb2VarC2.update(bArrB2, 0, bArrB2.length);
                sb2VarC2.a(bArrB2, 23);
            }
            sb2VarC.update(bArrB2, 23, iD);
            i2++;
        }
        byte[] bArr3 = new byte[sb2VarC.g()];
        sb2VarC.a(bArr3, 0);
        return bArr3;
    }
}
