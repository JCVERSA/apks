package org.apache.tools.ant.types;

import org.apache.tools.ant.BuildException;

public abstract class f {

    protected String f68305a;

    private int f68306b = -1;

    protected f() {
    }

    public final int a() {
        return this.f68306b;
    }

    public final String b() {
        return this.f68305a;
    }

    public abstract String[] c();

    public final int d(String str) {
        String[] strArrC = c();
        if (strArrC != null && str != null) {
            for (int i10 = 0; i10 < strArrC.length; i10++) {
                if (str.equals(strArrC[i10])) {
                    return i10;
                }
            }
        }
        return -1;
    }

    public final void e(String str) {
        int iD = d(str);
        if (iD != -1) {
            this.f68306b = iD;
            this.f68305a = str;
        } else {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(str);
            stringBuffer.append(" is not a legal value for this attribute");
            throw new BuildException(stringBuffer.toString());
        }
    }

    public String toString() {
        return b();
    }
}
