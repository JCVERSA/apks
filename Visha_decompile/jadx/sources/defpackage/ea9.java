package defpackage;

import java.security.PrivilegedAction;

public final class ea9 implements PrivilegedAction {
    public final String a;

    public ea9(String str) {
        this.a = str;
    }

    @Override
    public Object run() {
        return System.getProperty(this.a);
    }
}
