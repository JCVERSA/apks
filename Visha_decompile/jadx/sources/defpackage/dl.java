package defpackage;

import freemarker.core.Environment;
import java.io.IOException;

public final class dl extends ifa {
    public ifa l;
    public xo8 m;

    public dl(ifa ifaVar, xo8 xo8Var) {
        this.l = ifaVar;
        this.m = xo8Var;
        k0(2);
        H(ifaVar);
        H(xo8Var);
    }

    @Override
    public void F(Environment environment) throws IOException {
        environment.Z1(this.l, this.m);
    }

    @Override
    public String J(boolean z) {
        if (!z) {
            return r();
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("<");
        stringBuffer.append(r());
        stringBuffer.append(">");
        ifa ifaVar = this.l;
        if (ifaVar != null) {
            stringBuffer.append(ifaVar.o());
        }
        xo8 xo8Var = this.m;
        if (xo8Var != null) {
            stringBuffer.append(xo8Var.o());
        }
        stringBuffer.append("</");
        stringBuffer.append(r());
        stringBuffer.append(">");
        return stringBuffer.toString();
    }

    @Override
    public boolean b0() {
        return false;
    }

    @Override
    public String r() {
        return "#attempt";
    }

    @Override
    public int s() {
        return 1;
    }

    @Override
    public jw7 t(int i) {
        if (i == 0) {
            return jw7.m;
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
