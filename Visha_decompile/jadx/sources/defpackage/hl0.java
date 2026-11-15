package defpackage;

import freemarker.core.Environment;
import freemarker.core.InvalidReferenceException;
import freemarker.core.NonDateException;
import freemarker.core.j;
import freemarker.core.q0;
import freemarker.core.t0;
import freemarker.template.TemplateException;
import java.util.Date;

public abstract class hl0 extends j {
    public static TemplateException i0(Environment environment, zfa zfaVar, t0 t0Var) {
        return zfaVar == null ? InvalidReferenceException.getInstance(t0Var, environment) : new NonDateException(t0Var, zfaVar, "date", environment);
    }

    @Override
    public zfa F(Environment environment) throws TemplateException {
        zfa zfaVarK = this.h.K(environment);
        if (!(zfaVarK instanceof ffa)) {
            throw i0(environment, zfaVarK, this.h);
        }
        ffa ffaVar = (ffa) zfaVarK;
        return h0(q0.f(ffaVar, this.h), ffaVar.j(), environment);
    }

    public abstract zfa h0(Date date, int i, Environment environment);
}
