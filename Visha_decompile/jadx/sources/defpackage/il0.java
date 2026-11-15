package defpackage;

import freemarker.core.Environment;
import freemarker.core.NonNodeException;
import freemarker.core.j;

public abstract class il0 extends j {
    @Override
    public zfa F(Environment environment) throws NonNodeException {
        zfa zfaVarK = this.h.K(environment);
        if (zfaVarK instanceof gga) {
            return h0((gga) zfaVarK, environment);
        }
        throw new NonNodeException(this.h, zfaVarK, environment);
    }

    public abstract zfa h0(gga ggaVar, Environment environment);
}
