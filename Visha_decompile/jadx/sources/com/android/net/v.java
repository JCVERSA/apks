package com.android.net;

import android.os.SystemClock;
import android.util.Log;
import com.alibaba.android.arouter.utils.Consts;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

public class v {
    public static String a = "Volley";
    public static boolean b = Log.isLoggable("Volley", 2);

    public static class a {
        public static final boolean a = v.b;
        private final List<C0025a> b = new ArrayList();
        private boolean c = false;

        public static class C0025a {
            public final String a;
            public final long b;
            public final long c;

            public C0025a(String str, long j, long j2) {
                this.a = str;
                this.b = j;
                this.c = j2;
            }
        }

        public final synchronized void a(String str) {
            long j;
            this.c = true;
            if (this.b.size() == 0) {
                j = 0;
            } else {
                long j2 = this.b.get(0).c;
                List<C0025a> list = this.b;
                j = list.get(list.size() - 1).c - j2;
            }
            if (j <= 0) {
                return;
            }
            long j3 = this.b.get(0).c;
            v.b("(%-4d ms) %s", Long.valueOf(j), str);
            for (C0025a c0025a : this.b) {
                long j4 = c0025a.c;
                v.b("(+%-4d) [%2d] %s", Long.valueOf(j4 - j3), Long.valueOf(c0025a.b), c0025a.a);
                j3 = j4;
            }
        }

        public final void finalize() {
            if (this.c) {
                return;
            }
            a("Request on the loose");
            v.c("Marker log finalized without finish() - uncaught exit point for request", new Object[0]);
        }

        public final synchronized void a(String str, long j) {
            if (this.c) {
                throw new IllegalStateException("Marker added to finished log");
            }
            this.b.add(new C0025a(str, j, SystemClock.elapsedRealtime()));
        }
    }

    public static void a(String str, Object... objArr) {
        if (b) {
            Log.v(a, e(str, objArr));
        }
    }

    public static void b(String str, Object... objArr) {
        Log.d(a, e(str, objArr));
    }

    public static void c(String str, Object... objArr) {
        Log.e(a, e(str, objArr));
    }

    public static void d(String str, Object... objArr) {
        Log.wtf(a, e(str, objArr));
    }

    private static String e(String str, Object... objArr) {
        String str2;
        if (objArr != null) {
            str = String.format(Locale.US, str, objArr);
        }
        StackTraceElement[] stackTrace = new Throwable().fillInStackTrace().getStackTrace();
        for (int i = 2; i < stackTrace.length; i++) {
            if (!stackTrace[i].getClass().equals(v.class)) {
                String className = stackTrace[i].getClassName();
                String strSubstring = className.substring(className.lastIndexOf(46) + 1);
                str2 = strSubstring.substring(strSubstring.lastIndexOf(36) + 1) + Consts.DOT + stackTrace[i].getMethodName();
                return String.format(Locale.US, "[%d] %s: %s", Long.valueOf(Thread.currentThread().getId()), str2, str);
            }
        }
        str2 = "<unknown>";
        return String.format(Locale.US, "[%d] %s: %s", Long.valueOf(Thread.currentThread().getId()), str2, str);
    }

    public static void a(Throwable th, String str, Object... objArr) {
        Log.e(a, e(str, objArr), th);
    }
}
