package com.vungle.ads;

import android.content.Context;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class n extends BaseFullscreenAd {
    public n(Context context, String str, b bVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, str, (i10 & 4) != 0 ? new b() : bVar);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n(Context context, String placementId, b adConfig) {
        super(context, placementId, adConfig);
        Intrinsics.h(context, "context");
        Intrinsics.h(placementId, "placementId");
        Intrinsics.h(adConfig, "adConfig");
    }

    @Override
    public com.vungle.ads.internal.e constructAdInternal$vungle_ads_release(Context context) {
        Intrinsics.h(context, "context");
        return new com.vungle.ads.internal.e(context);
    }
}
