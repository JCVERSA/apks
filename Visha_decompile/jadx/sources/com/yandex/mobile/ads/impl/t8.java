package com.yandex.mobile.ads.impl;

import android.os.Bundle;
import defpackage.af5;
import defpackage.xq8;
import kotlin.jvm.internal.MutablePropertyReference1Impl;

public final class t8 implements q3 {
    static final af5[] b = {xq8.f(new MutablePropertyReference1Impl(t8.class, "adEventsReceiver", "getAdEventsReceiver()Lcom/monetization/ads/base/AdEventsReceiver;", 0))};
    private final go1 a = ho1.a(null);

    @Override
    public final void a(int i, Bundle bundle) {
        q3 q3Var = (q3) this.a.getValue(this, b[0]);
        if (q3Var != null) {
            q3Var.a(i, bundle);
            sp0.d(Integer.valueOf(i));
        }
    }

    public final void a(q3 q3Var) {
        this.a.setValue(this, b[0], q3Var);
    }
}
