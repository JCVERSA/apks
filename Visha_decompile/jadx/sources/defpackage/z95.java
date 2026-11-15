package defpackage;

public final class z95 {
    public boolean a;
    public boolean b;
    public boolean c;
    public boolean d;
    public boolean e;
    public boolean f;
    public String g;
    public boolean h;
    public boolean i;
    public String j;
    public boolean k;
    public boolean l;
    public td9 m;

    public z95(u95 u95Var) {
        y45.j(u95Var, "json");
        this.a = u95Var.d().e();
        this.b = u95Var.d().f();
        this.c = u95Var.d().g();
        this.d = u95Var.d().m();
        this.e = u95Var.d().b();
        this.f = u95Var.d().i();
        this.g = u95Var.d().j();
        this.h = u95Var.d().d();
        this.i = u95Var.d().l();
        this.j = u95Var.d().c();
        this.k = u95Var.d().a();
        this.l = u95Var.d().k();
        u95Var.d().h();
        this.m = u95Var.a();
    }

    public final da5 a() {
        if (this.i && !y45.e(this.j, "type")) {
            throw new IllegalArgumentException("Class discriminator should not be specified when array polymorphism is specified");
        }
        if (this.f) {
            if (!y45.e(this.g, "    ")) {
                String str = this.g;
                for (int i = 0; i < str.length(); i++) {
                    char cCharAt = str.charAt(i);
                    if (cCharAt != ' ' && cCharAt != '\t' && cCharAt != '\r' && cCharAt != '\n') {
                        throw new IllegalArgumentException(("Only whitespace, tab, newline and carriage return are allowed as pretty print symbols. Had " + this.g).toString());
                    }
                }
            }
        } else if (!y45.e(this.g, "    ")) {
            throw new IllegalArgumentException("Indent should not be specified when default printing mode is used");
        }
        return new da5(this.a, this.c, this.d, this.e, this.f, this.b, this.g, this.h, this.i, this.j, this.k, this.l, null);
    }

    public final td9 b() {
        return this.m;
    }

    public final void c(boolean z) {
        this.a = z;
    }

    public final void d(boolean z) {
        this.b = z;
    }

    public final void e(boolean z) {
        this.c = z;
    }
}
