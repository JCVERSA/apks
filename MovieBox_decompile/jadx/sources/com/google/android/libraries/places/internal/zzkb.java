package com.google.android.libraries.places.internal;

import android.content.Context;
import android.content.pm.PackageManager;

public abstract class zzkb {
    public static zzka zzd(Context context) {
        String packageName = context.getPackageName();
        int i10 = 0;
        try {
            i10 = context.getPackageManager().getPackageInfo(packageName, 0).versionCode;
        } catch (PackageManager.NameNotFoundException unused) {
        }
        zzjx zzjxVar = new zzjx();
        zzjxVar.zza(packageName);
        zzjxVar.zzb(i10);
        zzjxVar.zzd(1);
        return zzjxVar;
    }

    public abstract int zza();

    public abstract String zzb();

    public abstract int zzc();
}
