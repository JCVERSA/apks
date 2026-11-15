package defpackage;

import java.io.IOException;
import org.acra.ErrorReporter;

public final class c {
    public static final c a = new c();
    public static boolean b;
    public static final String c;
    public static e d;
    public static ErrorReporter e;

    static {
        String simpleName = c.class.getSimpleName();
        y45.i(simpleName, "ACRA::class.java.simpleName");
        c = simpleName;
        d = new sb();
        e = o1a.a.b();
    }

    public static final boolean b() {
        String strA = a.a();
        if (b) {
            d.d(c, "ACRA processName='" + strA + "'");
        }
        return strA != null && g1a.D(strA, ":acra", false, 2, null);
    }

    public final String a() {
        try {
            String strA = new ty9("/proc/self/cmdline").a();
            int length = strA.length() - 1;
            int i = 0;
            boolean z = false;
            while (i <= length) {
                boolean z2 = y45.l(strA.charAt(!z ? i : length), 32) <= 0;
                if (z) {
                    if (!z2) {
                        break;
                    }
                    length--;
                } else if (z2) {
                    i++;
                } else {
                    z = true;
                }
            }
            return strA.subSequence(i, length + 1).toString();
        } catch (IOException unused) {
            return null;
        }
    }
}
