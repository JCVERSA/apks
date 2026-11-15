package freemarker.core;

import defpackage.bfa;
import defpackage.jw7;
import defpackage.mga;
import defpackage.nga;
import defpackage.pfa;
import defpackage.zfa;
import freemarker.template.SimpleCollection;
import java.util.ArrayList;

public class l0 extends t0 {
    public static final bfa j = new SimpleCollection(new ArrayList(0));
    public static final zfa k = new a();
    public final t0 h;
    public final t0 i;

    public static class a implements mga, nga, pfa {
        public a() {
        }

        @Override
        public zfa get(int i) {
            return null;
        }

        @Override
        public String getAsString() {
            return "";
        }

        @Override
        public boolean isEmpty() {
            return true;
        }

        @Override
        public bfa keys() {
            return l0.j;
        }

        @Override
        public int size() {
            return 0;
        }

        @Override
        public bfa values() {
            return l0.j;
        }

        @Override
        public zfa get(String str) {
            return null;
        }
    }

    public l0(t0 t0Var, t0 t0Var2) {
        this.h = t0Var;
        this.i = t0Var2;
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
        if (zfaVarK != null) {
            return zfaVarK;
        }
        t0 t0Var2 = this.i;
        return t0Var2 == null ? k : t0Var2.K(environment);
    }

    @Override
    public t0 J(String str, t0 t0Var, t0.a aVar) {
        t0 t0VarI = this.h.I(str, t0Var, aVar);
        t0 t0Var2 = this.i;
        return new l0(t0VarI, t0Var2 != null ? t0Var2.I(str, t0Var, aVar) : null);
    }

    @Override
    public boolean T() {
        return false;
    }

    @Override
    public String o() {
        if (this.i == null) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(this.h.o());
            stringBuffer.append('!');
            return stringBuffer.toString();
        }
        StringBuffer stringBuffer2 = new StringBuffer();
        stringBuffer2.append(this.h.o());
        stringBuffer2.append('!');
        stringBuffer2.append(this.i.o());
        return stringBuffer2.toString();
    }

    @Override
    public String r() {
        return "...!...";
    }

    @Override
    public int s() {
        return 2;
    }

    @Override
    public jw7 t(int i) {
        return jw7.a(i);
    }

    @Override
    public Object u(int i) {
        if (i == 0) {
            return this.h;
        }
        if (i == 1) {
            return this.i;
        }
        throw new IndexOutOfBoundsException();
    }
}
