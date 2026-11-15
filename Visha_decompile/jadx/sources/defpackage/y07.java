package defpackage;

import freemarker.core.Environment;

public class y07 extends ifa {
    public y07(ifa ifaVar) {
        j0(ifaVar);
    }

    @Override
    public void F(Environment environment) {
        if (S() != null) {
            environment.X1(S());
        }
    }

    @Override
    public String J(boolean z) {
        if (!z) {
            return r();
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("<");
        stringBuffer.append(r());
        stringBuffer.append('>');
        stringBuffer.append(S().o());
        stringBuffer.append("</");
        stringBuffer.append(r());
        stringBuffer.append('>');
        return stringBuffer.toString();
    }

    @Override
    public String r() {
        return "#noescape";
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
