package com.google.firebase.perf.session.gauges;

import android.app.ActivityManager;
import android.content.Context;
import com.google.firebase.perf.util.StorageUnit;

class i {

    private static final uc.a f31521e = uc.a.e();

    private final Runtime f31522a;

    private final ActivityManager f31523b;

    private final ActivityManager.MemoryInfo f31524c;

    private final Context f31525d;

    i(Context context) {
        this(Runtime.getRuntime(), context);
    }

    public int a() {
        return com.google.firebase.perf.util.k.c(StorageUnit.BYTES.toKilobytes(this.f31524c.totalMem));
    }

    public int b() {
        return com.google.firebase.perf.util.k.c(StorageUnit.BYTES.toKilobytes(this.f31522a.maxMemory()));
    }

    public int c() {
        return com.google.firebase.perf.util.k.c(StorageUnit.MEGABYTES.toKilobytes(this.f31523b.getMemoryClass()));
    }

    i(Runtime runtime, Context context) {
        this.f31522a = runtime;
        this.f31525d = context;
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        this.f31523b = activityManager;
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        this.f31524c = memoryInfo;
        activityManager.getMemoryInfo(memoryInfo);
    }
}
