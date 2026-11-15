package com.yandex.mobile.ads.impl;

import defpackage.y45;
import defpackage.zfb;
import io.appmetrica.analytics.AppMetricaLibraryAdapter;
import kotlin.Result;

public final class fd {
    public static final fd a = new fd();
    private static final String b = "ads_sdk";

    private fd() {
    }

    public static void a(je jeVar) {
        Object objM279constructorimpl;
        y45.j(jeVar, "report");
        try {
            Result.Companion companion = Result.INSTANCE;
            AppMetricaLibraryAdapter.reportEvent(b, jeVar.a(), jeVar.b());
            objM279constructorimpl = Result.m279constructorimpl(zfb.a);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(kotlin.c.a(th));
        }
        if (Result.m282exceptionOrNullimpl(objM279constructorimpl) != null) {
            sp0.b(new Object[0]);
        }
    }
}
