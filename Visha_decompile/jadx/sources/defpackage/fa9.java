package defpackage;

import java.security.PrivilegedAction;

public final class fa9 implements PrivilegedAction {
    public final String a;
    public final String b;

    public fa9(String str, String str2) {
        this.a = str;
        this.b = str2;
    }

    @Override
    public Object run() {
        return System.getProperty(this.a, this.b);
    }
}
