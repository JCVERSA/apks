package defpackage;

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
import androidx.core.os.BundleKt;
import androidx.media3.common.MimeTypes;
import com.transsion.ga.AthenaAnalytics;

public final class uz6 {
    public static final uz6 a = new uz6();
    public static boolean b;
    public static boolean c;
    public static boolean d;
    public static boolean e;
    public static long f;

    public static final class a extends ConnectivityManager.NetworkCallback {
        @Override
        public void onAvailable(Network network) {
            y45.j(network, "network");
            super.onAvailable(network);
            wlb.a.h("NetworkMonitor", "onAvailable : " + network);
        }

        @Override
        public void onBlockedStatusChanged(Network network, boolean z) {
            y45.j(network, "network");
            super.onBlockedStatusChanged(network, z);
            wlb.a.h("NetworkMonitor", "onBlockedStatusChanged");
        }

        @Override
        public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
            y45.j(network, "network");
            y45.j(networkCapabilities, "networkCapabilities");
            super.onCapabilitiesChanged(network, networkCapabilities);
            boolean zHasCapability = networkCapabilities.hasCapability(16);
            uz6 uz6Var = uz6.a;
            uz6Var.k(networkCapabilities.hasCapability(12));
            uz6Var.i(uz6Var.g() && !zHasCapability);
            uz6Var.j(true);
            wlb.a.h("NetworkMonitor", "isNetworkConnected : " + uz6Var.g() + ",  isFakeNetwork : " + uz6Var.e());
        }

        @Override
        public void onLosing(Network network, int i) {
            y45.j(network, "network");
            super.onLosing(network, i);
            wlb.a.h("NetworkMonitor", "onLosing");
            uz6.a.k(false);
        }

        @Override
        public void onLost(Network network) {
            y45.j(network, "network");
            super.onLost(network);
            wlb.a.h("NetworkMonitor", "onLost");
            uz6.a.k(false);
        }

        @Override
        public void onUnavailable() {
            super.onUnavailable();
            wlb.a.h("NetworkMonitor", "onUnavailable");
        }
    }

    public static final void c(Application application, boolean z) {
        y45.j(application, MimeTypes.BASE_TYPE_APPLICATION);
        d(application, new String[0], z);
    }

    public static final void d(Application application, String[] strArr, boolean z) {
        y45.j(application, MimeTypes.BASE_TYPE_APPLICATION);
        y45.j(strArr, "hosts");
        b = z;
        AthenaAnalytics.P(application, "NetworkMonitor", 1814, z, false);
        yr4.a.e(strArr);
        uz6 uz6Var = a;
        uz6Var.h(application);
        f = SystemClock.uptimeMillis();
        uz6Var.l();
    }

    public static final void m() {
        String str = c ? "0" : "1";
        if (d) {
            str = "2";
        }
        new wj("monitor_init", 1814).c(BundleKt.bundleOf(abb.a("net_status", str)), null).b();
    }

    public final long b() {
        return f;
    }

    public final boolean e() {
        return d;
    }

    public final boolean f() {
        return e;
    }

    public final boolean g() {
        return c;
    }

    public final void h(Context context) {
        Object systemService = context.getSystemService("connectivity");
        ConnectivityManager connectivityManager = systemService instanceof ConnectivityManager ? (ConnectivityManager) systemService : null;
        if (connectivityManager == null) {
            return;
        }
        connectivityManager.registerNetworkCallback(new NetworkRequest.Builder().build(), new a());
    }

    public final void i(boolean z) {
        d = z;
    }

    public final void j(boolean z) {
        e = z;
    }

    public final void k(boolean z) {
        c = z;
    }

    public final void l() {
        try {
            new Handler(Looper.getMainLooper()).postDelayed(new Runnable() {
                @Override
                public final void run() {
                    uz6.m();
                }
            }, 5000L);
        } catch (Exception e2) {
            wlb.a.j("NetworkMonitor", Log.getStackTraceString(e2));
        }
    }
}
