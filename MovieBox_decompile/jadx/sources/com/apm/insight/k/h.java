package com.apm.insight.k;

import android.content.Context;
import com.apm.insight.nativecrash.NativeImpl;
import com.apm.insight.runtime.m;
import com.apm.insight.runtime.o;

public final class h implements Runnable {

    private Context f19025a;

    private h(Context context) {
        this.f19025a = context;
    }

    public static boolean a() {
        return b.a().c() || !com.apm.insight.l.a.b(com.apm.insight.e.g());
    }

    @Override
    public final void run() {
        try {
            com.apm.insight.b.f.a(this.f19025a).a().f();
        } catch (Throwable unused) {
        }
        try {
            if (com.apm.insight.l.a.b(this.f19025a)) {
                b.a().a(com.apm.insight.l.k.b(this.f19025a));
            } else {
                NativeImpl.j();
            }
            o.a().a(com.apm.insight.e.a().b(), com.apm.insight.entity.b.b());
            if (m.a().a() == null) {
            }
        } catch (Throwable th2) {
            try {
                com.apm.insight.a.b(th2);
            } finally {
                o.a().a(com.apm.insight.e.a().b(), com.apm.insight.entity.b.b());
                if (m.a().a() != null) {
                    com.apm.insight.j.d.a(m.a().a(), this.f19025a).a();
                }
            }
        }
    }

    public static void a(Context context) {
        m.a().a(new h(context), 0L);
    }
}
