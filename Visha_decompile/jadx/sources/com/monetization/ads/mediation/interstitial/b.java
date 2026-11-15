package com.monetization.ads.mediation.interstitial;

import android.content.Context;
import com.yandex.mobile.ads.impl.yx0;
import defpackage.y45;
import java.util.Map;

public final class b implements yx0<MediatedInterstitialAdapter, MediatedInterstitialAdapter.MediatedInterstitialAdapterListener> {
    private MediatedInterstitialAdapter a;

    @Override
    public final void a(com.monetization.ads.mediation.base.a aVar) {
        MediatedInterstitialAdapter mediatedInterstitialAdapter = (MediatedInterstitialAdapter) aVar;
        y45.j(mediatedInterstitialAdapter, "mediatedAdapter");
        mediatedInterstitialAdapter.onInvalidate();
    }

    @Override
    public final void a(Context context, com.monetization.ads.mediation.base.a aVar, Object obj, Map map, Map map2) {
        MediatedInterstitialAdapter mediatedInterstitialAdapter = (MediatedInterstitialAdapter) aVar;
        MediatedInterstitialAdapter.MediatedInterstitialAdapterListener mediatedInterstitialAdapterListener = (MediatedInterstitialAdapter.MediatedInterstitialAdapterListener) obj;
        y45.j(context, "context");
        y45.j(mediatedInterstitialAdapter, "mediatedAdapter");
        y45.j(mediatedInterstitialAdapterListener, "mediatedAdapterListener");
        y45.j(map, "localExtras");
        y45.j(map2, "serverExtras");
        this.a = mediatedInterstitialAdapter;
        mediatedInterstitialAdapter.loadInterstitial(context, mediatedInterstitialAdapterListener, map, map2);
    }

    public final MediatedInterstitialAdapter a() {
        return this.a;
    }
}
