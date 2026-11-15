package defpackage;

import freemarker.core.Environment;
import freemarker.core.t0;
import java.io.IOException;
import org.apache.commons.text.StringSubstitutor;

public final class rw2 extends m45 {
    public final t0 l;
    public final t0 m;

    public rw2(t0 t0Var, t0 t0Var2) {
        this.l = t0Var;
        this.m = t0Var2;
    }

    @Override
    public void F(Environment environment) throws IOException {
        environment.a1().write(this.m.L(environment));
    }

    @Override
    public boolean X() {
        return true;
    }

    @Override
    public boolean Y() {
        return true;
    }

    @Override
    public String l0(boolean z, boolean z2) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(StringSubstitutor.DEFAULT_VAR_START);
        String strO = this.l.o();
        if (z2) {
            strO = n0a.b(strO, '\"');
        }
        stringBuffer.append(strO);
        stringBuffer.append(StringSubstitutor.DEFAULT_VAR_END);
        if (!z && this.l != this.m) {
            stringBuffer.append(" auto-escaped");
        }
        return stringBuffer.toString();
    }

    @Override
    public String r() {
        return "${...}";
    }

    @Override
    public int s() {
        return 1;
    }

    @Override
    public jw7 t(int i) {
        if (i == 0) {
            return jw7.E;
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
