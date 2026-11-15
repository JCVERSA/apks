package com.google.android.gms.ads.internal.util;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.res.Configuration;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import defpackage.cye;
import io.appmetrica.analytics.coreutils.internal.system.ConstantDeviceInfo;

@TargetApi(24)
public class zzu extends zzt {
    public static final boolean a(int i, int i2, int i3) {
        return Math.abs(i - i2) <= i3;
    }

    @Override
    public final boolean zzd(Activity activity, Configuration configuration) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.b5)).booleanValue()) {
            return false;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.d5)).booleanValue()) {
            return activity.isInMultiWindowMode();
        }
        com.google.android.gms.ads.internal.client.zzbb.zzb();
        int iZzy = com.google.android.gms.ads.internal.util.client.zzf.zzy(activity, configuration.screenHeightDp);
        int iZzy2 = com.google.android.gms.ads.internal.util.client.zzf.zzy(activity, configuration.screenWidthDp);
        WindowManager windowManager = (WindowManager) activity.getApplicationContext().getSystemService("window");
        com.google.android.gms.ads.internal.zzv.zzq();
        DisplayMetrics displayMetricsZzu = zzs.zzu(windowManager);
        int i = displayMetricsZzu.heightPixels;
        int i2 = displayMetricsZzu.widthPixels;
        int identifier = activity.getResources().getIdentifier("status_bar_height", "dimen", ConstantDeviceInfo.APP_PLATFORM);
        int dimensionPixelSize = identifier > 0 ? activity.getResources().getDimensionPixelSize(identifier) : 0;
        int iRound = ((int) Math.round(((double) activity.getResources().getDisplayMetrics().density) + 0.5d)) * ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.Z4)).intValue();
        return (a(i, iZzy + dimensionPixelSize, iRound) && a(i2, iZzy2, iRound)) ? false : true;
    }
}
