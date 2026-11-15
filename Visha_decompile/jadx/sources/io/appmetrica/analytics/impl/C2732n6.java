package io.appmetrica.analytics.impl;

import android.content.Context;
import android.content.Intent;
import androidx.annotation.VisibleForTesting;
import defpackage.zfb;

public final class C2732n6 extends Eg {
    public final Context f;
    public final C2743nh g;
    public final C2688lc h;
    public final C2956w6 i;

    public C2732n6(Context context, C2602i0 c2602i0, Ck ck, C2743nh c2743nh) {
        super(c2602i0, ck, c2743nh);
        this.f = context;
        this.g = c2743nh;
        this.h = C2879t4.i().j();
        this.i = new C2956w6(context);
    }

    @VisibleForTesting
    public final void a(C2743nh c2743nh) {
        if (c2743nh.a.g != 0) {
            this.i.a(c2743nh);
            return;
        }
        Intent intentA = AbstractC2497dk.a(this.f);
        C2408a6 c2408a6 = c2743nh.a;
        EnumC2588hb enumC2588hb = EnumC2588hb.EVENT_TYPE_UNDEFINED;
        c2408a6.d = 5890;
        intentA.putExtras(c2408a6.d(c2743nh.e.c()));
        try {
            this.f.startService(intentA);
        } catch (Throwable unused) {
            this.i.a(c2743nh);
        }
    }

    @Override
    public final boolean c() {
        a(this.g);
        return false;
    }

    @Override
    public final Object call() {
        a();
        return zfb.a;
    }

    @Override
    public final synchronized void a() {
        try {
            if (this.c) {
                return;
            }
            this.c = true;
            if (this.h.a("AppMetrica")) {
                this.i.a(this.g);
            } else {
                this.a.c();
                this.c = false;
                super.a();
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
