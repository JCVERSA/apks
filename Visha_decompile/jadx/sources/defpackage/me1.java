package defpackage;

import freemarker.core.BugException;
import freemarker.core.Environment;
import freemarker.core.t0;

public final class me1 extends ifa {
    public final t0 l;
    public final int m;
    public boolean n;

    public me1(t0 t0Var, ifa ifaVar, int i) {
        this.l = t0Var;
        j0(ifaVar);
        this.m = i;
    }

    @Override
    public void F(Environment environment) {
        t0 t0Var = this.l;
        if ((t0Var == null || t0Var.O(environment)) && S() != null) {
            environment.a2(S());
        }
    }

    @Override
    public String J(boolean z) {
        StringBuffer stringBuffer = new StringBuffer();
        if (z) {
            stringBuffer.append('<');
        }
        stringBuffer.append(r());
        if (this.l != null) {
            stringBuffer.append(' ');
            stringBuffer.append(this.l.o());
        }
        if (z) {
            stringBuffer.append(">");
            if (S() != null) {
                stringBuffer.append(S().o());
            }
            if (this.n) {
                stringBuffer.append("</#if>");
            }
        }
        return stringBuffer.toString();
    }

    @Override
    public String r() {
        int i = this.m;
        if (i == 1) {
            return "#else";
        }
        if (i == 0) {
            return "#if";
        }
        if (i == 2) {
            return "#elseif";
        }
        throw new BugException("Unknown type");
    }

    @Override
    public int s() {
        return 2;
    }

    @Override
    public jw7 t(int i) {
        if (i == 0) {
            return jw7.o;
        }
        if (i == 1) {
            return jw7.q;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override
    public Object u(int i) {
        if (i == 0) {
            return this.l;
        }
        if (i == 1) {
            return new Integer(this.m);
        }
        throw new IndexOutOfBoundsException();
    }
}
