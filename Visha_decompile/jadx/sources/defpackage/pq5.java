package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.alibaba.android.arouter.utils.Consts;
import java.io.PrintStream;
import java.security.AccessControlException;
import java.security.AccessController;
import java.util.HashMap;
import java.util.Map;

public abstract class pq5 {
    public static final String[] a;
    public static int b;
    public static tq5 c;
    public static boolean d;
    public static String e;
    public static final Map f;
    public static Class g;
    public static Class h;

    static {
        String[] strArr = {null, "JUL", "org.apache.log.Logger", "Avalon", "org.apache.log4j.Logger", "Log4j", "org.apache.commons.logging.Log", "CommonsLogging", "org.slf4j.Logger", "SLF4J"};
        a = strArr;
        if (strArr.length / 2 != 5) {
            throw new AssertionError();
        }
        e = "";
        f = new HashMap();
    }

    public static Class a(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e2) {
            throw new NoClassDefFoundError().initCause(e2);
        }
    }

    public static tq5 b(int i) throws Throwable {
        if (i != -1) {
            return c(i);
        }
        int i2 = 5;
        int i3 = 5;
        while (i3 >= -1) {
            if (p(i3)) {
                if (i3 == 3 && m()) {
                    i3 = i2;
                }
                try {
                    return c(i3);
                } catch (ClassNotFoundException unused) {
                    continue;
                } catch (Throwable th) {
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("Unexpected error when initializing logging for \"");
                    stringBuffer.append(j(i3));
                    stringBuffer.append("\".");
                    u(stringBuffer.toString(), th);
                }
            }
            i3--;
        }
        w("Auto detecton couldn't set up any logger libraries; FreeMarker logging suppressed.");
        return new x0d();
    }

    public static tq5 c(int i) throws ClassNotFoundException {
        String strI = i(i);
        if (strI == null) {
            if (i == 1) {
                return new r0d();
            }
            if (i == 0) {
                return new x0d();
            }
            throw new RuntimeException("Bug");
        }
        Class.forName(strI);
        String strJ = j(i);
        try {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("freemarker.log._");
            stringBuffer.append(strJ);
            stringBuffer.append("LoggerFactory");
            return (tq5) Class.forName(stringBuffer.toString()).newInstance();
        } catch (Exception e2) {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append("Unexpected error when creating logger factory for \"");
            stringBuffer2.append(strJ);
            stringBuffer2.append("\".");
            throw new RuntimeException(stringBuffer2.toString(), e2);
        }
    }

    public static void f(boolean z) throws Throwable {
        if (c != null) {
            return;
        }
        Class clsA = g;
        if (clsA == null) {
            clsA = a("freemarker.log.Logger");
            g = clsA;
        }
        synchronized (clsA) {
            try {
                if (c != null) {
                    return;
                }
                String strL = l("org.freemarker.loggerLibrary");
                int i = -1;
                boolean z2 = true;
                if (strL != null) {
                    strL = strL.trim();
                    int i2 = -1;
                    boolean z3 = false;
                    do {
                        if (strL.equalsIgnoreCase(j(i2))) {
                            z3 = true;
                        } else {
                            i2++;
                        }
                        if (i2 > 5) {
                            break;
                        }
                    } while (!z3);
                    if (!z3) {
                        StringBuffer stringBuffer = new StringBuffer();
                        stringBuffer.append("Ignored invalid \"org.freemarker.loggerLibrary\" system property value: \"");
                        stringBuffer.append(strL);
                        stringBuffer.append("\"");
                        w(stringBuffer.toString());
                        if (z) {
                            return;
                        }
                    }
                    if (z3) {
                        i = i2;
                    }
                } else if (z) {
                    return;
                }
                try {
                    x(i);
                    if (strL != null) {
                        d = true;
                    }
                } catch (Throwable th) {
                    if (z && strL != null) {
                        z2 = false;
                    }
                    StringBuffer stringBuffer2 = new StringBuffer();
                    stringBuffer2.append("Couldn't set up logger for \"");
                    stringBuffer2.append(j(i));
                    stringBuffer2.append("\"");
                    stringBuffer2.append(z2 ? "; logging disabled" : Consts.DOT);
                    u(stringBuffer2.toString(), th);
                    if (z2) {
                        try {
                            x(0);
                        } catch (ClassNotFoundException e2) {
                            throw new RuntimeException("Bug", e2);
                        }
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static String i(int i) {
        if (i == -1 || i == 0) {
            return null;
        }
        return a[(i - 1) * 2];
    }

    public static String j(int i) {
        if (i == -1) {
            return TtmlNode.TEXT_EMPHASIS_AUTO;
        }
        return i == 0 ? "none" : a[((i - 1) * 2) + 1];
    }

    public static pq5 k(String str) {
        pq5 pq5VarA;
        if (e.length() != 0) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(e);
            stringBuffer.append(str);
            str = stringBuffer.toString();
        }
        Map map = f;
        synchronized (map) {
            try {
                pq5VarA = (pq5) map.get(str);
                if (pq5VarA == null) {
                    f(false);
                    pq5VarA = c.a(str);
                    map.put(str, pq5VarA);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return pq5VarA;
    }

    public static String l(String str) throws Throwable {
        try {
            return (String) AccessController.doPrivileged(new lq5(str));
        } catch (AccessControlException unused) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Insufficient permissions to read system property \"");
            stringBuffer.append(str);
            stringBuffer.append("\".");
            w(stringBuffer.toString());
            return null;
        } catch (Throwable th) {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append("Failed to read system property \"");
            stringBuffer2.append(str);
            stringBuffer2.append("\".");
            u(stringBuffer2.toString(), th);
            return null;
        }
    }

    public static boolean m() {
        try {
            Class.forName(i(3));
            Class.forName(i(5));
            try {
                Class.forName("org.apache.log4j.FileAppender");
                return false;
            } catch (ClassNotFoundException unused) {
                String str = s0d.a;
                return ((Boolean) s0d.class.getMethod("test", null).invoke(null, null)).booleanValue();
            }
        } catch (Throwable unused2) {
            return false;
        }
    }

    public static boolean p(int i) {
        return (i == -1 || i == 0 || i == 5 || i == 4) ? false : true;
    }

    public static void u(String str, Throwable th) throws Throwable {
        v(true, str, th);
    }

    public static void v(boolean z, String str, Throwable th) throws Throwable {
        boolean z2;
        boolean z3;
        Class clsA = g;
        if (clsA == null) {
            clsA = a("freemarker.log.Logger");
            g = clsA;
        }
        synchronized (clsA) {
            try {
                tq5 tq5Var = c;
                z2 = false;
                z3 = (tq5Var == null || (tq5Var instanceof x0d)) ? false : true;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (z3) {
            try {
                pq5 pq5VarK = k("freemarker.logger");
                if (z) {
                    pq5VarK.g(str);
                } else {
                    pq5VarK.z(str);
                }
            } catch (Throwable unused) {
            }
        }
        z2 = z3;
        if (z2) {
            return;
        }
        PrintStream printStream = System.err;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(z ? "ERROR" : "WARN");
        stringBuffer.append(" ");
        Class clsA2 = h;
        if (clsA2 == null) {
            clsA2 = a("freemarker.log.LoggerFactory");
            h = clsA2;
        }
        stringBuffer.append(clsA2.getName());
        stringBuffer.append(": ");
        stringBuffer.append(str);
        printStream.println(stringBuffer.toString());
        if (th != null) {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append("\tException: ");
            stringBuffer2.append(y(th));
            printStream.println(stringBuffer2.toString());
            while (th.getCause() != null) {
                th = th.getCause();
                PrintStream printStream2 = System.err;
                StringBuffer stringBuffer3 = new StringBuffer();
                stringBuffer3.append("\tCaused by: ");
                stringBuffer3.append(y(th));
                printStream2.println(stringBuffer3.toString());
            }
        }
    }

    public static void w(String str) throws Throwable {
        v(false, str, null);
    }

    public static synchronized void x(int i) {
        c = b(i);
        b = i;
    }

    public static String y(Object obj) {
        if (obj == null) {
            return null;
        }
        try {
            return obj.toString();
        } catch (Throwable unused) {
            return obj.getClass().getName();
        }
    }

    public abstract void A(String str, Throwable th);

    public abstract void d(String str);

    public abstract void e(String str, Throwable th);

    public abstract void g(String str);

    public abstract void h(String str, Throwable th);

    public abstract void n(String str);

    public abstract void o(String str, Throwable th);

    public abstract boolean q();

    public abstract boolean r();

    public abstract boolean s();

    public abstract boolean t();

    public abstract void z(String str);
}
