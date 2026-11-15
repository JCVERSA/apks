package androidx.media3.common.util;

import android.text.TextUtils;
import android.util.Log;
import java.net.UnknownHostException;

public abstract class u {

    private static int f10149b = 0;

    private static boolean f10150c = true;

    private static final Object f10148a = new Object();

    private static a f10151d = a.f10152a;

    public interface a {

        public static final a f10152a = new C0083a();

        class C0083a implements a {
            C0083a() {
            }

            @Override
            public void a(String str, String str2, Throwable th2) {
                u.a(str2, th2);
            }

            @Override
            public void b(String str, String str2, Throwable th2) {
                u.a(str2, th2);
            }

            @Override
            public void e(String str, String str2, Throwable th2) {
                Log.e(str, u.a(str2, th2));
            }

            @Override
            public void w(String str, String str2, Throwable th2) {
                Log.w(str, u.a(str2, th2));
            }
        }

        void a(String str, String str2, Throwable th2);

        void b(String str, String str2, Throwable th2);

        void e(String str, String str2, Throwable th2);

        void w(String str, String str2, Throwable th2);
    }

    public static String a(String str, Throwable th2) {
        String strE = e(th2);
        if (TextUtils.isEmpty(strE)) {
            return str;
        }
        return str + "\n  " + strE.replace("\n", "\n  ") + '\n';
    }

    public static void b(String str, String str2) {
        synchronized (f10148a) {
            try {
                if (f10149b == 0) {
                    f10151d.a(str, str2, null);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void c(String str, String str2) {
        synchronized (f10148a) {
            try {
                if (f10149b <= 3) {
                    f10151d.e(str, str2, null);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void d(String str, String str2, Throwable th2) {
        synchronized (f10148a) {
            try {
                if (f10149b <= 3) {
                    f10151d.e(str, str2, th2);
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    public static String e(Throwable th2) {
        if (th2 == null) {
            return null;
        }
        synchronized (f10148a) {
            try {
                if (g(th2)) {
                    return "UnknownHostException (no network)";
                }
                if (f10150c) {
                    return Log.getStackTraceString(th2).trim().replace("\t", "    ");
                }
                return th2.getMessage();
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    public static void f(String str, String str2) {
        synchronized (f10148a) {
            try {
                if (f10149b <= 1) {
                    f10151d.b(str, str2, null);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private static boolean g(Throwable th2) {
        while (th2 != null) {
            if (th2 instanceof UnknownHostException) {
                return true;
            }
            th2 = th2.getCause();
        }
        return false;
    }

    public static void h(String str, String str2) {
        synchronized (f10148a) {
            try {
                if (f10149b <= 2) {
                    f10151d.w(str, str2, null);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void i(String str, String str2, Throwable th2) {
        synchronized (f10148a) {
            try {
                if (f10149b <= 2) {
                    f10151d.w(str, str2, th2);
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }
}
