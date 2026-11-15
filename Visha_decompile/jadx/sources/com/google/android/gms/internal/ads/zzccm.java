package com.google.android.gms.internal.ads;

import androidx.core.app.NotificationCompat;
import java.util.HashMap;

final class zzccm implements Runnable {
    final String zza;
    final String zzb;
    final int zzc;
    final int zzd;
    final z3 zze;

    public zzccm(z3 z3Var, String str, String str2, int i, int i2, boolean z) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = i;
        this.zzd = i2;
        this.zze = z3Var;
    }

    @Override
    public final void run() {
        HashMap map = new HashMap();
        map.put(NotificationCompat.CATEGORY_EVENT, "precacheProgress");
        map.put("src", this.zza);
        map.put("cachedSrc", this.zzb);
        map.put("bytesLoaded", Integer.toString(this.zzc));
        map.put("totalBytes", Integer.toString(this.zzd));
        map.put("cacheReady", "0");
        z3.a(this.zze, "onPrecacheEvent", map);
    }
}
