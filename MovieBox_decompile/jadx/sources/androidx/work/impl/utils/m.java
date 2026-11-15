package androidx.work.impl.utils;

import android.net.ConnectivityManager;
import kotlin.jvm.internal.Intrinsics;

public abstract class m {
    public static final void a(ConnectivityManager connectivityManager, ConnectivityManager.NetworkCallback networkCallback) {
        Intrinsics.h(connectivityManager, "<this>");
        Intrinsics.h(networkCallback, "networkCallback");
        connectivityManager.registerDefaultNetworkCallback(networkCallback);
    }
}
