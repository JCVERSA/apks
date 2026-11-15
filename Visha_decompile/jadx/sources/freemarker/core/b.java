package freemarker.core;

import defpackage.jw7;
import defpackage.xh0;

public final class b extends xh0 {
    public final t0 h;
    public final t0 i;

    public b(t0 t0Var, t0 t0Var2) {
        this.h = t0Var;
        this.i = t0Var2;
    }

    @Override
    public t0 J(String str, t0 t0Var, t0.a aVar) {
        return new b(this.h.I(str, t0Var, aVar), this.i.I(str, t0Var, aVar));
    }

    @Override
    public boolean O(Environment environment) {
        return this.h.O(environment) && this.i.O(environment);
    }

    @Override
    public boolean T() {
        return this.g != null || (this.h.T() && this.i.T());
    }

    @Override
    public String o() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(this.h.o());
        stringBuffer.append(" && ");
        stringBuffer.append(this.i.o());
        return stringBuffer.toString();
    }

    @Override
    public String r() {
        return "&&";
    }

    @Override
    public int s() {
        return 2;
    }

    @Override
    public jw7 t(int i) {
        return jw7.a(i);
    }

    @Override
    public Object u(int i) {
        if (i == 0) {
            return this.h;
        }
        if (i == 1) {
            return this.i;
        }
        throw new IndexOutOfBoundsException();
    }
}
