package com.monetization.ads.mediation.appopenad;

import android.content.Context;
import com.yandex.mobile.ads.impl.yx0;
import defpackage.y45;
import java.util.Map;

public final class c implements yx0<MediatedAppOpenAdAdapter, MediatedAppOpenAdAdapter.MediatedAppOpenAdAdapterListener> {
    private MediatedAppOpenAdAdapter a;

    @Override
    public final void a(com.monetization.ads.mediation.base.a aVar) {
        MediatedAppOpenAdAdapter mediatedAppOpenAdAdapter = (MediatedAppOpenAdAdapter) aVar;
        y45.j(mediatedAppOpenAdAdapter, "mediatedAdapter");
        mediatedAppOpenAdAdapter.onInvalidate();
    }

    @Override
    public final void a(Context context, com.monetization.ads.mediation.base.a aVar, Object obj, Map map, Map map2) {
        MediatedAppOpenAdAdapter mediatedAppOpenAdAdapter = (MediatedAppOpenAdAdapter) aVar;
        MediatedAppOpenAdAdapter.MediatedAppOpenAdAdapterListener mediatedAppOpenAdAdapterListener = (MediatedAppOpenAdAdapter.MediatedAppOpenAdAdapterListener) obj;
        y45.j(context, "context");
        y45.j(mediatedAppOpenAdAdapter, "mediatedAdapter");
        y45.j(mediatedAppOpenAdAdapterListener, "mediatedAdapterListener");
        y45.j(map, "localExtras");
        y45.j(map2, "serverExtras");
        this.a = mediatedAppOpenAdAdapter;
        mediatedAppOpenAdAdapter.loadAppOpenAd(context, mediatedAppOpenAdAdapterListener, map, map2);
    }

    public final MediatedAppOpenAdAdapter a() {
        return this.a;
    }
}
