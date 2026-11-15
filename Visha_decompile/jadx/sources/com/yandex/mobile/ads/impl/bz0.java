package com.yandex.mobile.ads.impl;

import android.content.Context;
import com.monetization.ads.mediation.rewarded.MediatedRewardedAdapter;
import com.monetization.ads.mediation.rewarded.MediatedRewardedAdapterListener;
import defpackage.y45;
import java.util.Map;

public final class bz0 implements yx0<MediatedRewardedAdapter, MediatedRewardedAdapterListener> {
    private MediatedRewardedAdapter a;

    public final MediatedRewardedAdapter a() {
        return this.a;
    }

    @Override
    public final void a(com.monetization.ads.mediation.base.a aVar) {
        MediatedRewardedAdapter mediatedRewardedAdapter = (MediatedRewardedAdapter) aVar;
        y45.j(mediatedRewardedAdapter, "mediatedAdapter");
        mediatedRewardedAdapter.onInvalidate();
    }

    @Override
    public final void a(Context context, com.monetization.ads.mediation.base.a aVar, Object obj, Map map, Map map2) {
        MediatedRewardedAdapter mediatedRewardedAdapter = (MediatedRewardedAdapter) aVar;
        MediatedRewardedAdapterListener mediatedRewardedAdapterListener = (MediatedRewardedAdapterListener) obj;
        y45.j(context, "context");
        y45.j(mediatedRewardedAdapter, "mediatedAdapter");
        y45.j(mediatedRewardedAdapterListener, "mediatedAdapterListener");
        y45.j(map, "localExtras");
        y45.j(map2, "serverExtras");
        this.a = mediatedRewardedAdapter;
        mediatedRewardedAdapter.loadRewardedAd(context, mediatedRewardedAdapterListener, map, map2);
    }
}
