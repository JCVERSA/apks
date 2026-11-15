package freemarker.core;

import defpackage.j37;
import defpackage.jw7;
import defpackage.xfa;
import defpackage.yfa;
import defpackage.zfa;
import freemarker.template.TemplateException;
import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;

public final class g1 extends t0 {
    public final t0 h;
    public final c1 i;

    public g1(t0 t0Var, ArrayList arrayList) {
        this(t0Var, new c1(arrayList));
    }

    @Override
    public zfa F(Environment environment) throws _MiscTemplateException, NonMethodException {
        zfa zfaVarK = this.h.K(environment);
        if (zfaVarK instanceof xfa) {
            xfa xfaVar = (xfa) zfaVarK;
            return environment.u().c(xfaVar.exec(xfaVar instanceof yfa ? this.i.Z(environment) : this.i.a0(environment)));
        }
        if (!(zfaVarK instanceof e1)) {
            throw new NonMethodException(this.h, zfaVarK, environment);
        }
        e1 e1Var = (e1) zfaVarK;
        environment.P1(null);
        if (!e1Var.s0()) {
            throw new _MiscTemplateException(environment, "A macro cannot be called in an expression. (Functions can be.)");
        }
        Writer writerA1 = environment.a1();
        try {
            try {
                environment.S1(j37.b);
                environment.t1(e1Var, null, this.i.h, null, null);
                environment.S1(writerA1);
                return environment.P0();
            } catch (IOException e) {
                throw new TemplateException("Unexpected exception during function execution", (Exception) e, environment);
            }
        } catch (Throwable th) {
            environment.S1(writerA1);
            throw th;
        }
    }

    @Override
    public t0 J(String str, t0 t0Var, t0.a aVar) {
        return new g1(this.h.I(str, t0Var, aVar), (c1) this.i.I(str, t0Var, aVar));
    }

    @Override
    public boolean T() {
        return false;
    }

    @Override
    public String o() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(this.h.o());
        stringBuffer.append("(");
        String strO = this.i.o();
        stringBuffer.append(strO.substring(1, strO.length() - 1));
        stringBuffer.append(")");
        return stringBuffer.toString();
    }

    @Override
    public String r() {
        return "...(...)";
    }

    @Override
    public int s() {
        return this.i.h.size() + 1;
    }

    @Override
    public jw7 t(int i) {
        if (i == 0) {
            return jw7.J;
        }
        if (i < s()) {
            return jw7.D;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override
    public Object u(int i) {
        if (i == 0) {
            return this.h;
        }
        if (i < s()) {
            return this.i.h.get(i - 1);
        }
        throw new IndexOutOfBoundsException();
    }

    public g1(t0 t0Var, c1 c1Var) {
        this.h = t0Var;
        this.i = c1Var;
    }
}
