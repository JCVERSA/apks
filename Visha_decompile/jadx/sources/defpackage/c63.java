package defpackage;

public final class c63 extends dj {
    public final a63.g c;

    public c63(a63.g gVar) {
        super(false);
        if (gVar == null) {
            throw new NullPointerException("'publicPoint' cannot be null");
        }
        this.c = gVar;
    }

    public static a63.g c(byte[] bArr, int i) {
        a63.g gVarY = a63.y(bArr, i);
        if (gVarY != null) {
            return gVarY;
        }
        throw new IllegalArgumentException("invalid public key");
    }

    private static byte[] d(byte[] bArr) {
        if (bArr.length == 32) {
            return bArr;
        }
        throw new IllegalArgumentException("'buf' must have length 32");
    }

    public void b(byte[] bArr, int i) {
        a63.g(this.c, bArr, i);
    }

    public byte[] getEncoded() {
        byte[] bArr = new byte[32];
        b(bArr, 0);
        return bArr;
    }

    public c63(byte[] bArr) {
        this(d(bArr), 0);
    }

    public c63(byte[] bArr, int i) {
        super(false);
        this.c = c(bArr, i);
    }
}
