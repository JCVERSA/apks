package defpackage;

public final class p1j {
    public int a;
    public int b;
    public int c;
    public byte[] d;
    public int e;
    public int f;

    public p1j() {
        this.a = -1;
        this.b = -1;
        this.c = -1;
        this.e = -1;
        this.f = -1;
    }

    public final p1j a(int i) {
        this.f = i;
        return this;
    }

    public final p1j b(int i) {
        this.b = i;
        return this;
    }

    public final p1j c(int i) {
        this.a = i;
        return this;
    }

    public final p1j d(int i) {
        this.c = i;
        return this;
    }

    public final p1j e(byte[] bArr) {
        this.d = bArr;
        return this;
    }

    public final p1j f(int i) {
        this.e = i;
        return this;
    }

    public final h6j g() {
        return new h6j(this.a, this.b, this.c, this.d, this.e, this.f, null);
    }

    public p1j(h6j h6jVar, d4j d4jVar) {
        this.a = h6jVar.a;
        this.b = h6jVar.b;
        this.c = h6jVar.c;
        this.d = h6jVar.d;
        this.e = h6jVar.e;
        this.f = h6jVar.f;
    }
}
