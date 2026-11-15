package defpackage;

public final class wpc extends dj {
    public final byte[] c;

    public wpc(byte[] bArr) {
        this(c(bArr), 0);
    }

    private static byte[] c(byte[] bArr) {
        if (bArr.length == 32) {
            return bArr;
        }
        throw new IllegalArgumentException("'buf' must have length 32");
    }

    public xpc b() {
        byte[] bArr = new byte[32];
        upc.a(this.c, 0, bArr, 0);
        return new xpc(bArr, 0);
    }

    public byte[] getEncoded() {
        return ci.f(this.c);
    }

    public wpc(byte[] bArr, int i) {
        super(true);
        byte[] bArr2 = new byte[32];
        this.c = bArr2;
        System.arraycopy(bArr, i, bArr2, 0, 32);
    }
}
