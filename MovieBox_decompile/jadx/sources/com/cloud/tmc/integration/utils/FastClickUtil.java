package com.cloud.tmc.integration.utils;

import android.os.SystemClock;

public class FastClickUtil {
    private static final long DOUBLE_DEVIATE_TIME = 400;
    private static long mLastChickTime;

    private FastClickUtil() {
    }

    public static boolean isFastDoubleClick() {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long j10 = jElapsedRealtime - mLastChickTime;
        if (j10 > DOUBLE_DEVIATE_TIME) {
            mLastChickTime = jElapsedRealtime;
            return false;
        }
        if (j10 >= 0) {
            return true;
        }
        mLastChickTime = 0L;
        return false;
    }
}
