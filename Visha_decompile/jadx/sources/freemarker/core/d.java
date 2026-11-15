package freemarker.core;

import defpackage.jw7;
import defpackage.zfa;
import freemarker.template.SimpleNumber;
import org.apache.commons.io.IOUtils;

public final class d extends t0 {
    public static final char[] k = {'-', '*', IOUtils.DIR_SEPARATOR_UNIX, '%'};
    public final t0 h;
    public final t0 i;
    public final int j;

    public d(t0 t0Var, t0 t0Var2, int i) {
        this.h = t0Var;
        this.i = t0Var2;
        this.j = i;
    }

    public static zfa X(Environment environment, t1 t1Var, Number number, int i, Number number2) {
        c cVarF = environment != null ? environment.f() : t1Var.y().f();
        if (i == 0) {
            return new SimpleNumber(cVarF.i(number, number2));
        }
        if (i == 1) {
            return new SimpleNumber(cVarF.h(number, number2));
        }
        if (i == 2) {
            return new SimpleNumber(cVarF.f(number, number2));
        }
        if (i == 3) {
            return new SimpleNumber(cVarF.g(number, number2));
        }
        if (t1Var instanceof t0) {
            throw new _MiscTemplateException((t0) t1Var, new Object[]{"Unknown operation: ", new Integer(i)});
        }
        throw new _MiscTemplateException(new Object[]{"Unknown operation: ", new Integer(i)});
    }

    public static char Y(int i) {
        return k[i];
    }

    @Override
    public zfa F(Environment environment) {
        return X(environment, this, this.h.R(environment), this.j, this.i.R(environment));
    }

    @Override
    public t0 J(String str, t0 t0Var, t0.a aVar) {
        return new d(this.h.I(str, t0Var, aVar), this.i.I(str, t0Var, aVar), this.j);
    }

    @Override
    public boolean T() {
        return this.g != null || (this.h.T() && this.i.T());
    }

    @Override
    public String o() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(this.h.o());
        stringBuffer.append(' ');
        stringBuffer.append(Y(this.j));
        stringBuffer.append(' ');
        stringBuffer.append(this.i.o());
        return stringBuffer.toString();
    }

    @Override
    public String r() {
        return String.valueOf(Y(this.j));
    }

    @Override
    public int s() {
        return 3;
    }

    @Override
    public jw7 t(int i) {
        if (i == 0) {
            return jw7.c;
        }
        if (i == 1) {
            return jw7.d;
        }
        if (i == 2) {
            return jw7.q;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override
    public Object u(int i) {
        if (i == 0) {
            return this.h;
        }
        if (i == 1) {
            return this.i;
        }
        if (i == 2) {
            return new Integer(this.j);
        }
        throw new IndexOutOfBoundsException();
    }
}
