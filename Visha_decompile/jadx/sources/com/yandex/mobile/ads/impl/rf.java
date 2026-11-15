package com.yandex.mobile.ads.impl;

import defpackage.y45;
import io.appmetrica.analytics.StartupParamsCallback;
import io.appmetrica.analytics.StartupParamsItem;
import java.util.Map;

public final class rf implements StartupParamsCallback {
    private final nf a;

    public rf(nf nfVar) {
        y45.j(nfVar, "appMetricaStartupParamsCallback");
        this.a = nfVar;
    }

    @Override
    public final void onReceive(StartupParamsCallback.Result result) {
        Map<String, StartupParamsItem> map;
        StartupParamsItem startupParamsItem;
        Map<String, StartupParamsItem> map2;
        StartupParamsItem startupParamsItem2;
        Map<String, StartupParamsItem> map3;
        StartupParamsItem startupParamsItem3;
        nf nfVar = this.a;
        String id = null;
        String id2 = (result == null || (map3 = result.parameters) == null || (startupParamsItem3 = map3.get(StartupParamsCallback.APPMETRICA_UUID)) == null) ? null : startupParamsItem3.getId();
        String id3 = (result == null || (map2 = result.parameters) == null || (startupParamsItem2 = map2.get(StartupParamsCallback.APPMETRICA_DEVICE_ID)) == null) ? null : startupParamsItem2.getId();
        if (result != null && (map = result.parameters) != null && (startupParamsItem = map.get("appmetrica_get_ad_url")) != null) {
            id = startupParamsItem.getId();
        }
        nfVar.a(new lf(id2, id3, id));
    }

    @Override
    public final void onRequestError(StartupParamsCallback.Reason reason, StartupParamsCallback.Result result) {
        mf mfVar;
        y45.j(reason, "reason");
        nf nfVar = this.a;
        if (y45.e(reason, StartupParamsCallback.Reason.NETWORK)) {
            mfVar = mf.c;
        } else {
            mfVar = y45.e(reason, StartupParamsCallback.Reason.INVALID_RESPONSE) ? mf.d : mf.b;
        }
        nfVar.a(mfVar);
    }
}
