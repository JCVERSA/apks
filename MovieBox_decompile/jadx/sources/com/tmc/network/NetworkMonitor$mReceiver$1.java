package com.tmc.network;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import rf.c;

@Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"com/tmc/network/NetworkMonitor$mReceiver$1", "Landroid/content/BroadcastReceiver;", "onReceive", "", "c", "Landroid/content/Context;", "intent", "Landroid/content/Intent;", "network_release"}, k = 1, mv = {1, 5, 1}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class NetworkMonitor$mReceiver$1 extends BroadcastReceiver {
    NetworkMonitor$mReceiver$1() {
    }

    public static final void m311onReceive$lambda0(Context c10) {
        Intrinsics.h(c10, "$c");
        NetworkMonitor.INSTANCE.checkNetworkStatus(c10);
    }

    @Override
    public void onReceive(final Context c10, Intent intent) {
        Intrinsics.h(c10, "c");
        Intrinsics.h(intent, "intent");
        c cVarA = c.f71183c.a();
        if (cVarA == null) {
            return;
        }
        cVarA.a(new Runnable() {
            @Override
            public final void run() {
                NetworkMonitor$mReceiver$1.m311onReceive$lambda0(c10);
            }
        });
    }
}
