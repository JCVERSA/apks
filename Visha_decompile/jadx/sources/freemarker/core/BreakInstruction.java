package freemarker.core;

import defpackage.ifa;
import defpackage.jw7;

public final class BreakInstruction extends ifa {

    public static class Break extends RuntimeException {
        static final Break INSTANCE = new Break();

        private Break() {
        }
    }

    @Override
    public void F(Environment environment) {
        throw Break.INSTANCE;
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
        return "#break";
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
