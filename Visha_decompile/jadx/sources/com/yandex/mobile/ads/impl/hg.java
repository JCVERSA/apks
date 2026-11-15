package com.yandex.mobile.ads.impl;

import android.media.AudioManager;
import android.text.TextUtils;
import androidx.annotation.Nullable;

public final class hg {
    public static void a(String str, boolean z) {
        if (!z) {
            throw new IllegalArgumentException(String.valueOf(str));
        }
    }

    public static void b(boolean z) {
        if (!z) {
            throw new IllegalStateException();
        }
    }

    public static void a(boolean z) {
        if (!z) {
            throw new IllegalArgumentException();
        }
    }

    public static void a(int i, int i2) {
        if (i < 0 || i >= i2) {
            throw new IndexOutOfBoundsException();
        }
    }

    public static String a(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException();
        }
        return str;
    }

    public static <T> T a(@Nullable T t) {
        t.getClass();
        return t;
    }

    public static Object a(@Nullable AudioManager audioManager) {
        if (audioManager != null) {
            return audioManager;
        }
        throw new IllegalStateException();
    }
}
