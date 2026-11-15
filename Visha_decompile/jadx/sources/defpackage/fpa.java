package defpackage;

import com.yandex.div2.Div;

public abstract class fpa {
    public final zl2 a;
    public final int b;
    public final int c;
    public final Div d;

    public fpa(zl2 zl2Var, int i) {
        y45.j(zl2Var, "item");
        this.a = zl2Var;
        this.b = i;
        this.c = zl2Var.c().l();
        this.d = zl2Var.c();
    }

    public final int a() {
        return this.b;
    }

    public final Div b() {
        return this.d;
    }

    public final int c() {
        return this.c;
    }

    public final zl2 d() {
        return this.a;
    }

    public final boolean e(fpa fpaVar) {
        y45.j(fpaVar, "other");
        return this.c == fpaVar.c && y45.e(eu2.g(this.d), eu2.g(fpaVar.d));
    }
}
