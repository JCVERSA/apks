package defpackage;

public final class cg5 {
    public final sb2 a;
    public final int b;

    public cg5(l1 l1Var, int i) {
        if (l1Var == null) {
            throw new NullPointerException("digest == null");
        }
        this.a = ub2.a(l1Var);
        this.b = i;
    }

    public byte[] a(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        int i = this.b;
        if (length != i) {
            throw new IllegalArgumentException("wrong key length");
        }
        if (bArr2.length == i) {
            return d(0, bArr, bArr2);
        }
        throw new IllegalArgumentException("wrong in length");
    }

    public byte[] b(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        int i = this.b;
        if (length != i) {
            throw new IllegalArgumentException("wrong key length");
        }
        if (bArr2.length == i * 2) {
            return d(1, bArr, bArr2);
        }
        throw new IllegalArgumentException("wrong in length");
    }

    public byte[] c(byte[] bArr, byte[] bArr2) {
        if (bArr.length != this.b) {
            throw new IllegalArgumentException("wrong key length");
        }
        if (bArr2.length == 32) {
            return d(3, bArr, bArr2);
        }
        throw new IllegalArgumentException("wrong address length");
    }

    public final byte[] d(int i, byte[] bArr, byte[] bArr2) {
        byte[] bArrQ = nrc.q(i, this.b);
        this.a.update(bArrQ, 0, bArrQ.length);
        this.a.update(bArr, 0, bArr.length);
        this.a.update(bArr2, 0, bArr2.length);
        int i2 = this.b;
        byte[] bArr3 = new byte[i2];
        sb2 sb2Var = this.a;
        if (sb2Var instanceof csc) {
            ((csc) sb2Var).f(bArr3, 0, i2);
        } else {
            sb2Var.a(bArr3, 0);
        }
        return bArr3;
    }
}
