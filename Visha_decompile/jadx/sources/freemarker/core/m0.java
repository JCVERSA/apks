package freemarker.core;

import com.alibaba.android.arouter.utils.Consts;
import defpackage.d0d;
import defpackage.jw7;
import defpackage.ofa;
import defpackage.zfa;

public final class m0 extends t0 {
    public final t0 h;
    public final String i;

    public m0(t0 t0Var, String str) {
        this.h = t0Var;
        this.i = str;
    }

    @Override
    public zfa F(Environment environment) throws NonHashException {
        zfa zfaVarK = this.h.K(environment);
        if (zfaVarK instanceof ofa) {
            return ((ofa) zfaVarK).get(this.i);
        }
        if (zfaVarK == null && environment.J()) {
            return null;
        }
        throw new NonHashException(this.h, zfaVarK, environment);
    }

    @Override
    public t0 J(String str, t0 t0Var, t0.a aVar) {
        return new m0(this.h.I(str, t0Var, aVar), this.i);
    }

    @Override
    public boolean T() {
        return this.h.T();
    }

    public String X() {
        return this.i;
    }

    public boolean Y() {
        t0 t0Var = this.h;
        return (t0Var instanceof x0) || ((t0Var instanceof m0) && ((m0) t0Var).Y());
    }

    @Override
    public String o() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(this.h.o());
        stringBuffer.append(r());
        stringBuffer.append(d0d.d(this.i));
        return stringBuffer.toString();
    }

    @Override
    public String r() {
        return Consts.DOT;
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
