package com.mq.mgmi.client.message;

import defpackage.bmd;
import defpackage.cld;
import defpackage.f9d;
import defpackage.g6d;
import defpackage.ggd;
import defpackage.hjd;
import defpackage.ord;
import defpackage.tod;
import defpackage.tud;
import defpackage.v7d;
import defpackage.w7d;
import defpackage.yad;
import java.util.TimerTask;
import java.util.concurrent.ScheduledExecutorService;

public class h implements f9d {
    public static final String e = "com.mq.mgmi.client.message.h";
    public static final Object f = new Object();
    public String b;
    public hjd c;
    public boolean d;

    public class c extends TimerTask {
        private c() {
        }

        @Override
        public final void run() {
            h.a(h.this);
            String unused = h.e;
            throw null;
        }

        public c(h hVar, byte b) {
            this();
        }
    }

    public h(String str, String str2, cld cldVar, ord ordVar, ScheduledExecutorService scheduledExecutorService) {
        w7d.a("com.mq.mgmi.client.message.internal.nls.logcat", e);
        this.d = false;
        throw null;
    }

    public static g6d a(h hVar) {
        hVar.getClass();
        return null;
    }

    public final yad b(String str, tod todVar, v7d v7dVar) {
        throw null;
    }

    @Override
    public void close() {
        throw null;
    }

    public final ggd d(v7d v7dVar) {
        throw null;
    }

    public final ggd e(bmd bmdVar, Object obj, v7d v7dVar) {
        throw null;
    }

    public final ggd g(String[] strArr, int[] iArr, v7d v7dVar) {
        tud.b(strArr[0], true);
        throw null;
    }

    public final void h(hjd hjdVar) {
        this.c = hjdVar;
        throw null;
    }

    public final boolean k() {
        throw null;
    }

    public final void n() {
        throw null;
    }

    @Override
    public final String a() {
        return this.b;
    }
}
