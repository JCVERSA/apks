package com.cloud.tmc.miniutils.util;

import android.os.Vibrator;

public final class VibrateUtils {
    private static Vibrator vibrator;

    private VibrateUtils() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    public static void cancel() {
        Vibrator vibrator2 = getVibrator();
        if (vibrator2 == null) {
            return;
        }
        vibrator2.cancel();
    }

    private static Vibrator getVibrator() {
        if (vibrator == null) {
            vibrator = (Vibrator) Utils.getApp().getSystemService("vibrator");
        }
        return vibrator;
    }

    public static void vibrate(long j10) {
        Vibrator vibrator2 = getVibrator();
        if (vibrator2 == null) {
            return;
        }
        vibrator2.vibrate(j10);
    }

    public static void vibrate(long[] jArr, int i10) {
        Vibrator vibrator2 = getVibrator();
        if (vibrator2 == null) {
            return;
        }
        vibrator2.vibrate(jArr, i10);
    }
}
