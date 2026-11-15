package freemarker.core;

import defpackage.hga;
import defpackage.jw7;
import defpackage.zfa;
import freemarker.template.SimpleNumber;

public final class k1 extends t0 implements hga {
    public final Number h;

    public k1(Number number) {
        this.h = number;
    }

    @Override
    public zfa F(Environment environment) {
        return new SimpleNumber(this.h);
    }

    @Override
    public t0 J(String str, t0 t0Var, t0.a aVar) {
        return new k1(this.h);
    }

    @Override
    public String L(Environment environment) {
        return environment.t0(this.h);
    }

    @Override
    public boolean T() {
        return true;
    }

    @Override
    public Number getAsNumber() {
        return this.h;
    }

    @Override
    public String o() {
        return this.h.toString();
    }

    @Override
    public String r() {
        return o();
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
