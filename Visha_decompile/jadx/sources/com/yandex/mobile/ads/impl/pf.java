package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import io.appmetrica.analytics.AppMetrica;

public final class pf implements ue {
    @Override
    public final qf a(Context context, String str, jf jfVar, ie ieVar) {
        y45.j(context, "context");
        y45.j(str, "apiKey");
        y45.j(jfVar, "appMetricaPolicyConfigurator");
        y45.j(ieVar, "appAdAnalyticsActivator");
        try {
            return new qf(kotlin.b.a(new of(ieVar, context, this, str, jfVar)));
        } catch (Throwable unused) {
            sp0.c(new Object[0]);
            return null;
        }
    }

    @Override
    public final String b(Context context) {
        y45.j(context, "context");
        try {
            return AppMetrica.getDeviceId(context);
        } catch (Throwable unused) {
            sp0.c(new Object[0]);
            return null;
        }
    }

    @Override
    public final String a(Context context) {
        y45.j(context, "context");
        try {
            return AppMetrica.getUuid(context);
        } catch (Throwable unused) {
            sp0.c(new Object[0]);
            return null;
        }
    }

    @Override
    public final void a(xe xeVar) {
        y45.j(xeVar, "listener");
        xeVar.a("AppMetrica SDK does not support autograb feature since version 6.0.0");
    }

    @Override
    public final void a(Context context, nf nfVar) {
        y45.j(context, "context");
        y45.j(nfVar, "listener");
        try {
            AppMetrica.requestStartupParams(context, new rf(nfVar), sf.a());
        } catch (Throwable unused) {
            sp0.c(new Object[0]);
            nfVar.a(mf.b);
        }
    }

    @Override
    public final String a() {
        try {
            return AppMetrica.getLibraryVersion();
        } catch (Throwable unused) {
            sp0.c(new Object[0]);
            return null;
        }
    }
}
