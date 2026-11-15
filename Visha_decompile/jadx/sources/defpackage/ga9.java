package defpackage;

import java.security.PrivilegedAction;

public final class ga9 implements PrivilegedAction {
    public final String a;
    public final int b;

    public ga9(String str, int i) {
        this.a = str;
        this.b = i;
    }

    @Override
    public Object run() {
        return Integer.getInteger(this.a, this.b);
    }
}
