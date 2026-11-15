package defpackage;

public final class f63 extends dj {
    public final d63.e c;

    public f63(d63.e eVar) {
        super(false);
        if (eVar == null) {
            throw new NullPointerException("'publicPoint' cannot be null");
        }
        this.c = eVar;
    }

    public static d63.e c(byte[] bArr, int i) {
        d63.e eVarX = d63.x(bArr, i);
        if (eVarX != null) {
            return eVarX;
        }
        throw new IllegalArgumentException("invalid public key");
    }

    private static byte[] d(byte[] bArr) {
        if (bArr.length == 57) {
            return bArr;
        }
        throw new IllegalArgumentException("'buf' must have length 57");
    }

    public void b(byte[] bArr, int i) {
        d63.g(this.c, bArr, i);
    }

    public byte[] getEncoded() {
        byte[] bArr = new byte[57];
        b(bArr, 0);
        return bArr;
    }

    public f63(byte[] bArr) {
        this(d(bArr), 0);
    }

    public f63(byte[] bArr, int i) {
        super(false);
        this.c = c(bArr, i);
    }
}
