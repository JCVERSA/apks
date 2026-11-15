package io.appmetrica.analytics.impl;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import io.appmetrica.analytics.coreutils.internal.services.SafePackageManager;
import io.appmetrica.analytics.networktasks.internal.BaseRequestConfig;

public abstract class X5 extends BaseRequestConfig.ComponentLoader {
    public final SafePackageManager a;

    public X5(@NonNull Context context, @NonNull String str) {
        this(context, str, new SafePackageManager());
    }

    @Override
    @NonNull
    public Y5 load(@NonNull W5 w5) {
        Y5 y5 = (Y5) super.load(w5);
        String packageName = getContext().getPackageName();
        ApplicationInfo applicationInfo = this.a.getApplicationInfo(getContext(), getPackageName(), 0);
        if (applicationInfo != null) {
            int i = applicationInfo.flags;
            y5.a = (i & 2) != 0 ? "1" : "0";
            y5.b = (i & 1) == 0 ? "0" : "1";
        } else if (TextUtils.equals(packageName, getPackageName())) {
            y5.a = (getContext().getApplicationInfo().flags & 2) != 0 ? "1" : "0";
            y5.b = (getContext().getApplicationInfo().flags & 1) == 0 ? "0" : "1";
        } else {
            y5.a = "0";
            y5.b = "0";
        }
        Hl hl = w5.a;
        y5.c = hl;
        y5.setRetryPolicyConfig(hl.t);
        return y5;
    }

    public X5(@NonNull Context context, @NonNull String str, @NonNull SafePackageManager safePackageManager) {
        super(context, str);
        this.a = safePackageManager;
    }
}
