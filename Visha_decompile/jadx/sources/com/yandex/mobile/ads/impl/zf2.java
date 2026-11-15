package com.yandex.mobile.ads.impl;

import android.content.res.TypedArray;
import com.yandex.mobile.ads.R;
import defpackage.y45;

public final class zf2 {
    public static yf2 a(TypedArray typedArray) {
        y45.j(typedArray, "attributes");
        return (yf2) defpackage.hi.f0(yf2.values(), typedArray.getInt(R.styleable.MonetizationAdsInternalMediaView_monetization_internal_video_scale_type, -1));
    }
}
