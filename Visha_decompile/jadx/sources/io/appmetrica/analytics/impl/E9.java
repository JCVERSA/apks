package io.appmetrica.analytics.impl;

import android.content.Context;
import android.net.ConnectivityManager;
import androidx.annotation.NonNull;
import io.appmetrica.analytics.coreapi.internal.io.IExecutionPolicy;
import io.appmetrica.analytics.coreutils.internal.services.SafePackageManager;
import io.appmetrica.analytics.coreutils.internal.system.SystemServiceUtils;
import java.util.EnumSet;

public final class E9 implements IExecutionPolicy {
    public static final EnumSet c = EnumSet.of(EnumC2914ue.OFFLINE);
    public final C5 a = new C5();
    public final Context b;

    public E9(@NonNull Context context) {
        this.b = context;
    }

    @Override
    public final boolean canBeExecuted() {
        C5 c5 = this.a;
        Context context = this.b;
        c5.getClass();
        SafePackageManager safePackageManager = AbstractC2939ve.a;
        return !c.contains((EnumC2914ue) SystemServiceUtils.accessSystemServiceSafelyOrDefault((ConnectivityManager) context.getSystemService("connectivity"), "getting connection type", "ConnectivityManager", EnumC2914ue.UNDEFINED, new C2889te()));
    }
}
