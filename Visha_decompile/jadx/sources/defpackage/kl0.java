package defpackage;

import freemarker.core.Environment;
import freemarker.core.NonSequenceException;
import freemarker.core.j;

public abstract class kl0 extends j {
    @Override
    public zfa F(Environment environment) throws NonSequenceException {
        zfa zfaVarK = this.h.K(environment);
        if (zfaVarK instanceof nga) {
            return h0((nga) zfaVarK);
        }
        throw new NonSequenceException(this.h, zfaVarK, environment);
    }

    public abstract zfa h0(nga ngaVar);
}
