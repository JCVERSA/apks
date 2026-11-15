package freemarker.core;

import defpackage.d0d;
import defpackage.jw7;
import defpackage.zfa;

public final class x0 extends t0 {
    public final String h;

    public x0(String str) {
        this.h = str;
    }

    @Override
    public zfa F(Environment environment) throws _MiscTemplateException {
        try {
            return environment.m1(this.h);
        } catch (NullPointerException e) {
            if (environment == null) {
                throw new _MiscTemplateException(new Object[]{"Variables are not available (certainly you are in a parse-time executed directive). The name of the variable you tried to read: ", this.h});
            }
            throw e;
        }
    }

    @Override
    public t0 J(String str, t0 t0Var, t0.a aVar) {
        if (!this.h.equals(str)) {
            return new x0(this.h);
        }
        if (!aVar.a) {
            aVar.a = true;
            return t0Var;
        }
        t0 t0VarI = t0Var.I(null, null, aVar);
        t0VarI.l(t0Var);
        return t0VarI;
    }

    @Override
    public boolean T() {
        return false;
    }

    public String X() {
        return this.h;
    }

    @Override
    public String o() {
        return d0d.e(this.h);
    }

    @Override
    public String r() {
        return o();
    }

    @Override
    public int s() {
        return 0;
    }

    @Override
    public jw7 t(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override
    public Object u(int i) {
        throw new IndexOutOfBoundsException();
    }
}
