package com.transsion.transfer.wifi.util;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

public final class c {

    public static final c f53892a = new c();

    private c() {
    }

    public final long a() {
        StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
        return statFs.getAvailableBlocksLong() * statFs.getBlockSizeLong();
    }

    public final String b() {
        return (((int) ((((a() / 1024.0f) / 1024.0f) / 1024.0f) * 10)) / 10.0f) + "GB";
    }

    public final String c(Context context) {
        Intrinsics.h(context, "context");
        return (((int) (((d(context) / 1024.0f) / 1024.0f) * 10)) / 10.0f) + "GB";
    }

    public final long d(Context context) {
        Intrinsics.h(context, "context");
        try {
            Object systemService = context.getSystemService("activity");
            Intrinsics.f(systemService, "null cannot be cast to non-null type android.app.ActivityManager");
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            ((ActivityManager) systemService).getMemoryInfo(memoryInfo);
            long j10 = memoryInfo.totalMem;
            return j10 > 0 ? j10 / ((long) 1024) : j10;
        } catch (Exception e10) {
            e10.printStackTrace();
            return 0L;
        }
    }

    public final boolean e() {
        String MODEL = Build.MODEL;
        Intrinsics.g(MODEL, "MODEL");
        Locale locale = Locale.getDefault();
        Intrinsics.g(locale, "getDefault(...)");
        String lowerCase = MODEL.toLowerCase(locale);
        Intrinsics.g(lowerCase, "toLowerCase(...)");
        return StringsKt.W(lowerCase, "itel", false, 2, null) || StringsKt.W(lowerCase, "tecno", false, 2, null) || StringsKt.W(lowerCase, "infinix", false, 2, null) || StringsKt.W(lowerCase, "spice", false, 2, null);
    }
}
