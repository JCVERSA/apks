package freemarker.core;

import defpackage.d0d;
import defpackage.ifa;
import defpackage.jw7;

public class p0 extends ifa {
    public final String l;
    public final t0 m;
    public t0 n;

    public p0(String str, t0 t0Var, t0 t0Var2) {
        this.l = str;
        this.m = t0Var;
        this.n = t0Var2;
    }

    @Override
    public void F(Environment environment) {
        if (S() != null) {
            environment.X1(S());
        }
    }

    @Override
    public String J(boolean z) {
        StringBuffer stringBuffer = new StringBuffer();
        if (z) {
            stringBuffer.append('<');
        }
        stringBuffer.append(r());
        stringBuffer.append(' ');
        stringBuffer.append(d0d.e(this.l));
        stringBuffer.append(" as ");
        stringBuffer.append(this.m.o());
        if (z) {
            stringBuffer.append('>');
            if (S() != null) {
                stringBuffer.append(S().o());
            }
            stringBuffer.append("</");
            stringBuffer.append(r());
            stringBuffer.append('>');
        }
        return stringBuffer.toString();
    }

    @Override
    public boolean b0() {
        return false;
    }

    public t0 l0(t0 t0Var) {
        return this.n.I(this.l, t0Var, new t0.a());
    }

    public void m0(ifa ifaVar) {
        j0(ifaVar);
        this.n = null;
    }

    @Override
    public String r() {
        return "#escape";
    }

    @Override
    public int s() {
        return 2;
    }

    @Override
    public jw7 t(int i) {
        if (i == 0) {
            return jw7.r;
        }
        if (i == 1) {
            return jw7.s;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override
    public Object u(int i) {
        if (i == 0) {
            return this.l;
        }
        if (i == 1) {
            return this.m;
        }
        throw new IndexOutOfBoundsException();
    }
}
