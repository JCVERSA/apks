package io.appmetrica.analytics.impl;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Process;
import io.appmetrica.analytics.coreapi.internal.model.ScreenInfo;
import io.appmetrica.analytics.coreutils.internal.services.SafePackageManager;
import io.appmetrica.analytics.internal.AppMetricaService;

public abstract class AbstractC2497dk {
    public static final SafePackageManager a = new SafePackageManager();

    public static Intent a(Context context) {
        Bundle bundle;
        Ri ri;
        Intent intentAddFlags = new Intent(context, (Class<?>) AppMetricaService.class).setAction("io.appmetrica.analytics.IAppMetricaService").setData(new Uri.Builder().scheme("appmetrica").authority(context.getPackageName()).build()).addFlags(32);
        try {
            bundle = a.getApplicationInfo(context, context.getPackageName(), 128).metaData;
            if (bundle == null) {
                bundle = new Bundle();
            }
        } catch (Throwable unused) {
            bundle = new Bundle();
        }
        Intent intentPutExtras = intentAddFlags.putExtras(bundle);
        intentPutExtras.setData(intentPutExtras.getData().buildUpon().path("client").appendQueryParameter("pid", String.valueOf(Process.myPid())).appendQueryParameter("psid", C2791pf.c).build());
        C2879t4 c2879t4I = C2879t4.i();
        synchronized (c2879t4I) {
            try {
                if (c2879t4I.o == null) {
                    Ri ri2 = new Ri();
                    c2879t4I.o = ri2;
                    c2879t4I.h.a(ri2);
                }
                ri = c2879t4I.o;
            } catch (Throwable th) {
                throw th;
            }
        }
        ScreenInfo screenInfoA = ri.a(context);
        intentPutExtras.putExtra("screen_size", screenInfoA == null ? null : AbstractC2712mb.a(screenInfoA));
        return intentPutExtras.setPackage(context.getApplicationContext().getPackageName());
    }
}
