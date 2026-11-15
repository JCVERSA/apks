package com.yandex.mobile.ads.impl;

import android.location.Location;
import defpackage.y45;
import java.util.concurrent.TimeUnit;

public final class ws0 {
    private static final long a = TimeUnit.MINUTES.toMillis(2);

    public static boolean a(Location location, Location location2) {
        y45.j(location, "updatedLocation");
        if (location2 == null) {
            return true;
        }
        long time = location.getTime() - location2.getTime();
        long j = a;
        boolean z = time > j;
        boolean z2 = time < (-j);
        boolean z3 = time > 0;
        int accuracy = (int) (location.getAccuracy() - location2.getAccuracy());
        boolean z4 = accuracy > 0;
        boolean z5 = accuracy < 0;
        boolean z6 = ((long) accuracy) > 200;
        boolean zE = y45.e(location.getProvider(), location2.getProvider());
        if (z) {
            return true;
        }
        if (!z2) {
            if (z5) {
                return true;
            }
            if (z3 && !z4) {
                return true;
            }
            if (z3 && !z6 && zE) {
                return true;
            }
        }
        return false;
    }
}
