package freemarker.core;

import defpackage.ifa;
import defpackage.jw7;
import defpackage.yr0;

public final class s1 extends ifa {
    public yr0 l;
    public final t0 m;

    public s1(t0 t0Var) {
        this.m = t0Var;
        k0(4);
    }

    @Override
    public void F(Environment environment) {
        ifa ifaVar;
        boolean zE;
        int iW = W();
        boolean z = false;
        for (int i = 0; i < iW; i++) {
            try {
                yr0 yr0Var = (yr0) V(i);
                if (z) {
                    zE = true;
                } else {
                    t0 t0Var = yr0Var.n;
                    zE = t0Var != null ? q0.e(this.m, 1, "case==", t0Var, t0Var, environment) : false;
                }
                if (zE) {
                    environment.a2(yr0Var);
                    z = true;
                }
            } catch (BreakInstruction.Break unused) {
                return;
            }
        }
        if (z || (ifaVar = this.l) == null) {
            return;
        }
        environment.a2(ifaVar);
    }

    @Override
    public String J(boolean z) {
        StringBuffer stringBuffer = new StringBuffer();
        if (z) {
            stringBuffer.append('<');
        }
        stringBuffer.append(r());
        stringBuffer.append(' ');
        stringBuffer.append(this.m.o());
        if (z) {
            stringBuffer.append('>');
            int iW = W();
            for (int i = 0; i < iW; i++) {
                stringBuffer.append(((yr0) V(i)).o());
            }
            stringBuffer.append("</");
            stringBuffer.append(r());
            stringBuffer.append('>');
        }
        return stringBuffer.toString();
    }

    public void l0(yr0 yr0Var) {
        if (yr0Var.n == null) {
            this.l = yr0Var;
        }
        H(yr0Var);
    }

    @Override
    public String r() {
        return "#switch";
    }

    @Override
    public int s() {
        return 1;
    }

    @Override
    public jw7 t(int i) {
        if (i == 0) {
            return jw7.p;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override
    public Object u(int i) {
        if (i == 0) {
            return this.m;
        }
        throw new IndexOutOfBoundsException();
    }
}
