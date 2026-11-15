package com.hunantv.imgo.util;

import android.text.TextUtils;
import androidx.annotation.Nullable;

public final class q {
    public static int a(@Nullable String str) {
        return a(str, 0);
    }

    public static int a(@Nullable String str, int i) {
        if (TextUtils.isEmpty(str)) {
            return i;
        }
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            return i;
        }
    }
}
