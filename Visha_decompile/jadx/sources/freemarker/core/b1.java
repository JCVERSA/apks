package freemarker.core;

import defpackage.d0d;
import defpackage.i0d;
import defpackage.ifa;
import defpackage.jw7;
import defpackage.k0d;
import freemarker.template.MalformedTemplateNameException;
import freemarker.template.Template;
import java.io.IOException;

public final class b1 extends ifa {
    public t0 l;
    public String m;

    public b1(Template template, t0 t0Var, String str) {
        this.m = str;
        this.l = t0Var;
    }

    @Override
    public void F(Environment environment) throws _MiscTemplateException {
        String strL = this.l.L(environment);
        try {
            try {
                environment.o1(environment.i1(environment.W1(y().y0(), strL)), this.m);
            } catch (IOException e) {
                throw new _MiscTemplateException(e, environment, new Object[]{"Template importing failed (for parameter value ", new k0d(strL), "):\n", new i0d(e)});
            }
        } catch (MalformedTemplateNameException e2) {
            throw new _MiscTemplateException(e2, environment, new Object[]{"Malformed template name ", new k0d(e2.getTemplateName()), ":\n", e2.getMalformednessDescription()});
        }
    }

    @Override
    public String J(boolean z) {
        StringBuffer stringBuffer = new StringBuffer();
        if (z) {
            stringBuffer.append('<');
        }
        stringBuffer.append(r());
        stringBuffer.append(' ');
        stringBuffer.append(this.l.o());
        stringBuffer.append(" as ");
        stringBuffer.append(d0d.f(this.m));
        if (z) {
            stringBuffer.append("/>");
        }
        return stringBuffer.toString();
    }

    @Override
    public String r() {
        return "#import";
    }

    @Override
    public int s() {
        return 2;
    }

    @Override
    public jw7 t(int i) {
        if (i == 0) {
            return jw7.v;
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
