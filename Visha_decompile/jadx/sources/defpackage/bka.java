package defpackage;

public final class bka {
    public boolean a = true;
    public boolean b = true;

    public final boolean a() {
        return this.b;
    }

    public final boolean b() {
        return this.a;
    }

    public final void c() {
        this.b = this.a;
    }

    public final void d() {
        this.a = true;
        this.b = true;
    }

    public final void e() {
        this.a = !this.a;
        this.b = true;
    }

    public final boolean f() {
        if (!this.a) {
            return false;
        }
        this.a = false;
        this.b = true;
        return true;
    }
}
