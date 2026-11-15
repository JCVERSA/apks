package com.monetization.ads.mediation.banner;

import android.content.Context;
import com.yandex.mobile.ads.impl.yx0;
import defpackage.y45;
import java.util.Map;

public final class b implements yx0<MediatedBannerAdapter, MediatedBannerAdapter.MediatedBannerAdapterListener> {
    @Override
    public final void a(com.monetization.ads.mediation.base.a aVar) {
        MediatedBannerAdapter mediatedBannerAdapter = (MediatedBannerAdapter) aVar;
        y45.j(mediatedBannerAdapter, "mediatedAdapter");
        mediatedBannerAdapter.onInvalidate();
    }

    @Override
    public final void a(Context context, com.monetization.ads.mediation.base.a aVar, Object obj, Map map, Map map2) {
        MediatedBannerAdapter mediatedBannerAdapter = (MediatedBannerAdapter) aVar;
        MediatedBannerAdapter.MediatedBannerAdapterListener mediatedBannerAdapterListener = (MediatedBannerAdapter.MediatedBannerAdapterListener) obj;
        y45.j(context, "context");
        y45.j(mediatedBannerAdapter, "mediatedAdapter");
        y45.j(mediatedBannerAdapterListener, "mediatedAdapterListener");
        y45.j(map, "localExtras");
        y45.j(map2, "serverExtras");
        mediatedBannerAdapter.loadBanner(context, mediatedBannerAdapterListener, map, map2);
    }
}
