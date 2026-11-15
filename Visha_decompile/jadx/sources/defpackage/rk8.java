package defpackage;

public final class rk8 extends dj {
    public int c;
    public byte[] d;

    public rk8(int i, byte[] bArr) {
        super(true);
        if (bArr.length != tk8.a(i)) {
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
