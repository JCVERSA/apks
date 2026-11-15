package defpackage;

import freemarker.core.Environment;
import freemarker.core.e;
import freemarker.core.t0;

public final class bj extends ifa {
    public int l;
    public t0 m;

    public bj(int i) {
        this.l = i;
        k0(1);
    }

    @Override
    public void F(Environment environment) {
        int iW = W();
        for (int i = 0; i < iW; i++) {
            environment.X1((e) V(i));
        }
    }

    @Override
    public String J(boolean z) {
        StringBuffer stringBuffer = new StringBuffer();
        if (z) {
            stringBuffer.append('<');
        }
        stringBuffer.append(e.l0(this.l));
        if (z) {
            stringBuffer.append(' ');
            int iW = W();
            for (int i = 0; i < iW; i++) {
                if (i != 0) {
                    stringBuffer.append(", ");
                }
                stringBuffer.append(((e) V(i)).o());
            }
        } else {
            stringBuffer.append("-container");
        }
        if (this.m != null) {
            stringBuffer.append(" in ");
            stringBuffer.append(this.m.o());
        }
        if (z) {
            stringBuffer.append(">");
        }
        return stringBuffer.toString();
    }

    @Override
    public ifa e0(boolean z) {
        super.e0(z);
        return this;
    }

    public void l0(e eVar) {
        H(eVar);
    }

    public void m0(t0 t0Var) {
        this.m = t0Var;
        int iW = W();
        for (int i = 0; i < iW; i++) {
            ((e) V(i)).n0(t0Var);
        }
    }

    @Override
    public String r() {
        return e.l0(this.l);
    }

    @Override
    public int s() {
        return 2;
    }

    @Override
    public jw7 t(int i) {
        if (i == 0) {
            return jw7.k;
        }
        if (i != 1) {
            return null;
        }
        return jw7.l;
    }

    @Override
    public Object u(int i) {
        if (i == 0) {
            return new Integer(this.l);
        }
        if (i != 1) {
            return null;
        }
        return this.m;
    }
}
