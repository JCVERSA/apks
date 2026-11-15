package defpackage;

import freemarker.core.Environment;

public final class z9b extends ifa {
    public final int l = 0;
    public final int m = 1;
    public final int n = 2;
    public final int o = 3;
    public final boolean p;
    public final boolean q;

    public z9b(boolean z, boolean z2) {
        this.p = z;
        this.q = z2;
    }

    @Override
    public void F(Environment environment) {
    }

    @Override
    public String J(boolean z) {
        StringBuffer stringBuffer = new StringBuffer();
        if (z) {
            stringBuffer.append('<');
        }
        stringBuffer.append(r());
        if (z) {
            stringBuffer.append("/>");
        }
        return stringBuffer.toString();
    }

    @Override
    public boolean Z() {
        return true;
    }

    @Override
    public String r() {
        boolean z = this.p;
        if (z && this.q) {
            return "#t";
        }
        if (z) {
            return "#lt";
        }
        return this.q ? "#rt" : "#nt";
    }

    @Override
    public int s() {
        return 1;
    }

    @Override
    public jw7 t(int i) {
        if (i == 0) {
            return jw7.q;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override
    public Object u(int i) {
        int i2;
        if (i != 0) {
            throw new IndexOutOfBoundsException();
        }
        boolean z = this.p;
        if (z && this.q) {
            i2 = 0;
        } else if (z) {
            i2 = 1;
        } else {
            i2 = this.q ? 2 : 3;
        }
        return new Integer(i2);
    }
}
