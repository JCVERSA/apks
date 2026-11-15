package defpackage;

import android.text.TextUtils;
import android.util.Log;
import java.net.UnknownHostException;

public abstract class op5 {
    public static int b = 0;
    public static boolean c = true;
    public static final Object a = new Object();
    public static a d = a.a;

    public interface a {
        public static final a a = new C0431a();

        public class C0431a implements a {
            @Override
            public void d(String str, String str2) {
                Log.d(str, str2);
            }

            @Override
            public void e(String str, String str2) {
                Log.e(str, str2);
            }

            @Override
            public void i(String str, String str2) {
                Log.i(str, str2);
            }

            @Override
            public void w(String str, String str2) {
                Log.w(str, str2);
            }
        }

        void d(String str, String str2);

        void e(String str, String str2);

        void i(String str, String str2);

        void w(String str, String str2);
    }

    public static String a(String str, Throwable th) {
        String strE = e(th);
        if (TextUtils.isEmpty(strE)) {
            return str;
        }
        return str + "\n  " + strE.replace("\n", "\n  ") + '\n';
    }

    public static void b(String str, String str2) {
        synchronized (a) {
            try {
                if (b == 0) {
                    d.d(str, str2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void c(String str, String str2) {
        synchronized (a) {
            try {
                if (b <= 3) {
                    d.e(str, str2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void d(String str, String str2, Throwable th) {
        c(str, a(str2, th));
    }

    public static String e(Throwable th) {
        synchronized (a) {
            try {
                if (th == null) {
                    return null;
                }
                if (h(th)) {
                    return "UnknownHostException (no network)";
                }
                if (c) {
                    return Log.getStackTraceString(th).trim().replace("\t", "    ");
                }
                return th.getMessage();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void f(String str, String str2) {
        synchronized (a) {
            try {
                if (b <= 1) {
                    d.i(str, str2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void g(String str, String str2, Throwable th) {
        f(str, a(str2, th));
    }

    public static boolean h(Throwable th) {
        while (th != null) {
            if (th instanceof UnknownHostException) {
                return true;
            }
            th = th.getCause();
        }
        return false;
    }

    public static void i(String str, String str2) {
        synchronized (a) {
            try {
                if (b <= 2) {
                    d.w(str, str2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void j(String str, String str2, Throwable th) {
        i(str, a(str2, th));
    }
}
