package defpackage;

public class fl4 implements ky8 {
    public byte[] a;
    public byte[] b;
    public long c;
    public ab3 d;
    public kx5 e;
    public int f;

    public fl4(kx5 kx5Var, int i, ab3 ab3Var, byte[] bArr, byte[] bArr2) {
        if (i > amb.b(kx5Var)) {
            throw new IllegalArgumentException("Requested security strength is not supported by the derivation function");
        }
        if (ab3Var.c() < i) {
            throw new IllegalArgumentException("Not enough entropy for security strength required");
        }
        this.f = i;
        this.d = ab3Var;
        this.e = kx5Var;
        byte[] bArrL = ci.l(c(), bArr2, bArr);
        byte[] bArr3 = new byte[kx5Var.d()];
        this.a = bArr3;
        byte[] bArr4 = new byte[bArr3.length];
        this.b = bArr4;
        ci.s(bArr4, (byte) 1);
        d(bArrL);
        this.c = 1L;
    }

    @Override
    public int a(byte[] bArr, byte[] bArr2, boolean z) {
        int length = bArr.length * 8;
        if (length > 262144) {
            throw new IllegalArgumentException("Number of bits per request limited to 262144");
        }
        if (this.c > 140737488355328L) {
            return -1;
        }
        if (z) {
            b(bArr2);
            bArr2 = null;
        }
        if (bArr2 != null) {
            d(bArr2);
        }
        int length2 = bArr.length;
        byte[] bArr3 = new byte[length2];
        int length3 = bArr.length / this.b.length;
        this.e.e(new sf5(this.a));
        for (int i = 0; i < length3; i++) {
            kx5 kx5Var = this.e;
            byte[] bArr4 = this.b;
            kx5Var.update(bArr4, 0, bArr4.length);
            this.e.a(this.b, 0);
            byte[] bArr5 = this.b;
            System.arraycopy(bArr5, 0, bArr3, bArr5.length * i, bArr5.length);
        }
        byte[] bArr6 = this.b;
        if (bArr6.length * length3 < length2) {
            this.e.update(bArr6, 0, bArr6.length);
            this.e.a(this.b, 0);
            byte[] bArr7 = this.b;
            System.arraycopy(bArr7, 0, bArr3, bArr7.length * length3, length2 - (length3 * bArr7.length));
        }
        d(bArr2);
        this.c++;
        System.arraycopy(bArr3, 0, bArr, 0, bArr.length);
        return length;
    }

    @Override
    public void b(byte[] bArr) {
        d(ci.k(c(), bArr));
        this.c = 1L;
    }

    public final byte[] c() {
        byte[] bArrB = this.d.b();
        if (bArrB.length >= (this.f + 7) / 8) {
            return bArrB;
        }
        throw new IllegalStateException("Insufficient entropy provided by entropy source");
    }

    public final void d(byte[] bArr) {
        e(bArr, (byte) 0);
        if (bArr != null) {
            e(bArr, (byte) 1);
        }
    }

    public final void e(byte[] bArr, byte b) {
        this.e.e(new sf5(this.a));
        kx5 kx5Var = this.e;
        byte[] bArr2 = this.b;
        kx5Var.update(bArr2, 0, bArr2.length);
        this.e.b(b);
        if (bArr != null) {
            this.e.update(bArr, 0, bArr.length);
        }
        this.e.a(this.a, 0);
        this.e.e(new sf5(this.a));
        kx5 kx5Var2 = this.e;
        byte[] bArr3 = this.b;
        kx5Var2.update(bArr3, 0, bArr3.length);
        this.e.a(this.b, 0);
    }
}
