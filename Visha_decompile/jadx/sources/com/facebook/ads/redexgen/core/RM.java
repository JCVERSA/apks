package com.facebook.ads.redexgen.core;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.facebook.ads.NativeAd;
import com.facebook.ads.NativeAdLayout;
import com.facebook.ads.NativeAdView;
import com.facebook.ads.NativeAdViewAttributes;
import com.facebook.ads.internal.api.NativeAdViewApi;

public final class RM implements NativeAdViewApi {
    public static View A00(C1635dL c1635dL, NativeAd nativeAd, NativeAdView.Type type, NativeAdViewAttributes nativeAdViewAttributes) {
        if (nativeAdViewAttributes == null) {
            nativeAdViewAttributes = new NativeAdViewAttributes();
        }
        C1295Ur c1295Ur = (C1295Ur) nativeAdViewAttributes.getInternalAttributes();
        C1178Qc internalNativeAd = C1178Qc.A0L(nativeAd.getInternalNativeAd());
        internalNativeAd.A1a(EnumC1296Us.A00(type.getEnumCode()));
        internalNativeAd.A1Z(c1295Ur);
        C6Q c6q = new C6Q();
        NativeAdLayout mediumRectTemplateLayout = new NativeAdLayout(c1635dL, c6q);
        c6q.A06(mediumRectTemplateLayout, c1635dL, nativeAd, c1295Ur);
        mediumRectTemplateLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, (int) (AbstractC1338Wl.A02 * type.getHeight())));
        return mediumRectTemplateLayout;
    }

    public static View A01(C1635dL c1635dL, NativeAd nativeAd, NativeAdViewAttributes nativeAdViewAttributes) {
        if (nativeAdViewAttributes == null) {
            nativeAdViewAttributes = new NativeAdViewAttributes();
        }
        C1178Qc c1178QcA0L = C1178Qc.A0L(nativeAd.getInternalNativeAd());
        C1295Ur c1295Ur = (C1295Ur) nativeAdViewAttributes.getInternalAttributes();
        c1178QcA0L.A1a(EnumC1296Us.A0B);
        c1178QcA0L.A1Z(c1295Ur);
        C6Q c6q = new C6Q();
        NativeAdLayout nativeAdLayout = new NativeAdLayout(c1635dL, c6q);
        c6q.A06(nativeAdLayout, c1635dL, nativeAd, c1295Ur);
        return nativeAdLayout;
    }

    @Override
    public final View render(Context context, NativeAd nativeAd) {
        return render(context, nativeAd, (NativeAdViewAttributes) null);
    }

    @Override
    public final View render(Context context, NativeAd nativeAd, NativeAdView.Type type) {
        return render(context, nativeAd, type, null);
    }

    @Override
    public final View render(Context context, NativeAd nativeAd, NativeAdView.Type type, NativeAdViewAttributes nativeAdViewAttributes) {
        try {
            return A00(RB.A03(context), nativeAd, type, nativeAdViewAttributes);
        } catch (Throwable th) {
            return YB.A00(RB.A03(context), th);
        }
    }

    @Override
    public final View render(Context context, NativeAd nativeAd, NativeAdViewAttributes nativeAdViewAttributes) {
        C1635dL contextWrapper;
        try {
            if (context instanceof C1635dL) {
                contextWrapper = (C1635dL) context;
            } else {
                contextWrapper = RB.A03(context);
            }
            return A01(contextWrapper, nativeAd, nativeAdViewAttributes);
        } catch (Throwable th) {
            return YB.A00(RB.A03(context), th);
        }
    }
}
