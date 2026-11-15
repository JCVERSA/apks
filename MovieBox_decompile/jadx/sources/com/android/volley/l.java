package com.android.volley;

import android.os.SystemClock;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

public class l {

    public static String f18638a = "Volley";

    public static boolean f18639b = Log.isLoggable("Volley", 2);

    private static final String f18640c = l.class.getName();

    static class a {

        public static final boolean f18641c = l.f18639b;

        private final List f18642a = new ArrayList();

        private boolean f18643b = false;

        private static class C0155a {

            public final String f18644a;

            public final long f18645b;

            public final long f18646c;

            public C0155a(String str, long j10, long j11) {
                this.f18644a = str;
                this.f18645b = j10;
                this.f18646c = j11;
            }
        }

        a() {
        }

        private long c() {
            if (this.f18642a.size() == 0) {
                return 0L;
            }
            long j10 = ((C0155a) this.f18642a.get(0)).f18646c;
            List list = this.f18642a;
            return ((C0155a) list.get(list.size() - 1)).f18646c - j10;
        }

        public synchronized void a(String str, long j10) {
            if (this.f18643b) {
                throw new IllegalStateException("Marker added to finished log");
            }
            this.f18642a.add(new C0155a(str, j10, SystemClock.elapsedRealtime()));
        }

        public synchronized void b(String str) {
            this.f18643b = true;
            long jC = c();
            if (jC <= 0) {
                return;
            }
            long j10 = ((C0155a) this.f18642a.get(0)).f18646c;
            l.b("(%-4d ms) %s", Long.valueOf(jC), str);
            for (C0155a c0155a : this.f18642a) {
                long j11 = c0155a.f18646c;
                l.b("(+%-4d) [%2d] %s", Long.valueOf(j11 - j10), Long.valueOf(c0155a.f18645b), c0155a.f18644a);
                j10 = j11;
            }
        }

        protected void finalize() {
            if (this.f18643b) {
                return;
            }
            b("Request on the loose");
            l.c("Marker log finalized without finish() - uncaught exit point for request", new Object[0]);
        }
    }

    private static String a(String str, Object... objArr) {
        String str2;
        if (objArr != null) {
            str = String.format(Locale.US, str, objArr);
        }
        StackTraceElement[] stackTrace = new Throwable().fillInStackTrace().getStackTrace();
        for (int i10 = 2; i10 < stackTrace.length; i10++) {
            if (!stackTrace[i10].getClassName().equals(f18640c)) {
                String className = stackTrace[i10].getClassName();
                String strSubstring = className.substring(className.lastIndexOf(46) + 1);
                str2 = strSubstring.substring(strSubstring.lastIndexOf(36) + 1) + "." + stackTrace[i10].getMethodName();
                return String.format(Locale.US, "[%d] %s: %s", Long.valueOf(Thread.currentThread().getId()), str2, str);
            }
        }
        str2 = "<unknown>";
        return String.format(Locale.US, "[%d] %s: %s", Long.valueOf(Thread.currentThread().getId()), str2, str);
    }

    public static void b(String str, Object... objArr) {
        a(str, objArr);
    }

    public static void c(String str, Object... objArr) {
        Log.e(f18638a, a(str, objArr));
    }

    public static void d(Throwable th2, String str, Object... objArr) {
        Log.e(f18638a, a(str, objArr), th2);
    }

    public static void e(String str, Object... objArr) {
        if (f18639b) {
            Log.v(f18638a, a(str, objArr));
        }
    }

    public static void f(String str, Object... objArr) {
        Log.wtf(f18638a, a(str, objArr));
    }
}
