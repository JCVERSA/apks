package freemarker.core;

import defpackage.ifa;
import defpackage.jw7;

public class y0 extends ifa {
    public final String l;

    public y0(String str, ifa ifaVar) {
        this.l = str;
        j0(ifaVar);
    }

    @Override
    public void F(Environment environment) throws _MiscTemplateException {
        z0.a aVarN0 = z0.n0(environment, null);
        if (aVarN0 == null) {
            throw new _MiscTemplateException(environment, new Object[]{r(), " without iteraton in context"});
        }
        aVarN0.i(environment, S(), this.l);
    }

    @Override
    public String J(boolean z) {
        StringBuffer stringBuffer = new StringBuffer();
        if (z) {
            stringBuffer.append('<');
        }
        stringBuffer.append(r());
        stringBuffer.append(" as ");
        stringBuffer.append(this.l);
        if (z) {
            stringBuffer.append('>');
            if (S() != null) {
                stringBuffer.append(S().o());
            }
            stringBuffer.append("</");
            stringBuffer.append(r());
            stringBuffer.append('>');
        }
        return stringBuffer.toString();
    }

    @Override
    public String r() {
        return "#items";
    }

    @Override
    public int s() {
        return 1;
    }

    @Override
    public jw7 t(int i) {
        if (i == 0) {
            return jw7.u;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override
    public Object u(int i) {
        return this.l;
    }
}
