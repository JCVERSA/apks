package com.google.firebase.crashlytics.internal.common;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.integration.permission.PermissionConstant;

class d {

    private final Float f30331a;

    private final boolean f30332b;

    private d(Float f10, boolean z10) {
        this.f30332b = z10;
        this.f30331a = f10;
    }

    public static d a(Context context) {
        boolean zE = false;
        Float fD = null;
        try {
            Intent intentRegisterReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
            if (intentRegisterReceiver != null) {
                zE = e(intentRegisterReceiver);
                fD = d(intentRegisterReceiver);
            }
        } catch (IllegalStateException e10) {
            qb.g.f().e("An error occurred getting battery state.", e10);
        }
        return new d(fD, zE);
    }

    private static Float d(Intent intent) {
        int intExtra = intent.getIntExtra(PermissionConstant.level, -1);
        int intExtra2 = intent.getIntExtra("scale", -1);
        if (intExtra == -1 || intExtra2 == -1) {
            return null;
        }
        return Float.valueOf(intExtra / intExtra2);
    }

    private static boolean e(Intent intent) {
        int intExtra = intent.getIntExtra(NotificationCompat.CATEGORY_STATUS, -1);
        if (intExtra == -1) {
            return false;
        }
        return intExtra == 2 || intExtra == 5;
    }

    public Float b() {
        return this.f30331a;
    }

    public int c() {
        Float f10;
        if (!this.f30332b || (f10 = this.f30331a) == null) {
            return 1;
        }
        return ((double) f10.floatValue()) < 0.99d ? 2 : 3;
    }
}
