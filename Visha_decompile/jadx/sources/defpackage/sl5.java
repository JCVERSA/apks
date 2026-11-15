package defpackage;

import freemarker.core.Environment;
import freemarker.core.z0;

public class sl5 extends ifa {
    public final z0 l;
    public final v83 m;

    public sl5(z0 z0Var, v83 v83Var) {
        k0(2);
        H(z0Var);
        H(v83Var);
        this.l = z0Var;
        this.m = v83Var;
    }

    @Override
    public void F(Environment environment) {
        if (this.l.l0(environment)) {
            return;
        }
        this.m.F(environment);
    }

    @Override
    public String J(boolean z) {
        if (!z) {
            return r();
        }
        StringBuffer stringBuffer = new StringBuffer();
        int iW = W();
        for (int i = 0; i < iW; i++) {
            stringBuffer.append(V(i).J(z));
        }
        stringBuffer.append("</#list>");
        return stringBuffer.toString();
    }

    @Override
    public String r() {
        return "#list-#else-container";
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
