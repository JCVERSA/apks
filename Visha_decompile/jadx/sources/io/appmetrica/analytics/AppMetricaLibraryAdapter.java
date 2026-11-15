package io.appmetrica.analytics;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.core.app.NotificationCompat;
import com.transsion.hubsdk.api.provider.TranSearchIndexablesContract;
import defpackage.abb;
import io.appmetrica.analytics.impl.C2950w0;
import io.appmetrica.analytics.impl.Gb;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
import kotlin.Pair;
import kotlin.collections.a;

public class AppMetricaLibraryAdapter {
    private static C2950w0 a = new C2950w0();

    public static void activate(@NonNull Context context) {
        a.a(context, AppMetricaLibraryAdapterConfig.newConfigBuilder().build());
    }

    public static void reportEvent(@NonNull String str, @NonNull String str2, @NonNull String str3) {
        C2950w0 c2950w0 = a;
        Gb gb = c2950w0.b;
        if (!gb.c.a((Void) null).a || !gb.d.a(str).a || !gb.e.a(str2).a || !gb.f.a(str3).a) {
            String str4 = "Failed report event from sender: " + str + " with name = " + str2 + " and payload = " + str3;
            PublicLogger.INSTANCE.getAnonymousInstance().warning("[AppMetricaLibraryAdapterProxy]" + str4, new Object[0]);
            return;
        }
        c2950w0.c.getClass();
        c2950w0.d.getClass();
        ModuleEvent.Builder builderWithName = ModuleEvent.newBuilder(4).withName("appmetrica_system_event_42");
        if (str == null) {
            str = "null";
        }
        Pair pairA = abb.a("sender", str);
        if (str2 == null) {
            str2 = "null";
        }
        Pair pairA2 = abb.a(NotificationCompat.CATEGORY_EVENT, str2);
        if (str3 == null) {
            str3 = "null";
        }
        ModulesFacade.reportEvent(builderWithName.withAttributes(a.p(pairA, pairA2, abb.a(TranSearchIndexablesContract.TranRawData.PAYLOAD, str3))).build());
    }

    public static void setAdvIdentifiersTracking(boolean z) {
        C2950w0 c2950w0 = a;
        if (c2950w0.b.c.a((Void) null).a) {
            c2950w0.c.getClass();
            ModulesFacade.setAdvIdentifiersTracking(z);
        }
    }

    @VisibleForTesting
    public static void setProxy(@NonNull C2950w0 c2950w0) {
        a = c2950w0;
    }

    public static void activate(@NonNull Context context, @NonNull AppMetricaLibraryAdapterConfig appMetricaLibraryAdapterConfig) {
        a.a(context, appMetricaLibraryAdapterConfig);
    }
}
