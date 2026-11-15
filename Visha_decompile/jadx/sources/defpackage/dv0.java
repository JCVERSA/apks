package defpackage;

import org.apache.commons.io.IOUtils;

public final class dv0 {
    public static final dv0 a;
    public static final char[] b;
    public static final byte[] c;

    static {
        dv0 dv0Var = new dv0();
        a = dv0Var;
        b = new char[117];
        c = new byte[126];
        dv0Var.f();
        dv0Var.e();
    }

    public final void a(char c2, char c3) {
        b(c2, c3);
    }

    public final void b(int i, char c2) {
        if (c2 != 'u') {
            b[c2] = (char) i;
        }
    }

    public final void c(char c2, byte b2) {
        d(c2, b2);
    }

    public final void d(int i, byte b2) {
        c[i] = b2;
    }

    public final void e() {
        for (int i = 0; i < 33; i++) {
            d(i, (byte) 127);
        }
        d(9, (byte) 3);
        d(10, (byte) 3);
        d(13, (byte) 3);
        d(32, (byte) 3);
        c(',', (byte) 4);
        c(':', (byte) 5);
        c('{', (byte) 6);
        c('}', (byte) 7);
        c('[', (byte) 8);
        c(']', (byte) 9);
        c('\"', (byte) 1);
        c(IOUtils.DIR_SEPARATOR_WINDOWS, (byte) 2);
    }

    public final void f() {
        for (int i = 0; i < 32; i++) {
            b(i, 'u');
        }
        b(8, 'b');
        b(9, 't');
        b(10, 'n');
        b(12, 'f');
        b(13, 'r');
        a(IOUtils.DIR_SEPARATOR_UNIX, IOUtils.DIR_SEPARATOR_UNIX);
        a('\"', '\"');
        a(IOUtils.DIR_SEPARATOR_WINDOWS, IOUtils.DIR_SEPARATOR_WINDOWS);
    }
}
