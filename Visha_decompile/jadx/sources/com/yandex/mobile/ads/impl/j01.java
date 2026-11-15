package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.os.StatFs;
import defpackage.wn8;
import defpackage.y45;

public final class j01 {

    public static final class a {
        public static long a(Context context, long j, long j2) {
            long availableBlocks;
            y45.j(context, "context");
            long jH = wn8.h(j, j2);
            try {
                StatFs statFs = new StatFs(r10.a(context, "").getAbsolutePath());
                availableBlocks = ((long) statFs.getAvailableBlocks()) * ((long) statFs.getBlockSize());
            } catch (IllegalArgumentException unused) {
                sp0.c(new Object[0]);
                availableBlocks = jH;
            }
            long j3 = 100;
            return wn8.e(wn8.h((((long) 2) * availableBlocks) / j3, j2), wn8.h(jH, (availableBlocks * ((long) 50)) / j3));
        }
    }

    public static long a() {
        Runtime runtime = Runtime.getRuntime();
        return Runtime.getRuntime().maxMemory() - (runtime.totalMemory() - runtime.freeMemory());
    }
}
