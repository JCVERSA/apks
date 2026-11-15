package freemarker.core;

import defpackage.jw7;
import defpackage.xh0;

public final class j1 extends xh0 {
    public final t0 h;

    public j1(t0 t0Var) {
        this.h = t0Var;
    }

    @Override
    public t0 J(String str, t0 t0Var, t0.a aVar) {
        return new j1(this.h.I(str, t0Var, aVar));
    }

    @Override
    public boolean O(Environment environment) {
        return !this.h.O(environment);
    }

    @Override
    public boolean T() {
        return this.h.T();
    }

    @Override
    public String o() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("!");
        stringBuffer.append(this.h.o());
        return stringBuffer.toString();
    }

    @Override
    public String r() {
        return "!";
    }

    @Override
    public int s() {
        return 1;
    }

    @Override
    public jw7 t(int i) {
        if (i == 0) {
            return jw7.d;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override
    public Object u(int i) {
        if (i == 0) {
            return this.h;
        }
        throw new IndexOutOfBoundsException();
    }
}
