package freemarker.core;

import defpackage.jw7;
import defpackage.zfa;

public class s0 extends t0 {
    public final t0 h;

    public s0(t0 t0Var) {
        this.h = t0Var;
    }

    @Override
    public zfa F(Environment environment) {
        zfa zfaVarK;
        t0 t0Var = this.h;
        if (t0Var instanceof m1) {
            boolean zN1 = environment.N1(true);
            try {
                zfaVarK = this.h.K(environment);
                environment.N1(zN1);
            } catch (InvalidReferenceException unused) {
                environment.N1(zN1);
                zfaVarK = null;
            } catch (Throwable th) {
                environment.N1(zN1);
                throw th;
            }
        } else {
            zfaVarK = t0Var.K(environment);
        }
        return zfaVarK == null ? freemarker.template.a.y6 : freemarker.template.a.z6;
    }

    @Override
    public t0 J(String str, t0 t0Var, t0.a aVar) {
        return new s0(this.h.I(str, t0Var, aVar));
    }

    @Override
    public boolean T() {
        return false;
    }

    @Override
    public String o() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(this.h.o());
        stringBuffer.append(r());
        return stringBuffer.toString();
    }

    @Override
    public String r() {
        return "??";
    }

    @Override
    public int s() {
        return 1;
    }

    @Override
    public jw7 t(int i) {
        return jw7.c;
    }

    @Override
    public Object u(int i) {
        return this.h;
    }
}
