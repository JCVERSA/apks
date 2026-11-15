package com.google.android.gms.internal.ads;

import androidx.core.app.NotificationCompat;
import java.util.HashMap;

final class zzccp implements Runnable {
    final String zza;
    final String zzb;
    final int zzc;
    final z3 zzd;

    public zzccp(z3 z3Var, String str, String str2, int i) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = i;
        this.zzd = z3Var;
    }

    @Override
    public final void run() {
        HashMap map = new HashMap();
        map.put(NotificationCompat.CATEGORY_EVENT, "precacheComplete");
        map.put("src", this.zza);
        map.put("cachedSrc", this.zzb);
        map.put("totalBytes", Integer.toString(this.zzc));
        z3.a(this.zzd, "onPrecacheEvent", map);
    }
}
