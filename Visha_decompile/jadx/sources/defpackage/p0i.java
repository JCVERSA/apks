package defpackage;

public final class p0i extends q1i {
    public String a;
    public String b;

    @Override
    public final q1i a(String str) {
        this.b = str;
        return this;
    }

    @Override
    public final q1i b(String str) {
        this.a = str;
        return this;
    }

    @Override
    public final r1i c() {
        return new r0i(this.a, this.b, null);
    }
}
