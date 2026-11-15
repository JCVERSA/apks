package freemarker.core;

import defpackage.jw7;
import freemarker.template.Template;

public abstract class t1 {
    public Template b;
    public int c;
    public int d;
    public int e;
    public int f;

    public final void A(Template template, t1 t1Var, t1 t1Var2) {
        z(template, t1Var.c, t1Var.d, t1Var2.e, t1Var2.f);
    }

    public final void B(Template template, t1 t1Var, Token token) {
        z(template, t1Var.c, t1Var.d, token.endColumn, token.endLine);
    }

    public final void C(Template template, Token token, t1 t1Var) {
        z(template, token.beginColumn, token.beginLine, t1Var.e, t1Var.f);
    }

    public final void E(Template template, Token token, Token token2) {
        z(template, token.beginColumn, token.beginLine, token2.endColumn, token2.endLine);
    }

    public t1 l(t1 t1Var) {
        this.b = t1Var.b;
        this.c = t1Var.c;
        this.d = t1Var.d;
        this.e = t1Var.e;
        this.f = t1Var.f;
        return this;
    }

    public final int m() {
        return this.c;
    }

    public final int n() {
        return this.d;
    }

    public abstract String o();

    public final int p() {
        return this.e;
    }

    public final int q() {
        return this.f;
    }

    public abstract String r();

    public abstract int s();

    public abstract jw7 t(int i);

    public String toString() {
        String strV;
        try {
            strV = v();
        } catch (Exception unused) {
            strV = null;
        }
        return strV != null ? strV : o();
    }

    public abstract Object u(int i);

    public final String v() {
        Template template = this.b;
        String strD0 = template != null ? template.D0(this.c, this.d, this.e, this.f) : null;
        return strD0 != null ? strD0 : o();
    }

    public String w() {
        return f1.f(this.b, this.d, this.c);
    }

    public String x() {
        return w();
    }

    public Template y() {
        return this.b;
    }

    public void z(Template template, int i, int i2, int i3, int i4) {
        this.b = template;
        this.c = i;
        this.d = i2;
        this.e = i3;
        this.f = i4;
    }
}
