package androidx.work.impl.utils;

import android.net.ConnectivityManager;
import android.net.Network;
import kotlin.jvm.internal.Intrinsics;

public abstract class l {
    public static final Network a(ConnectivityManager connectivityManager) {
        Intrinsics.h(connectivityManager, "<this>");
        return connectivityManager.getActiveNetwork();
    }
}
