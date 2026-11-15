package freemarker.core;

import defpackage.jw7;
import defpackage.xh0;

public final class k0 extends xh0 {
    public final t0 h;
    public final t0 i;
    public final int j;
    public final String k;

    public k0(t0 t0Var, t0 t0Var2, String str) {
        this.h = t0Var;
        this.i = t0Var2;
        String strIntern = str.intern();
        this.k = strIntern;
        if (strIntern == "==" || strIntern == "=") {
            this.j = 1;
            return;
        }
        if (strIntern == "!=") {
            this.j = 2;
            return;
        }
        if (strIntern == "gt" || strIntern == "\\gt" || strIntern == ">" || strIntern == "&gt;") {
            this.j = 4;
            return;
        }
        if (strIntern == "gte" || strIntern == "\\gte" || strIntern == ">=" || strIntern == "&gt;=") {
            this.j = 6;
            return;
        }
        if (strIntern == "lt" || strIntern == "\\lt" || strIntern == "<" || strIntern == "&lt;") {
            this.j = 3;
            return;
        }
        if (strIntern == "lte" || strIntern == "\\lte" || strIntern == "<=" || strIntern == "&lt;=") {
            this.j = 5;
            return;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Unknown comparison operator ");
        stringBuffer.append(strIntern);
        throw new BugException(stringBuffer.toString());
    }

    @Override
    public t0 J(String str, t0 t0Var, t0.a aVar) {
        return new k0(this.h.I(str, t0Var, aVar), this.i.I(str, t0Var, aVar), this.k);
    }

    @Override
    public boolean O(Environment environment) {
        return q0.e(this.h, this.j, this.k, this.i, this, environment);
    }

    @Override
    public boolean T() {
        return this.g != null || (this.h.T() && this.i.T());
    }

    @Override
    public String o() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(this.h.o());
        stringBuffer.append(' ');
        stringBuffer.append(this.k);
        stringBuffer.append(' ');
        stringBuffer.append(this.i.o());
        return stringBuffer.toString();
    }

    @Override
    public String r() {
        return this.k;
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
        return i == 0 ? this.h : this.i;
    }
}
