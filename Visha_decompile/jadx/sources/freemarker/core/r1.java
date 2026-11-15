package freemarker.core;

import defpackage.ifa;
import defpackage.jw7;
import defpackage.m45;
import defpackage.mga;
import defpackage.n0a;
import defpackage.nfa;
import defpackage.rw2;
import defpackage.xl9;
import defpackage.zfa;
import freemarker.template.SimpleScalar;
import java.io.IOException;
import java.io.StringReader;
import java.util.Enumeration;
import org.apache.commons.text.StringSubstitutor;

public final class r1 extends t0 implements mga {
    public final String h;
    public ifa i;

    public r1(String str) {
        this.h = str;
    }

    @Override
    public zfa F(Environment environment) {
        return new SimpleScalar(L(environment));
    }

    @Override
    public t0 J(String str, t0 t0Var, t0.a aVar) {
        r1 r1Var = new r1(this.h);
        r1Var.i = this.i;
        return r1Var;
    }

    @Override
    public String L(Environment environment) {
        if (this.i == null) {
            return this.h;
        }
        nfa nfaVarB = environment.B();
        environment.g0(nfa.b);
        try {
            try {
                String strJ1 = environment.J1(this.i);
                environment.g0(nfaVarB);
                return strJ1;
            } catch (IOException e) {
                throw new _MiscTemplateException(e, environment);
            }
        } catch (Throwable th) {
            environment.g0(nfaVarB);
            throw th;
        }
    }

    @Override
    public boolean T() {
        return this.i == null;
    }

    public boolean X() {
        ifa ifaVar = this.i;
        return ifaVar != null && ifaVar.L() == 1 && (this.i.K(0) instanceof rw2);
    }

    public void Y(u0 u0Var) throws ParseException {
        if (this.h.length() > 3) {
            if (this.h.indexOf(StringSubstitutor.DEFAULT_VAR_START) >= 0 || this.h.indexOf("#{") >= 0) {
                u0 u0Var2 = new u0(new xl9(new StringReader(this.h), this.d, this.c + 1, this.h.length()));
                u0Var2.i = true;
                u0Var2.n = u0Var.n;
                u0Var2.o = u0Var.o;
                u0Var2.p = u0Var.p;
                FMParser fMParser = new FMParser(u0Var2);
                fMParser.N4(y());
                try {
                    this.i = fMParser.y();
                    this.g = null;
                    u0Var.o = u0Var2.o;
                    u0Var.p = u0Var2.p;
                } catch (ParseException e) {
                    e.setTemplateName(y().E0());
                    throw e;
                }
            }
        }
    }

    @Override
    public String getAsString() {
        return this.h;
    }

    @Override
    public String o() {
        if (this.i == null) {
            return n0a.t(this.h);
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append('\"');
        Enumeration enumerationI = this.i.I();
        while (enumerationI.hasMoreElements()) {
            ifa ifaVar = (ifa) enumerationI.nextElement();
            if (ifaVar instanceof m45) {
                stringBuffer.append(((m45) ifaVar).m0());
            } else {
                stringBuffer.append(n0a.b(ifaVar.o(), '\"'));
            }
        }
        stringBuffer.append('\"');
        return stringBuffer.toString();
    }

    @Override
    public String r() {
        return this.i == null ? o() : "dynamic \"...\"";
    }

    @Override
    public int s() {
        return 1;
    }

    @Override
    public jw7 t(int i) {
        if (i == 0) {
            return jw7.F;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override
    public Object u(int i) {
        if (i == 0) {
            return this.i;
        }
        throw new IndexOutOfBoundsException();
    }
}
