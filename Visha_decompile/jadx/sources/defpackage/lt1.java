package defpackage;

import freemarker.core.Environment;
import freemarker.core.StopException;

public class lt1 extends ifa {
    public lt1(ifa ifaVar) {
        j0(ifaVar);
        l(ifaVar);
    }

    @Override
    public void F(Environment environment) throws StopException {
        if (wt1.d(environment, y().E0(), S().n())) {
            throw new StopException(environment, "Stopped by debugger");
        }
        S().F(environment);
    }

    @Override
    public String J(boolean z) {
        if (!z) {
            return "debug break";
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("<#-- ");
        stringBuffer.append("debug break");
        if (S() == null) {
            stringBuffer.append(" /-->");
        } else {
            stringBuffer.append(" -->");
            stringBuffer.append(S().o());
            stringBuffer.append("<#--/ debug break -->");
        }
        return stringBuffer.toString();
    }

    @Override
    public String r() {
        return "#debug_break";
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
