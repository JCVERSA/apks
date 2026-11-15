package com.yandex.mobile.ads.impl;

import android.os.IBinder;
import android.os.IInterface;
import com.monetization.ads.core.identifiers.ad.gms.service.GmsServiceAdvertisingInfoReader;
import defpackage.y45;

public final class af0 {
    private final mc a;
    private final ve0 b;

    public af0() {
        this(new mc(), new ve0());
    }

    public final lc a(we0 we0Var) {
        y45.j(we0Var, "connection");
        try {
            IBinder iBinderA = we0Var.a();
            if (iBinderA == null) {
                return null;
            }
            this.b.getClass();
            y45.j(iBinderA, "binder");
            IInterface iInterfaceQueryLocalInterface = iBinderA.queryLocalInterface("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
            rc gmsServiceAdvertisingInfoReader = iInterfaceQueryLocalInterface instanceof rc ? (rc) iInterfaceQueryLocalInterface : null;
            if (gmsServiceAdvertisingInfoReader == null) {
                gmsServiceAdvertisingInfoReader = new GmsServiceAdvertisingInfoReader(iBinderA);
            }
            String advertisingId = gmsServiceAdvertisingInfoReader.readAdvertisingId();
            Boolean adTrackingLimited = gmsServiceAdvertisingInfoReader.readAdTrackingLimited();
            this.a.getClass();
            lc lcVar = (adTrackingLimited == null || advertisingId == null) ? null : new lc(advertisingId, adTrackingLimited.booleanValue());
            sp0.a(new Object[0]);
            return lcVar;
        } catch (InterruptedException unused) {
            sp0.c(new Object[0]);
            return null;
        }
    }

    public af0(mc mcVar, ve0 ve0Var) {
        y45.j(mcVar, "advertisingInfoCreator");
        y45.j(ve0Var, "gmsAdvertisingInfoReaderProvider");
        this.a = mcVar;
        this.b = ve0Var;
    }
}
