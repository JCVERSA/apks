package defpackage;

public final class bqc extends dj {
    public final byte[] c;

    public bqc(byte[] bArr) {
        this(c(bArr), 0);
    }

    private static byte[] c(byte[] bArr) {
        if (bArr.length == 56) {
            return bArr;
        }
        throw new IllegalArgumentException("'buf' must have length 56");
    }

    public void b(byte[] bArr, int i) {
        System.arraycopy(this.c, 0, bArr, i, 56);
    }

    public byte[] getEncoded() {
        return ci.f(this.c);
    }

    public bqc(byte[] bArr, int i) {
        super(false);
        byte[] bArr2 = new byte[56];
        this.c = bArr2;
        System.arraycopy(bArr, i, bArr2, 0, 56);
    }
}
