package i4;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.os.Build;
import kotlin.jvm.internal.Intrinsics;

public abstract class j {

    private static final String f61844a;

    static {
        String strI = androidx.work.j.i("NetworkStateTracker");
        Intrinsics.g(strI, "tagWithPrefix(\"NetworkStateTracker\")");
        f61844a = strI;
    }

    public static final g a(Context context, k4.c taskExecutor) {
        Intrinsics.h(context, "context");
        Intrinsics.h(taskExecutor, "taskExecutor");
        return Build.VERSION.SDK_INT >= 24 ? new i(context, taskExecutor) : new k(context, taskExecutor);
    }

    public static final g4.b c(ConnectivityManager connectivityManager) {
        Intrinsics.h(connectivityManager, "<this>");
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        boolean z10 = false;
        boolean z11 = activeNetworkInfo != null && activeNetworkInfo.isConnected();
        boolean zD = d(connectivityManager);
        boolean zA = androidx.core.net.a.a(connectivityManager);
        if (activeNetworkInfo != null && !activeNetworkInfo.isRoaming()) {
            z10 = true;
        }
        return new g4.b(z11, zD, zA, z10);
    }

    public static final boolean d(ConnectivityManager connectivityManager) {
        Intrinsics.h(connectivityManager, "<this>");
        try {
            NetworkCapabilities networkCapabilitiesA = androidx.work.impl.utils.k.a(connectivityManager, androidx.work.impl.utils.l.a(connectivityManager));
            if (networkCapabilitiesA != null) {
                return androidx.work.impl.utils.k.b(networkCapabilitiesA, 16);
            }
            return false;
        } catch (SecurityException e10) {
            androidx.work.j.e().d(f61844a, "Unable to validate active network", e10);
            return false;
        }
    }
}
