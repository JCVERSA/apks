package freemarker.core;

import defpackage.ifa;
import defpackage.jw7;

public final class ReturnInstruction extends ifa {
    public t0 l;

    public static class Return extends RuntimeException {
        static final Return INSTANCE = new Return();

        private Return() {
        }
    }

    public ReturnInstruction(t0 t0Var) {
        this.l = t0Var;
    }

    @Override
    public void F(Environment environment) {
        t0 t0Var = this.l;
        if (t0Var != null) {
            environment.P1(t0Var.K(environment));
        }
        if (c0() != null) {
            throw Return.INSTANCE;
        }
        if (!(U() instanceof e1) && !(U().U() instanceof e1)) {
            throw Return.INSTANCE;
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
            stringBuffer.append("/>");
        }
        return stringBuffer.toString();
    }

    @Override
    public String r() {
        return "#return";
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
            return this.l;
        }
        throw new IndexOutOfBoundsException();
    }
}
