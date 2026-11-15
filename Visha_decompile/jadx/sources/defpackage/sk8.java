package defpackage;

public final class sk8 extends dj {
    public int c;
    public byte[] d;

    public sk8(int i, byte[] bArr) {
        super(false);
        if (bArr.length != tk8.b(i)) {
            throw new IllegalArgumentException("invalid key size for security category");
        }
        this.c = i;
        this.d = ci.f(bArr);
    }

    public byte[] b() {
        return ci.f(this.d);
    }

    public int c() {
        return this.c;
    }
}
