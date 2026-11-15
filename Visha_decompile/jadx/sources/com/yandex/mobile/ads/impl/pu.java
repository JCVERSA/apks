package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import com.yandex.mobile.ads.R;
import defpackage.y45;

public final class pu {
    public static ou a(Context context, View view, AttributeSet attributeSet, int i) {
        float dimensionPixelSize;
        y45.j(context, "context");
        y45.j(view, "view");
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.MonetizationAdsInternalRoundImageView, i, 0);
            y45.i(typedArrayObtainStyledAttributes, "obtainStyledAttributes(...)");
            dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.MonetizationAdsInternalRoundImageView_monetization_internal_corner_radius, 0);
            typedArrayObtainStyledAttributes.recycle();
        } else {
            dimensionPixelSize = 0.0f;
        }
        float f = dimensionPixelSize;
        y45.j(view, "roundView");
        return new ou(view, f, f, f, f);
    }
}
