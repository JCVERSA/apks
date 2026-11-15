package freemarker.core;

import defpackage.ifa;
import defpackage.jw7;
import defpackage.pga;
import defpackage.zfa;
import freemarker.template.SimpleScalar;
import freemarker.template.TemplateException;
import java.io.IOException;
import java.io.Writer;
import java.util.Map;

public final class g extends ifa {
    public final String l;
    public final t0 m;
    public final int n;

    public class a implements pga {
        public final Environment b;
        public final Environment.Namespace c;

        public a(Environment environment) throws NonNamespaceException {
            zfa zfaVarK;
            this.b = environment;
            if (g.this.m != null) {
                zfaVarK = g.this.m.K(environment);
                if (!(zfaVarK instanceof Environment.Namespace)) {
                    throw new NonNamespaceException(g.this.m, zfaVarK, environment);
                }
            } else {
                zfaVarK = null;
            }
            this.c = (Environment.Namespace) zfaVarK;
        }

        @Override
        public Writer h(Writer writer, Map map) {
            return new f(this);
        }
    }

    public g(ifa ifaVar, String str, int i, t0 t0Var) {
        j0(ifaVar);
        this.l = str;
        this.m = t0Var;
        this.n = i;
    }

    @Override
    public void F(Environment environment) throws TemplateException, IOException {
        if (S() != null) {
            environment.Y1(S(), new a(environment), null);
            return;
        }
        SimpleScalar simpleScalar = new SimpleScalar("");
        t0 t0Var = this.m;
        if (t0Var != null) {
            ((Environment.Namespace) t0Var.K(environment)).put(this.l, simpleScalar);
            return;
        }
        int i = this.n;
        if (i == 1) {
            environment.T1(this.l, simpleScalar);
        } else if (i == 3) {
            environment.O1(this.l, simpleScalar);
        } else if (i == 2) {
            environment.Q1(this.l, simpleScalar);
        }
    }

    @Override
    public String J(boolean z) {
        StringBuffer stringBuffer = new StringBuffer();
        if (z) {
            stringBuffer.append("<");
        }
        stringBuffer.append(r());
        stringBuffer.append(' ');
        stringBuffer.append(this.l);
        if (this.m != null) {
            stringBuffer.append(" in ");
            stringBuffer.append(this.m.o());
        }
        if (z) {
            stringBuffer.append('>');
            stringBuffer.append(S() == null ? "" : S().o());
            stringBuffer.append("</");
            stringBuffer.append(r());
            stringBuffer.append('>');
        } else {
            stringBuffer.append(" = .nested_output");
        }
        return stringBuffer.toString();
    }

    @Override
    public String r() {
        return e.l0(this.n);
    }

    @Override
    public int s() {
        return 3;
    }

    @Override
    public jw7 t(int i) {
        if (i == 0) {
            return jw7.h;
        }
        if (i == 1) {
            return jw7.k;
        }
        if (i == 2) {
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
            return new Integer(this.n);
        }
        if (i == 2) {
            return this.m;
        }
        throw new IndexOutOfBoundsException();
    }
}
