package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import io.appmetrica.analytics.AppMetricaConfig;

public final class C2663kc extends AbstractC2898tn {
    public final AppMetricaConfig b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2663kc(@NonNull InterfaceC2413ab interfaceC2413ab, @NonNull AppMetricaConfig appMetricaConfig) {
        super(interfaceC2413ab);
        String str = appMetricaConfig.apiKey;
        this.b = appMetricaConfig;
    }

    @NonNull
    public final InterfaceC2438bb a() {
        return this.a.a().b(this.b);
    }
}
