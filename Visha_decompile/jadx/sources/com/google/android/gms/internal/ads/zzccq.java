package com.google.android.gms.internal.ads;

import androidx.core.app.NotificationCompat;
import java.util.HashMap;

final class zzccq implements Runnable {
    final String zza;
    final String zzb;
    final long zzc;
    final z3 zzd;

    public zzccq(z3 z3Var, String str, String str2, long j) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = j;
        this.zzd = z3Var;
    }

    @Override
    public final void run() {
        HashMap map = new HashMap();
        map.put(NotificationCompat.CATEGORY_EVENT, "precacheComplete");
        map.put("src", this.zza);
        map.put("cachedSrc", this.zzb);
        map.put("totalDuration", Long.toString(this.zzc));
        z3.a(this.zzd, "onPrecacheEvent", map);
    }
}
