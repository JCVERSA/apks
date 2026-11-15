package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.AppMetricaConfig;
import io.appmetrica.analytics.impl.C2628j2;

public final class C2628j2 {
    public static final boolean a(Throwable th) {
        return true;
    }

    public final Ma a(Context context, AppMetricaConfig appMetricaConfig, InterfaceC2413ab interfaceC2413ab) {
        return new C2892th(new C2663kc(interfaceC2413ab, appMetricaConfig), new InterfaceC2856s6() {
            @Override
            public final boolean a(Throwable th) {
                return C2628j2.a(th);
            }
        }, appMetricaConfig.crashTransformer, new T9(context));
    }
}
