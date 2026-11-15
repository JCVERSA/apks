package defpackage;

import freemarker.core.Environment;

public final class da1 extends ifa {
    public final String l;

    public da1(String str) {
        this.l = str;
    }

    @Override
    public void F(Environment environment) {
    }

    @Override
    public String J(boolean z) {
        if (!z) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("comment ");
            stringBuffer.append(n0a.D(this.l.trim()));
            return stringBuffer.toString();
        }
        StringBuffer stringBuffer2 = new StringBuffer();
        stringBuffer2.append("<#--");
        stringBuffer2.append(this.l);
        stringBuffer2.append("-->");
        return stringBuffer2.toString();
    }

    @Override
    public String r() {
        return "#--...--";
    }

    @Override
    public int s() {
        return 1;
    }

    @Override
    public jw7 t(int i) {
        if (i == 0) {
            return jw7.E;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override
    public Object u(int i) {
        if (i == 0) {
            return this.l;
        }
        throw new IndexOutOfBoundsException();
    }
}
