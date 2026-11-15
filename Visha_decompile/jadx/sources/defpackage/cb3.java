package defpackage;

public abstract class cb3 {
    public static byte[] a(ab3 ab3Var, int i) {
        byte[] bArr = new byte[i];
        if (i * 8 <= ab3Var.c()) {
            System.arraycopy(ab3Var.b(), 0, bArr, 0, i);
        } else {
            int iC = ab3Var.c() / 8;
            for (int i2 = 0; i2 < i; i2 += iC) {
                byte[] bArrB = ab3Var.b();
                int i3 = i - i2;
                if (bArrB.length <= i3) {
                    System.arraycopy(bArrB, 0, bArr, i2, bArrB.length);
                } else {
                    System.arraycopy(bArrB, 0, bArr, i2, i3);
                }
            }
        }
        return bArr;
    }
}
