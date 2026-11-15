package com.yandex.mobile.ads.impl;

import com.monetization.ads.mediation.base.MediatedAdapterInfo;
import com.monetization.ads.mediation.base.model.MediatedAdObject;
import defpackage.y45;
import kotlin.Result;

public final class tx0 {
    private final com.monetization.ads.mediation.base.a a;

    public tx0(com.monetization.ads.mediation.base.a aVar) {
        y45.j(aVar, "mediatedAd");
        this.a = aVar;
    }

    public final MediatedAdObject a() {
        Object objM279constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(this.a.getAdObject());
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(kotlin.c.a(th));
        }
        if (Result.m285isFailureimpl(objM279constructorimpl)) {
            objM279constructorimpl = null;
        }
        return (MediatedAdObject) objM279constructorimpl;
    }

    public final MediatedAdapterInfo b() {
        Object objM279constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(this.a.getAdapterInfo());
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(kotlin.c.a(th));
        }
        if (Result.m282exceptionOrNullimpl(objM279constructorimpl) != null) {
            objM279constructorimpl = new MediatedAdapterInfo.Builder().setAdapterVersion("null").setNetworkName("null").setNetworkSdkVersion("null").build();
        }
        return (MediatedAdapterInfo) objM279constructorimpl;
    }

    public final boolean c() {
        Object objM279constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(Boolean.valueOf(this.a.getShouldTrackImpressionAutomatically()));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(kotlin.c.a(th));
        }
        if (Result.m282exceptionOrNullimpl(objM279constructorimpl) != null) {
            objM279constructorimpl = Boolean.TRUE;
        }
        return ((Boolean) objM279constructorimpl).booleanValue();
    }
}
