package io.appmetrica.analytics.impl;

import android.content.Context;
import android.net.ConnectivityManager;
import androidx.annotation.NonNull;
import io.appmetrica.analytics.coreutils.internal.services.SafePackageManager;
import io.appmetrica.analytics.coreutils.internal.system.SystemServiceUtils;

public final class C5 {
    public final EnumC2914ue a(@NonNull Context context) {
        SafePackageManager safePackageManager = AbstractC2939ve.a;
        return (EnumC2914ue) SystemServiceUtils.accessSystemServiceSafelyOrDefault((ConnectivityManager) context.getSystemService("connectivity"), "getting connection type", "ConnectivityManager", EnumC2914ue.UNDEFINED, new C2889te());
    }
}
