package defpackage;

public final class xpc extends dj {
    public final byte[] c;

    public xpc(byte[] bArr) {
        this(c(bArr), 0);
    }

    private static byte[] c(byte[] bArr) {
        if (bArr.length == 32) {
            return bArr;
        }
        throw new IllegalArgumentException("'buf' must have length 32");
    }

    public void b(byte[] bArr, int i) {
        System.arraycopy(this.c, 0, bArr, i, 32);
    }

    public byte[] getEncoded() {
        return ci.f(this.c);
    }

    public xpc(byte[] bArr, int i) {
        super(false);
        byte[] bArr2 = new byte[32];
        this.c = bArr2;
        System.arraycopy(bArr, i, bArr2, 0, 32);
    }
}
