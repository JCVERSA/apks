package defpackage;

public final class b63 extends dj {
    public final byte[] c;
    public c63 d;

    public b63(byte[] bArr) {
        this(c(bArr), 0);
    }

    public static byte[] c(byte[] bArr) {
        if (bArr.length == 32) {
            return bArr;
        }
        throw new IllegalArgumentException("'buf' must have length 32");
    }

    public c63 b() {
        c63 c63Var;
        synchronized (this.c) {
            try {
                if (this.d == null) {
                    this.d = new c63(a63.i(this.c, 0));
                }
                c63Var = this.d;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c63Var;
    }

    public byte[] getEncoded() {
        return ci.f(this.c);
    }

    public b63(byte[] bArr, int i) {
        super(true);
        byte[] bArr2 = new byte[32];
        this.c = bArr2;
        System.arraycopy(bArr, i, bArr2, 0, 32);
    }
}
