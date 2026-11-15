package io.appmetrica.analytics.impl;

import android.os.Bundle;
import android.os.Handler;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.InputDeviceCompat;
import io.appmetrica.analytics.DeferredDeeplinkListener;
import io.appmetrica.analytics.DeferredDeeplinkParametersListener;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
import java.util.Set;

public final class Yf implements Sf {
    public final boolean a;
    public final C2744ni b;
    public final Ke c;
    public final R7 d;
    public final C2568gg e;
    public final Handler f;

    public Yf(C2744ni c2744ni, Ke ke, @NonNull Handler handler) {
        this(c2744ni, ke, handler, ke.s());
    }

    public final void a() {
        if (this.a) {
            return;
        }
        C2744ni c2744ni = this.b;
        ResultReceiverC2617ig resultReceiverC2617ig = new ResultReceiverC2617ig(this.f, this);
        c2744ni.getClass();
        Bundle bundle = new Bundle();
        bundle.putParcelable("io.appmetrica.analytics.impl.referrer.common.ReferrerResultReceiver", resultReceiverC2617ig);
        PublicLogger anonymousInstance = PublicLogger.getAnonymousInstance();
        Set set = C9.a;
        EnumC2588hb enumC2588hb = EnumC2588hb.EVENT_TYPE_UNDEFINED;
        C2506e4 c2506e4 = new C2506e4("", "", InputDeviceCompat.SOURCE_TOUCHSCREEN, 0, anonymousInstance);
        c2506e4.m = bundle;
        W4 w4 = c2744ni.a;
        c2744ni.a(C2744ni.a(c2506e4, w4), w4, 1, null);
    }

    public Yf(C2744ni c2744ni, Ke ke, Handler handler, boolean z) {
        this(c2744ni, ke, handler, z, new R7(z), new C2568gg());
    }

    public Yf(C2744ni c2744ni, Ke ke, Handler handler, boolean z, R7 r7, C2568gg c2568gg) {
        this.b = c2744ni;
        this.c = ke;
        this.a = z;
        this.d = r7;
        this.e = c2568gg;
        this.f = handler;
    }

    @Override
    public final void a(@Nullable C2468cg c2468cg) {
        String str = c2468cg == null ? null : c2468cg.a;
        if (this.a) {
            return;
        }
        synchronized (this) {
            R7 r7 = this.d;
            this.e.getClass();
            r7.d = C2568gg.a(str);
            r7.a();
        }
    }

    public final synchronized void a(@NonNull DeferredDeeplinkParametersListener deferredDeeplinkParametersListener) {
        try {
            R7 r7 = this.d;
            r7.c = deferredDeeplinkParametersListener;
            if (r7.a) {
                r7.a(1);
            } else {
                r7.a();
            }
            this.c.u();
        } catch (Throwable th) {
            this.c.u();
            throw th;
        }
    }

    public final synchronized void a(@NonNull DeferredDeeplinkListener deferredDeeplinkListener) {
        try {
            R7 r7 = this.d;
            r7.b = deferredDeeplinkListener;
            if (r7.a) {
                r7.a(1);
            } else {
                r7.a();
            }
            this.c.u();
        } catch (Throwable th) {
            this.c.u();
            throw th;
        }
    }
}
