package defpackage;

import java.security.PrivilegedAction;

public final class lq5 implements PrivilegedAction {
    public final String a;

    public lq5(String str) {
        this.a = str;
    }

    @Override
    public Object run() {
        return System.getProperty(this.a, null);
    }
}
