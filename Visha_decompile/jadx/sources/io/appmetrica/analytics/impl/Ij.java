package io.appmetrica.analytics.impl;

import android.content.Context;
import androidx.annotation.NonNull;
import io.appmetrica.analytics.coreutils.internal.services.PackageManagerUtils;
import io.appmetrica.analytics.coreutils.internal.time.TimePassedChecker;
import io.appmetrica.analytics.internal.CounterConfigurationReporterType;

public final class Ij extends C2706m5 {
    public Ij(@NonNull Context context, @NonNull Hl hl, @NonNull C2532f5 c2532f5, @NonNull F4 f4, @NonNull Zg zg, @NonNull AbstractC2656k5 abstractC2656k5, @NonNull C2507e5 c2507e5) {
        this(context, c2532f5, new C2502e0(), new TimePassedChecker(), new C2830r5(context, c2532f5, f4, abstractC2656k5, hl, zg, C2910ua.j().w().d(), PackageManagerUtils.getAppVersionCodeInt(context), C2910ua.j().k(), c2507e5), f4);
    }

    @Override
    @NonNull
    public final CounterConfigurationReporterType c() {
        return CounterConfigurationReporterType.SELF_SDK;
    }

    public Ij(Context context, C2532f5 c2532f5, C2502e0 c2502e0, TimePassedChecker timePassedChecker, C2830r5 c2830r5, F4 f4) {
        super(context, c2532f5, c2502e0, timePassedChecker, c2830r5, f4);
    }
}
