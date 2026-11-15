package com.google.android.exoplayer2.util;

import android.text.TextUtils;
import android.util.Log;
import java.net.UnknownHostException;

public abstract class s {

    private static int f26882b = 0;

    private static boolean f26883c = true;

    private static final Object f26881a = new Object();

    private static a f26884d = a.f26885a;

    private static String a(String str, Throwable th2) {
        String strE = e(th2);
        if (TextUtils.isEmpty(strE)) {
            return str;
        }
        return str + "\n  " + strE.replace("\n", "\n  ") + '\n';
    }

    public static void b(String str, String str2) {
        synchronized (f26881a) {
            try {
                if (f26882b == 0) {
                    f26884d.d(str, str2);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void c(String str, String str2) {
        synchronized (f26881a) {
            try {
                if (f26882b <= 3) {
                    f26884d.e(str, str2);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void d(String str, String str2, Throwable th2) {
        c(str, a(str2, th2));
    }

    public static String e(Throwable th2) {
        synchronized (f26881a) {
            try {
                if (th2 == null) {
                    return null;
                }
                if (h(th2)) {
                    return "UnknownHostException (no network)";
                }
                if (f26883c) {
                    return Log.getStackTraceString(th2).trim().replace("\t", "    ");
                }
                return th2.getMessage();
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    public static void f(String str, String str2) {
        synchronized (f26881a) {
            try {
                if (f26882b <= 1) {
                    f26884d.i(str, str2);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void g(String str, String str2, Throwable th2) {
        f(str, a(str2, th2));
    }

    private static boolean h(Throwable th2) {
        while (th2 != null) {
            if (th2 instanceof UnknownHostException) {
                return true;
            }
            th2 = th2.getCause();
        }
        return false;
    }

    public static void i(String str, String str2) {
        synchronized (f26881a) {
            try {
                if (f26882b <= 2) {
                    f26884d.w(str, str2);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void j(String str, String str2, Throwable th2) {
        i(str, a(str2, th2));
    }

    public interface a {

        public static final a f26885a = new C0358a();

        void d(String str, String str2);

        void e(String str, String str2);

        void i(String str, String str2);

        void w(String str, String str2);

        class C0358a implements a {
            C0358a() {
            }

            @Override
            public void e(String str, String str2) {
                Log.e(str, str2);
            }

            @Override
            public void w(String str, String str2) {
                Log.w(str, str2);
            }

            @Override
            public void d(String str, String str2) {
            }

            @Override
            public void i(String str, String str2) {
            }
        }
    }
}
