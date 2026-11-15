package defpackage;

import freemarker.core.Environment;
import java.io.IOException;

public final class b24 extends ifa {
    @Override
    public void F(Environment environment) throws IOException {
        environment.a1().flush();
    }

    @Override
    public String J(boolean z) {
        if (!z) {
            return r();
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("<");
        stringBuffer.append(r());
        stringBuffer.append("/>");
        return stringBuffer.toString();
    }

    @Override
    public String r() {
        return "#flush";
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
