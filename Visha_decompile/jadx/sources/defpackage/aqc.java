package defpackage;

public final class aqc extends dj {
    public final byte[] c;

    public aqc(byte[] bArr) {
        this(c(bArr), 0);
    }

    private static byte[] c(byte[] bArr) {
        if (bArr.length == 56) {
            return bArr;
        }
        throw new IllegalArgumentException("'buf' must have length 56");
    }

    public bqc b() {
        byte[] bArr = new byte[56];
        ypc.a(this.c, 0, bArr, 0);
        return new bqc(bArr, 0);
    }

    public byte[] getEncoded() {
        return ci.f(this.c);
    }

    public aqc(byte[] bArr, int i) {
        super(true);
        byte[] bArr2 = new byte[56];
        this.c = bArr2;
        System.arraycopy(bArr, i, bArr2, 0, 56);
    }
}
