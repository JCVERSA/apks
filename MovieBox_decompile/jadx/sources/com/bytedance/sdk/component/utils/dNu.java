package com.bytedance.sdk.component.utils;

import android.os.Environment;
import android.os.StatFs;

public class dNu {
    public static long Sj() {
        try {
            StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
            return ((long) statFs.getAvailableBlocks()) * ((long) statFs.getBlockSize());
        } catch (Throwable unused) {
            return 0L;
        }
    }
}
