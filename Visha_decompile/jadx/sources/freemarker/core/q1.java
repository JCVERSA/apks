package freemarker.core;

import defpackage.ifa;
import defpackage.jw7;

public class q1 extends ifa {
    public q1(ifa ifaVar) {
        j0(ifaVar);
    }

    @Override
    public void F(Environment environment) throws _MiscTemplateException {
        z0.a aVarN0 = z0.n0(environment, null);
        if (aVarN0 == null) {
            throw new _MiscTemplateException(environment, new Object[]{r(), " without iteraton in context"});
        }
        if (aVarN0.h()) {
            environment.a2(S());
        }
    }

    @Override
    public String J(boolean z) {
        StringBuffer stringBuffer = new StringBuffer();
        if (z) {
            stringBuffer.append('<');
        }
        stringBuffer.append(r());
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
        return "#sep";
    }

    @Override
    public int s() {
        return 0;
    }

    @Override
    public jw7 t(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override
    public Object u(int i) {
        throw new IndexOutOfBoundsException();
    }
}
