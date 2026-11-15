package io.appmetrica.analytics;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import io.appmetrica.analytics.impl.AbstractC2545fi;
import io.appmetrica.analytics.impl.C2565gd;
import io.appmetrica.analytics.impl.C2615id;
import io.appmetrica.analytics.impl.C2639jd;
import io.appmetrica.analytics.impl.C2664kd;
import io.appmetrica.analytics.impl.C2689ld;
import io.appmetrica.analytics.impl.C2714md;
import io.appmetrica.analytics.impl.C2739nd;
import io.appmetrica.analytics.impl.C2776p0;

public final class ModulesFacade {
    public static final int EXTERNAL_ATTRIBUTION_ADJUST = 2;
    public static final int EXTERNAL_ATTRIBUTION_AIRBRIDGE = 5;
    public static final int EXTERNAL_ATTRIBUTION_APPSFLYER = 1;
    public static final int EXTERNAL_ATTRIBUTION_KOCHAVA = 3;
    public static final int EXTERNAL_ATTRIBUTION_SINGULAR = 6;
    public static final int EXTERNAL_ATTRIBUTION_TENJIN = 4;
    private static C2739nd a = new C2739nd();

    @NonNull
    public static IModuleReporter getModuleReporter(@NonNull Context context, @NonNull String str) {
        C2739nd c2739nd = a;
        C2565gd c2565gd = c2739nd.b;
        c2565gd.b.a(context);
        c2565gd.d.a(str);
        c2739nd.c.a.a(context.getApplicationContext().getApplicationContext());
        return AbstractC2545fi.a.a(context.getApplicationContext(), str);
    }

    public static boolean isActivatedForApp() {
        boolean z;
        C2739nd c2739nd = a;
        c2739nd.b.getClass();
        c2739nd.c.getClass();
        c2739nd.a.getClass();
        synchronized (C2776p0.class) {
            z = C2776p0.f;
        }
        return z;
    }

    public static void reportAdRevenue(@NonNull AdRevenue adRevenue) {
        reportAdRevenue(adRevenue, Boolean.TRUE);
    }

    public static void reportEvent(@NonNull ModuleEvent moduleEvent) {
        C2739nd c2739nd = a;
        c2739nd.b.a.a(null);
        c2739nd.c.getClass();
        c2739nd.d.execute(new C2639jd(c2739nd, moduleEvent));
    }

    public static void reportExternalAttribution(int i, @NonNull String str) {
        C2739nd c2739nd = a;
        c2739nd.b.getClass();
        c2739nd.c.getClass();
        c2739nd.d.execute(new C2664kd(c2739nd, i, str));
    }

    public static void sendEventsBuffer() {
        C2739nd c2739nd = a;
        c2739nd.b.getClass();
        c2739nd.c.getClass();
        AppMetrica.sendEventsBuffer();
    }

    public static void setAdvIdentifiersTracking(boolean z) {
        C2739nd c2739nd = a;
        c2739nd.b.getClass();
        c2739nd.c.getClass();
        c2739nd.d.execute(new C2689ld(c2739nd, z));
    }

    @VisibleForTesting
    public static void setProxy(@NonNull C2739nd c2739nd) {
        a = c2739nd;
    }

    public static void setSessionExtra(@NonNull String str, @Nullable byte[] bArr) {
        C2739nd c2739nd = a;
        c2739nd.b.c.a(str);
        c2739nd.c.getClass();
        c2739nd.d.execute(new C2714md(c2739nd, str, bArr));
    }

    public static void reportAdRevenue(@NonNull AdRevenue adRevenue, @NonNull Boolean bool) {
        C2739nd c2739nd = a;
        boolean zBooleanValue = bool.booleanValue();
        c2739nd.b.getClass();
        c2739nd.c.getClass();
        c2739nd.d.execute(new C2615id(c2739nd, adRevenue, zBooleanValue));
    }
}
