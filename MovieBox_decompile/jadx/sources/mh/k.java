package mh;

import android.app.Application;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkRequest;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Log;
import com.transsion.ga.AthenaAnalytics;
import kotlin.TuplesKt;
import kotlin.jvm.internal.Intrinsics;

public final class k {

    public static final k f66467a = new k();

    private static boolean f66468b;

    private static boolean f66469c;

    private static boolean f66470d;

    private static boolean f66471e;

    private static long f66472f;

    public static final class a extends ConnectivityManager.NetworkCallback {
        a() {
        }

        @Override
        public void onAvailable(Network network) {
            Intrinsics.h(network, "network");
            super.onAvailable(network);
            o.f66480a.h("NetworkMonitor", "onAvailable : " + network);
        }

        @Override
        public void onBlockedStatusChanged(Network network, boolean z10) {
            Intrinsics.h(network, "network");
            super.onBlockedStatusChanged(network, z10);
            o.f66480a.h("NetworkMonitor", "onBlockedStatusChanged");
        }

        @Override
        public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
            Intrinsics.h(network, "network");
            Intrinsics.h(networkCapabilities, "networkCapabilities");
            super.onCapabilitiesChanged(network, networkCapabilities);
            boolean zHasCapability = networkCapabilities.hasCapability(16);
            k kVar = k.f66467a;
            kVar.k(networkCapabilities.hasCapability(12));
            kVar.i(kVar.g() && !zHasCapability);
            kVar.j(true);
            o.f66480a.h("NetworkMonitor", "isNetworkConnected : " + kVar.g() + ",  isFakeNetwork : " + kVar.e());
        }

        @Override
        public void onLosing(Network network, int i10) {
            Intrinsics.h(network, "network");
            super.onLosing(network, i10);
            o.f66480a.h("NetworkMonitor", "onLosing");
            k.f66467a.k(false);
        }

        @Override
        public void onLost(Network network) {
            Intrinsics.h(network, "network");
            super.onLost(network);
            o.f66480a.h("NetworkMonitor", "onLost");
            k.f66467a.k(false);
        }

        @Override
        public void onUnavailable() {
            super.onUnavailable();
            o.f66480a.h("NetworkMonitor", "onUnavailable");
        }
    }

    private k() {
    }

    public static final void c(Application application, boolean z10) {
        Intrinsics.h(application, "application");
        d(application, new String[0], z10);
    }

    public static final void d(Application application, String[] hosts, boolean z10) {
        Intrinsics.h(application, "application");
        Intrinsics.h(hosts, "hosts");
        f66468b = z10;
        AthenaAnalytics.Q(application, "NetworkMonitor", 1814, z10, false);
        d.f66407a.e(hosts);
        k kVar = f66467a;
        kVar.h(application);
        f66472f = SystemClock.uptimeMillis();
        kVar.l();
    }

    private final void h(Context context) {
        Object systemService = context.getSystemService("connectivity");
        ConnectivityManager connectivityManager = systemService instanceof ConnectivityManager ? (ConnectivityManager) systemService : null;
        if (connectivityManager == null) {
            return;
        }
        connectivityManager.registerNetworkCallback(new NetworkRequest.Builder().build(), new a());
    }

    private final void l() {
        try {
            new Handler(Looper.getMainLooper()).postDelayed(new Runnable() {
                @Override
                public final void run() {
                    k.m();
                }
            }, 5000L);
        } catch (Exception e10) {
            o.f66480a.j("NetworkMonitor", Log.getStackTraceString(e10));
        }
    }

    public static final void m() {
        String str = f66469c ? "0" : "1";
        if (f66470d) {
            str = "2";
        }
        new hi.a("monitor_init", 1814).c(androidx.core.os.d.b(TuplesKt.a("net_status", str)), null).b();
    }

    public final long b() {
        return f66472f;
    }

    public final boolean e() {
        return f66470d;
    }

    public final boolean f() {
        return f66471e;
    }

    public final boolean g() {
        return f66469c;
    }

    public final void i(boolean z10) {
        f66470d = z10;
    }

    public final void j(boolean z10) {
        f66471e = z10;
    }

    public final void k(boolean z10) {
        f66469c = z10;
    }
}
