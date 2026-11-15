package freemarker.core;

import defpackage.hga;
import defpackage.jw7;
import defpackage.zfa;
import freemarker.template.SimpleNumber;
import org.slf4j.Marker;

public final class u1 extends t0 {
    public static final Integer l = new Integer(-1);
    public final int h = 0;
    public final int i = 1;
    public final t0 j;
    public final boolean k;

    public u1(t0 t0Var, boolean z) {
        this.j = t0Var;
        this.k = z;
    }

    @Override
    public zfa F(Environment environment) throws InvalidReferenceException, NonNumericalException {
        zfa zfaVarK = this.j.K(environment);
        try {
            hga hgaVar = (hga) zfaVarK;
            if (!this.k) {
                return hgaVar;
            }
            this.j.G(hgaVar, environment);
            return new SimpleNumber(c.e.h(l, hgaVar.getAsNumber()));
        } catch (ClassCastException unused) {
            throw new NonNumericalException(this.j, zfaVarK, environment);
        }
    }

    @Override
    public t0 J(String str, t0 t0Var, t0.a aVar) {
        return new u1(this.j.I(str, t0Var, aVar), this.k);
    }

    @Override
    public boolean T() {
        return this.j.T();
    }

    @Override
    public String o() {
        String str = this.k ? "-" : Marker.ANY_NON_NULL_MARKER;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(str);
        stringBuffer.append(this.j.o());
        return stringBuffer.toString();
    }

    @Override
    public String r() {
        return this.k ? "-..." : "+...";
    }

    @Override
    public int s() {
        return 2;
    }

    @Override
    public jw7 t(int i) {
        if (i == 0) {
            return jw7.d;
        }
        if (i == 1) {
            return jw7.q;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override
    public Object u(int i) {
        if (i == 0) {
            return this.j;
        }
        if (i == 1) {
            return new Integer(!this.k ? 1 : 0);
        }
        throw new IndexOutOfBoundsException();
    }
}
