package defpackage;

import freemarker.core.Environment;
import freemarker.template.TemplateException;
import java.io.IOException;

public final class wd1 extends ifa {
    public wd1(ifa ifaVar) {
        j0(ifaVar);
    }

    @Override
    public void F(Environment environment) throws TemplateException, IOException {
        if (S() != null) {
            environment.Y1(S(), ew9.c, null);
        }
    }

    @Override
    public String J(boolean z) {
        if (!z) {
            return r();
        }
        String strO = S() != null ? S().o() : "";
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("<");
        stringBuffer.append(r());
        stringBuffer.append(">");
        stringBuffer.append(strO);
        stringBuffer.append("</");
        stringBuffer.append(r());
        stringBuffer.append(">");
        return stringBuffer.toString();
    }

    @Override
    public boolean Z() {
        return S() == null || S().Z();
    }

    @Override
    public String r() {
        return "#compress";
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
