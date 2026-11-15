package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import io.appmetrica.analytics.billinginterface.internal.config.BillingConfig;
import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;

public final class C2852s2 implements ProtobufConverter {
    @Override
    @NonNull
    public final Ql fromModel(@NonNull BillingConfig billingConfig) {
        Ql ql = new Ql();
        ql.a = billingConfig.sendFrequencySeconds;
        ql.b = billingConfig.firstCollectingInappMaxAgeSeconds;
        return ql;
    }

    @Override
    @NonNull
    public final Object toModel(@NonNull Object obj) {
        Ql ql = (Ql) obj;
        return new BillingConfig(ql.a, ql.b);
    }

    @NonNull
    public final BillingConfig a(@NonNull Ql ql) {
        return new BillingConfig(ql.a, ql.b);
    }
}
