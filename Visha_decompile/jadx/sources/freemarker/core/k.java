package freemarker.core;

import defpackage.pfa;
import defpackage.q0d;
import defpackage.zfa;

public abstract class k extends j {
    @Override
    public zfa F(Environment environment) throws NonExtendedHashException {
        zfa zfaVarK = this.h.K(environment);
        if (zfaVarK instanceof pfa) {
            return h0((pfa) zfaVarK, environment);
        }
        throw new NonExtendedHashException(this.h, zfaVarK, environment);
    }

    public abstract zfa h0(pfa pfaVar, Environment environment);

    public InvalidReferenceException i0(String str, zfa zfaVar, Environment environment) {
        return environment.I0() ? InvalidReferenceException.FAST_INSTANCE : new InvalidReferenceException(new q0d(new Object[]{"The exteneded hash (of class ", zfaVar.getClass().getName(), ") has returned null for its \"", str, "\" property. This is maybe a bug. The extended hash was returned by this expression:"}).b(this.h), environment, this);
    }
}
