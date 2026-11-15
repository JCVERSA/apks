package com.yandex.mobile.ads.impl;

import com.monetization.ads.quality.base.AdQualityVerifierAdapter;
import defpackage.y45;
import kotlin.Result;

public final class j7 {
    public static AdQualityVerifierAdapter a() {
        Object objM279constructorimpl;
        y45.j("com.yandex.mobile.ads.quality.AdQualityVerifierAdapter", "adapterName");
        try {
            Result.Companion companion = Result.INSTANCE;
            Object objA = jo1.a.a("com.yandex.mobile.ads.quality.AdQualityVerifierAdapter", new Object[0]);
            objM279constructorimpl = Result.m279constructorimpl(objA instanceof AdQualityVerifierAdapter ? (AdQualityVerifierAdapter) objA : null);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(kotlin.c.a(th));
        }
        Throwable thM282exceptionOrNullimpl = Result.m282exceptionOrNullimpl(objM279constructorimpl);
        if (thM282exceptionOrNullimpl != null) {
            thM282exceptionOrNullimpl.getMessage();
            sp0.b(new Object[0]);
        }
        return (AdQualityVerifierAdapter) (Result.m285isFailureimpl(objM279constructorimpl) ? null : objM279constructorimpl);
    }
}
