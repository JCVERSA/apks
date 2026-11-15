package com.yandex.mobile.ads.impl;

import android.os.SystemClock;
import android.util.Log;
import java.util.ArrayList;

public final class ti2 {
    public static boolean a = Log.isLoggable("Volley", 2);

    public static class a {
        public static final boolean c = ti2.a;
        private final ArrayList a = new ArrayList();
        private boolean b = false;

        public static class C0330a {
            public final String a;
            public final long b;
            public final long c;

            public C0330a(String str, long j, long j2) {
                this.a = str;
                this.b = j;
                this.c = j2;
            }
        }

        public final synchronized void a(String str, long j) {
            if (this.b) {
                throw new IllegalStateException("Marker added to finished log");
            }
            this.a.add(new C0330a(str, j, SystemClock.elapsedRealtime()));
        }

        public final void finalize() throws Throwable {
            if (this.b) {
                return;
            }
            a("Request on the loose");
            sp0.b(new Object[0]);
        }

        public final synchronized void a(String str) {
            long j;
            this.b = true;
            if (this.a.size() == 0) {
                j = 0;
            } else {
                long j2 = ((C0330a) this.a.get(0)).c;
                ArrayList arrayList = this.a;
                j = ((C0330a) arrayList.get(arrayList.size() - 1)).c - j2;
            }
            if (j <= 0) {
                return;
            }
            long j3 = ((C0330a) this.a.get(0)).c;
            sp0.a(Long.valueOf(j), str);
            for (C0330a c0330a : this.a) {
                long j4 = c0330a.c;
                sp0.a(Long.valueOf(j4 - j3), Long.valueOf(c0330a.b), c0330a.a);
                j3 = j4;
            }
        }
    }
}
