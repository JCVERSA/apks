package com.yandex.mobile.ads.impl;

import com.monetization.ads.core.utils.CallbackStackTraceMarker;
import com.yandex.mobile.ads.common.InitializationListener;
import defpackage.c74;
import defpackage.y45;
import defpackage.zfb;
import kotlin.jvm.internal.Lambda;

public final class zl2 implements dt {
    private final InitializationListener a;

    public static final class a extends Lambda implements c74 {
        public a() {
            super(0);
        }

        @Override
        public final Object invoke() {
            zl2.this.a.onInitializationCompleted();
            return zfb.a;
        }
    }

    public zl2(InitializationListener initializationListener) {
        y45.j(initializationListener, "initializationListener");
        this.a = initializationListener;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof zl2) && y45.e(((zl2) obj).a, this.a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    @Override
    public final void onInitializationCompleted() {
        new CallbackStackTraceMarker(new a());
    }
}
