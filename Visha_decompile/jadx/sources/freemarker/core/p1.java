package freemarker.core;

import defpackage.gga;
import defpackage.ifa;
import defpackage.jw7;
import defpackage.mga;
import defpackage.nga;
import defpackage.ofa;
import defpackage.zfa;
import freemarker.template.SimpleSequence;

public final class p1 extends ifa {
    public t0 l;
    public t0 m;

    public p1(t0 t0Var, t0 t0Var2) {
        this.l = t0Var;
        this.m = t0Var2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v16 */
    /* JADX WARN: Type inference failed for: r2v4, types: [java.lang.Object, zfa] */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r5v3, types: [freemarker.template.SimpleSequence] */
    @Override
    public void F(Environment environment) throws _MiscTemplateException, NonSequenceException, _TemplateModelException, NonNodeException {
        ?? Y;
        Environment.Namespace namespaceP1;
        t0 t0Var = this.l;
        zfa zfaVarK = t0Var == null ? null : t0Var.K(environment);
        if (zfaVarK != null && !(zfaVarK instanceof gga)) {
            throw new NonNodeException(this.l, zfaVarK, "node", environment);
        }
        t0 t0Var2 = this.m;
        zfa zfaVarK2 = t0Var2 == null ? null : t0Var2.K(environment);
        t0 t0Var3 = this.m;
        if (t0Var3 instanceof r1) {
            namespaceP1 = environment.p1(((mga) zfaVarK2).getAsString(), null);
        } else if (t0Var3 instanceof c1) {
            Y = zfaVarK2;
            Y = ((c1) t0Var3).Y(environment);
        }
        if (Y != 0) {
            if (Y instanceof ofa) {
                Y = namespaceP1;
                ?? simpleSequence = new SimpleSequence(1);
                simpleSequence.add(Y);
                Y = simpleSequence;
            } else if (!(Y instanceof nga)) {
                if (this.m != null) {
                    Y = namespaceP1;
                    throw new NonSequenceException(this.m, Y, environment);
                }
                Y = namespaceP1;
                throw new _MiscTemplateException(environment, "Expecting a sequence of namespaces after \"using\"");
            }
        }
        Y = namespaceP1;
        Y = namespaceP1;
        environment.I1((gga) zfaVarK, (nga) Y);
    }

    @Override
    public String J(boolean z) {
        StringBuffer stringBuffer = new StringBuffer();
        if (z) {
            stringBuffer.append('<');
        }
        stringBuffer.append(r());
        if (this.l != null) {
            stringBuffer.append(' ');
            stringBuffer.append(this.l.o());
        }
        if (this.m != null) {
            stringBuffer.append(" using ");
            stringBuffer.append(this.m.o());
        }
        if (z) {
            stringBuffer.append("/>");
        }
        return stringBuffer.toString();
    }

    @Override
    public String r() {
        return "#recurse";
    }

    @Override
    public int s() {
        return 2;
    }

    @Override
    public jw7 t(int i) {
        if (i == 0) {
            return jw7.I;
        }
        if (i == 1) {
            return jw7.l;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override
    public Object u(int i) {
        if (i == 0) {
            return this.l;
        }
        if (i == 1) {
            return this.m;
        }
        throw new IndexOutOfBoundsException();
    }
}
