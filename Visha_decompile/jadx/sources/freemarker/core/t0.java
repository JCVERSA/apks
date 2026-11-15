package freemarker.core;

import defpackage.bfa;
import defpackage.ffa;
import defpackage.hga;
import defpackage.mga;
import defpackage.nga;
import defpackage.ofa;
import defpackage.rd0;
import defpackage.xe1;
import defpackage.zfa;
import freemarker.template.Template;

public abstract class t0 extends t1 {
    public zfa g;

    public static class a {
        public boolean a;
    }

    public static String H(zfa zfaVar, t0 t0Var, Environment environment) {
        return q0.c(zfaVar, t0Var, null, environment);
    }

    public static boolean S(zfa zfaVar) {
        if (zfaVar instanceof rd0) {
            return ((rd0) zfaVar).isEmpty();
        }
        if (zfaVar instanceof nga) {
            return ((nga) zfaVar).size() == 0;
        }
        if (zfaVar instanceof mga) {
            String asString = ((mga) zfaVar).getAsString();
            return asString == null || asString.length() == 0;
        }
        if (zfaVar == null) {
            return true;
        }
        if (zfaVar instanceof bfa) {
            return !((bfa) zfaVar).iterator().hasNext();
        }
        if (zfaVar instanceof ofa) {
            return ((ofa) zfaVar).isEmpty();
        }
        return ((zfaVar instanceof hga) || (zfaVar instanceof ffa) || (zfaVar instanceof freemarker.template.a)) ? false : true;
    }

    public abstract zfa F(Environment environment);

    public void G(zfa zfaVar, Environment environment) throws InvalidReferenceException {
        if (zfaVar == null) {
            throw InvalidReferenceException.getInstance(this, environment);
        }
    }

    public final t0 I(String str, t0 t0Var, a aVar) {
        t0 t0VarJ = J(str, t0Var, aVar);
        if (t0VarJ.d == 0) {
            t0VarJ.l(this);
        }
        return t0VarJ;
    }

    public abstract t0 J(String str, t0 t0Var, a aVar);

    public final zfa K(Environment environment) {
        zfa zfaVar = this.g;
        return zfaVar != null ? zfaVar : F(environment);
    }

    public String L(Environment environment) {
        return q0.c(K(environment), this, null, environment);
    }

    public String M(Environment environment, String str) {
        return q0.c(K(environment), this, str, environment);
    }

    public boolean N(xe1 xe1Var) {
        return P(null, xe1Var);
    }

    public boolean O(Environment environment) {
        return P(environment, null);
    }

    public final boolean P(Environment environment, xe1 xe1Var) {
        return V(K(environment), environment, xe1Var);
    }

    public zfa Q(Environment environment) throws InvalidReferenceException {
        zfa zfaVarK = K(environment);
        G(zfaVarK, environment);
        return zfaVarK;
    }

    public Number R(Environment environment) {
        return W(K(environment), environment);
    }

    public abstract boolean T();

    public boolean U(zfa zfaVar, Environment environment) {
        return V(zfaVar, environment, null);
    }

    public final boolean V(zfa zfaVar, Environment environment, xe1 xe1Var) throws NonBooleanException {
        if (zfaVar instanceof freemarker.template.a) {
            return ((freemarker.template.a) zfaVar).getAsBoolean();
        }
        if (environment == null ? !xe1Var.J() : !environment.J()) {
            throw new NonBooleanException(this, zfaVar, environment);
        }
        return (zfaVar == null || S(zfaVar)) ? false : true;
    }

    public Number W(zfa zfaVar, Environment environment) throws NonNumericalException {
        if (zfaVar instanceof hga) {
            return q0.g((hga) zfaVar, this);
        }
        throw new NonNumericalException(this, zfaVar, environment);
    }

    @Override
    public void z(Template template, int i, int i2, int i3, int i4) {
        super.z(template, i, i2, i3, i4);
        if (T()) {
            try {
                this.g = F(null);
            } catch (Exception unused) {
            }
        }
    }
}
