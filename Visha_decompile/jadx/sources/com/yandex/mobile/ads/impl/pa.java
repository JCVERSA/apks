package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.os.Build;
import androidx.annotation.ChecksSdkIntAtLeast;

public final class pa {
    public static final boolean a(Context context) {
        return (context == null || (context.getApplicationInfo().flags & 2) == 0) ? false : true;
    }

    @ChecksSdkIntAtLeast(parameter = 0)
    public static final boolean a(int i) {
        return Build.VERSION.SDK_INT >= i;
    }
}
