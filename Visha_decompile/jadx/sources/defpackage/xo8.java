package defpackage;

import freemarker.core.Environment;

public final class xo8 extends ifa {
    public xo8(ifa ifaVar) {
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
        if (!z) {
            return r();
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append('<');
        stringBuffer.append(r());
        stringBuffer.append('>');
        if (S() != null) {
            stringBuffer.append(S().o());
        }
        return stringBuffer.toString();
    }

    @Override
    public String r() {
        return "#recover";
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
