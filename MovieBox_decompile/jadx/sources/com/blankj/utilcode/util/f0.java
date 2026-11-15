package com.blankj.utilcode.util;

import android.os.Vibrator;

public abstract class f0 {

    private static Vibrator f19470a;

    private static Vibrator a() {
        if (f19470a == null) {
            f19470a = (Vibrator) Utils.a().getSystemService("vibrator");
        }
        return f19470a;
    }

    public static void b(long j10) {
        Vibrator vibratorA = a();
        if (vibratorA == null) {
            return;
        }
        vibratorA.vibrate(j10);
    }
}
