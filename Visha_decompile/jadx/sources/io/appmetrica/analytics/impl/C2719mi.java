package io.appmetrica.analytics.impl;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import io.appmetrica.analytics.coreapi.internal.executors.ICommonExecutor;
import java.util.concurrent.TimeUnit;

public final class C2719mi extends Jm {
    public final RunnableC2694li d;
    public final ICommonExecutor e;

    public C2719mi(@NonNull C2706m5 c2706m5, @NonNull InterfaceC2722ml interfaceC2722ml, @NonNull ICommonExecutor iCommonExecutor) {
        super(c2706m5, interfaceC2722ml);
        this.d = new RunnableC2694li(this);
        this.e = iCommonExecutor;
    }

    @Override
    public final void a() {
        this.e.remove(this.d);
    }

    @Override
    public final void e() {
        this.b.a();
        C2469ch c2469ch = (C2469ch) ((C2706m5) this.a).k.a();
        if (c2469ch.k.a(c2469ch.j)) {
            String str = c2469ch.m;
            if (TextUtils.isEmpty(str) || "-1".equals(str)) {
                return;
            }
            try {
                a(Nd.a((C2706m5) this.a));
            } catch (Throwable unused) {
            }
        }
    }

    public final void f() {
        if (this.c.get()) {
            return;
        }
        this.e.remove(this.d);
        if (((C2469ch) ((C2706m5) this.a).k.a()).g > 0) {
            this.e.executeDelayed(this.d, TimeUnit.SECONDS.toMillis(((C2469ch) ((C2706m5) this.a).k.a()).g));
        }
    }
}
