package defpackage;

import freemarker.core.Environment;
import freemarker.core.StopException;
import freemarker.core.t0;

public final class sx9 extends ifa {
    public t0 l;

    public sx9(t0 t0Var) {
        this.l = t0Var;
    }

    @Override
    public void F(Environment environment) throws StopException {
        if (this.l != null) {
            throw new StopException(environment, this.l.L(environment));
        }
        throw new StopException(environment);
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
        return "#stop";
    }

    @Override
    public int s() {
        return 1;
    }

    @Override
    public jw7 t(int i) {
        if (i == 0) {
            return jw7.K;
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
