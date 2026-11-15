package defpackage;

import java.math.BigInteger;

public class vqc {
    public int a(t43 t43Var) {
        return (t43Var.r() + 7) / 8;
    }

    public int b(w43 w43Var) {
        return (w43Var.f() + 7) / 8;
    }

    public byte[] c(BigInteger bigInteger, int i) {
        byte[] byteArray = bigInteger.toByteArray();
        if (i < byteArray.length) {
            byte[] bArr = new byte[i];
            System.arraycopy(byteArray, byteArray.length - i, bArr, 0, i);
            return bArr;
        }
        if (i <= byteArray.length) {
            return byteArray;
        }
        byte[] bArr2 = new byte[i];
        System.arraycopy(byteArray, 0, bArr2, i - byteArray.length, byteArray.length);
        return bArr2;
    }
}
