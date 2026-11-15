package defpackage;

public final class e0i extends s0i {
    public String a;
    public String b;

    @Override
    public final s0i a(String str) {
        this.b = str;
        return this;
    }

    @Override
    public final s0i b(String str) {
        this.a = str;
        return this;
    }

    @Override
    public final t0i c() {
        return new i0i(this.a, this.b, null);
    }
}
