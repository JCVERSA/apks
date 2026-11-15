package com.yandex.mobile.ads.impl;

import android.content.Context;
import com.monetization.ads.mediation.nativeads.MediatedNativeAdapter;
import com.monetization.ads.mediation.nativeads.MediatedNativeAdapterListener;
import defpackage.y45;
import java.util.Map;

public final class ty0 implements yx0<MediatedNativeAdapter, MediatedNativeAdapterListener> {
    @Override
    public final void a(com.monetization.ads.mediation.base.a aVar) {
        y45.j((MediatedNativeAdapter) aVar, "mediatedAdapter");
    }

    @Override
    public final void a(Context context, com.monetization.ads.mediation.base.a aVar, Object obj, Map map, Map map2) {
        MediatedNativeAdapter mediatedNativeAdapter = (MediatedNativeAdapter) aVar;
        MediatedNativeAdapterListener mediatedNativeAdapterListener = (MediatedNativeAdapterListener) obj;
        y45.j(context, "context");
        y45.j(mediatedNativeAdapter, "mediatedAdapter");
        y45.j(mediatedNativeAdapterListener, "mediatedAdapterListener");
        y45.j(map, "localExtras");
        y45.j(map2, "serverExtras");
        mediatedNativeAdapter.loadAd(context, mediatedNativeAdapterListener, map, map2);
    }
}
