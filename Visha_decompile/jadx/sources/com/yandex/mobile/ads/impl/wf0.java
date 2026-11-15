package com.yandex.mobile.ads.impl;

import com.monetization.ads.core.identifiers.ad.huawei.OpenDeviceIdentifierService;
import defpackage.y45;

public final class wf0 {
    private final mc a;

    public wf0() {
        this(new mc());
    }

    public final lc a(com.monetization.ads.core.identifiers.ad.huawei.a aVar) {
        y45.j(aVar, "serviceConnection");
        try {
            OpenDeviceIdentifierService openDeviceIdentifierServiceA = aVar.a();
            if (openDeviceIdentifierServiceA == null) {
                return null;
            }
            String oaid = openDeviceIdentifierServiceA.getOaid();
            boolean oaidTrackLimited = openDeviceIdentifierServiceA.getOaidTrackLimited();
            this.a.getClass();
            if (oaid != null) {
                return new lc(oaid, oaidTrackLimited);
            }
            return null;
        } catch (Exception unused) {
            sp0.c(new Object[0]);
            return null;
        }
    }

    public wf0(mc mcVar) {
        y45.j(mcVar, "advertisingInfoCreator");
        this.a = mcVar;
    }
}
