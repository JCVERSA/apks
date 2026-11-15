package com.vungle.ads;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.jvm.internal.Intrinsics;

public final class w extends p {
    private Long value;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w(Sdk$SDKMetric.SDKMetricType metricType) {
        super(metricType);
        Intrinsics.h(metricType, "metricType");
    }

    public final void addValue(long j10) {
        Long l10 = this.value;
        this.value = Long.valueOf((l10 != null ? l10.longValue() : 0L) + j10);
    }

    public final Long m451getValue() {
        return this.value;
    }

    public final void markTime() {
        this.value = Long.valueOf(System.currentTimeMillis());
    }

    public final void setValue(Long l10) {
        this.value = l10;
    }

    @Override
    public long getValue() {
        Long l10 = this.value;
        if (l10 != null) {
            return l10.longValue();
        }
        return 0L;
    }
}
