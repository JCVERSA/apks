package com.apm.insight.b;

import android.os.SystemClock;
import com.apm.insight.runtime.m;
import com.mbridge.msdk.interstitial.view.MBInterstitialActivity;

public final class c {

    private static long f18737b;

    private final b f18738a;

    private boolean f18739c = false;

    private final Runnable f18740d;

    c(b bVar) {
        Runnable runnable = new Runnable() {
            @Override
            public final void run() throws Throwable {
                if (c.this.f18739c) {
                    return;
                }
                c.this.f18738a.d();
                long unused = c.f18737b = SystemClock.uptimeMillis();
                if (com.apm.insight.runtime.i.a().b()) {
                    m.a().a(c.this.f18740d, 500L);
                } else {
                    m.a().a(c.this.f18740d, 500L);
                }
                com.apm.insight.runtime.b.a(c.f18737b);
            }
        };
        this.f18740d = runnable;
        this.f18738a = bVar;
        m.a().a(runnable, 5000L);
    }

    public static boolean c() {
        return SystemClock.uptimeMillis() - f18737b <= MBInterstitialActivity.WEB_LOAD_TIME;
    }

    public final void b() {
        this.f18739c = true;
    }

    public final void a() {
        if (this.f18739c) {
            return;
        }
        m.a().a(this.f18740d, 5000L);
    }
}
