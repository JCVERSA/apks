package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreutils.internal.services.SafePackageManager;

public final class T9 {
    public final Context a;
    public final C2997xm b;
    public final C2804q3 c;
    public final SafePackageManager d;

    public T9(Context context, C2997xm c2997xm, C2804q3 c2804q3, SafePackageManager safePackageManager) {
        this.a = context;
        this.b = c2997xm;
        this.c = c2804q3;
        this.d = safePackageManager;
    }

    public T9(Context context) {
        this(context, new C2997xm(context, "io.appmetrica.analytics.build_id"), new C2804q3(context, "io.appmetrica.analytics.is_offline"), new SafePackageManager());
    }
}
