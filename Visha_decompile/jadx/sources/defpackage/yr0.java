package defpackage;

import freemarker.core.Environment;
import freemarker.core.t0;

public final class yr0 extends ifa {
    public final int l = 0;
    public final int m = 1;
    public t0 n;

    public yr0(t0 t0Var, ifa ifaVar) {
        this.n = t0Var;
        j0(ifaVar);
    }

    @Override
    public void F(Environment environment) {
        if (S() != null) {
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
        if (this.n != null) {
            stringBuffer.append(' ');
            stringBuffer.append(this.n.o());
        }
        if (z) {
            stringBuffer.append('>');
            if (S() != null) {
                stringBuffer.append(S().o());
            }
        }
        return stringBuffer.toString();
    }

    @Override
    public String r() {
        return this.n != null ? "#case" : "#default";
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
            return this.n;
        }
        if (i == 1) {
            return new Integer(this.n != null ? 0 : 1);
        }
        throw new IndexOutOfBoundsException();
    }
}
