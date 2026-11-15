package defpackage;

import freemarker.core.Environment;
import freemarker.core.t0;

public final class qx4 extends ifa {
    public qx4(me1 me1Var) {
        k0(1);
        l0(me1Var);
    }

    @Override
    public void F(Environment environment) {
        int iW = W();
        for (int i = 0; i < iW; i++) {
            me1 me1Var = (me1) V(i);
            t0 t0Var = me1Var.l;
            environment.K1(me1Var);
            if (t0Var == null || t0Var.O(environment)) {
                if (me1Var.S() != null) {
                    environment.a2(me1Var.S());
                    return;
                }
                return;
            }
        }
    }

    @Override
    public String J(boolean z) {
        if (!z) {
            return r();
        }
        StringBuffer stringBuffer = new StringBuffer();
        int iW = W();
        for (int i = 0; i < iW; i++) {
            stringBuffer.append(((me1) V(i)).J(z));
        }
        stringBuffer.append("</#if>");
        return stringBuffer.toString();
    }

    @Override
    public boolean b0() {
        return false;
    }

    @Override
    public ifa e0(boolean z) {
        if (W() != 1) {
            return super.e0(z);
        }
        me1 me1Var = (me1) V(0);
        me1Var.n = true;
        me1Var.A(y(), me1Var, this);
        return me1Var.e0(z);
    }

    public void l0(me1 me1Var) {
        H(me1Var);
    }

    @Override
    public String r() {
        return "#if-#elseif-#else-container";
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
