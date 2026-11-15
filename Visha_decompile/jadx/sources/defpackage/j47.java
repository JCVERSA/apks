package defpackage;

import androidx.media3.exoplayer.upstream.CmcdData;
import freemarker.core.Environment;
import freemarker.core.t0;
import java.io.IOException;
import java.text.NumberFormat;
import java.util.Locale;
import org.apache.commons.text.StringSubstitutor;

public final class j47 extends m45 {
    public final t0 l;
    public final boolean m;
    public final int n;
    public final int o;
    public volatile a p;

    public static class a {
        public final NumberFormat a;
        public final Locale b;

        public a(NumberFormat numberFormat, Locale locale) {
            this.a = numberFormat;
            this.b = locale;
        }
    }

    public j47(t0 t0Var) {
        this.l = t0Var;
        this.m = false;
        this.n = 0;
        this.o = 0;
    }

    @Override
    public void F(Environment environment) throws IOException {
        Number numberR = this.l.R(environment);
        a aVar = this.p;
        if (aVar == null || !aVar.b.equals(environment.p())) {
            synchronized (this) {
                try {
                    aVar = this.p;
                    if (aVar == null || !aVar.b.equals(environment.p())) {
                        NumberFormat numberInstance = NumberFormat.getNumberInstance(environment.p());
                        if (this.m) {
                            numberInstance.setMinimumFractionDigits(this.n);
                            numberInstance.setMaximumFractionDigits(this.o);
                        } else {
                            numberInstance.setMinimumFractionDigits(0);
                            numberInstance.setMaximumFractionDigits(50);
                        }
                        numberInstance.setGroupingUsed(false);
                        this.p = new a(numberInstance, environment.p());
                        aVar = this.p;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        environment.a1().write(aVar.a.format(numberR));
    }

    @Override
    public boolean X() {
        return true;
    }

    @Override
    public boolean Y() {
        return true;
    }

    @Override
    public String l0(boolean z, boolean z2) {
        StringBuffer stringBuffer = new StringBuffer("#{");
        String strO = this.l.o();
        if (z2) {
            strO = n0a.b(strO, '\"');
        }
        stringBuffer.append(strO);
        if (this.m) {
            stringBuffer.append(" ; ");
            stringBuffer.append(CmcdData.OBJECT_TYPE_MANIFEST);
            stringBuffer.append(this.n);
            stringBuffer.append("M");
            stringBuffer.append(this.o);
        }
        stringBuffer.append(StringSubstitutor.DEFAULT_VAR_END);
        return stringBuffer.toString();
    }

    @Override
    public String r() {
        return "#{...}";
    }

    @Override
    public int s() {
        return 3;
    }

    @Override
    public jw7 t(int i) {
        if (i == 0) {
            return jw7.E;
        }
        if (i == 1) {
            return jw7.G;
        }
        if (i == 2) {
            return jw7.H;
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
            return new Integer(this.o);
        }
        throw new IndexOutOfBoundsException();
    }

    public j47(t0 t0Var, int i, int i2) {
        this.l = t0Var;
        this.m = true;
        this.n = i;
        this.o = i2;
    }
}
