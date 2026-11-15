package com.yandex.mobile.ads.impl;

import android.content.Context;
import com.yandex.varioqub.appmetricaadapter.AppMetricaAdapter;
import defpackage.y45;
import java.util.Set;

public final class we {
    private final AppMetricaAdapter a;

    public we(Context context) {
        AppMetricaAdapter appMetricaAdapter;
        y45.j(context, "context");
        try {
            appMetricaAdapter = new AppMetricaAdapter(context);
        } catch (Throwable th) {
            th.toString();
            sp0.b(new Object[0]);
            appMetricaAdapter = null;
        }
        this.a = appMetricaAdapter;
    }

    public final void a(String str) {
        y45.j(str, "apiKey");
        try {
            AppMetricaAdapter appMetricaAdapter = this.a;
            if (appMetricaAdapter != null) {
                appMetricaAdapter.a(str);
            }
        } catch (Throwable unused) {
            sp0.c(new Object[0]);
        }
    }

    public final void b(String str) {
        y45.j(str, "experiments");
        try {
            AppMetricaAdapter appMetricaAdapter = this.a;
            if (appMetricaAdapter != null) {
                appMetricaAdapter.setExperiments(str);
            }
        } catch (Throwable unused) {
            sp0.c(new Object[0]);
        }
    }

    public final void a(Set<Long> set) {
        y45.j(set, "testIds");
        try {
            AppMetricaAdapter appMetricaAdapter = this.a;
            if (appMetricaAdapter != null) {
                appMetricaAdapter.setTriggeredTestIds(set);
            }
        } catch (Throwable unused) {
            set.toString();
            sp0.c(new Object[0]);
        }
    }
}
