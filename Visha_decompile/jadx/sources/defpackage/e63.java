package defpackage;

public final class e63 extends dj {
    public final byte[] c;
    public f63 d;

    public e63(byte[] bArr) {
        this(c(bArr), 0);
    }

    private static byte[] c(byte[] bArr) {
        if (bArr.length == 57) {
            return bArr;
        }
        throw new IllegalArgumentException("'buf' must have length 57");
    }

    public f63 b() {
        f63 f63Var;
        synchronized (this.c) {
            try {
                if (this.d == null) {
                    this.d = new f63(d63.i(this.c, 0));
                }
                f63Var = this.d;
            } catch (Throwable th) {
                throw th;
            }
        }
        return f63Var;
    }

    public byte[] getEncoded() {
        return ci.f(this.c);
    }

    public e63(byte[] bArr, int i) {
        super(true);
        byte[] bArr2 = new byte[57];
        this.c = bArr2;
        System.arraycopy(bArr, i, bArr2, 0, 57);
    }
}
