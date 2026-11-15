package com.bytedance.sdk.openadsdk.utils;

import android.text.TextUtils;
import java.io.Closeable;
import java.io.File;

public class aa {
    private static String Sj;

    public static String Sj() {
        if (TextUtils.isEmpty(Sj)) {
            Sj = v5.b.c().getCacheDir() + File.separator + "proxy_cache";
        }
        return Sj;
    }

    public static void Sj(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable th2) {
                th2.getMessage();
            }
        }
    }
}
