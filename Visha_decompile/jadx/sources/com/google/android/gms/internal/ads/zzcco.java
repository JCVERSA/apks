package com.google.android.gms.internal.ads;

import androidx.core.app.NotificationCompat;
import java.util.HashMap;

final class zzcco implements Runnable {
    final String zza;
    final String zzb;
    final int zzc;
    final int zzd;
    final long zze;
    final long zzf;
    final boolean zzg;
    final int zzh;
    final int zzi;
    final z3 zzj;

    public zzcco(z3 z3Var, String str, String str2, int i, int i2, long j, long j2, boolean z, int i3, int i4) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = i;
        this.zzd = i2;
        this.zze = j;
        this.zzf = j2;
        this.zzg = z;
        this.zzh = i3;
        this.zzi = i4;
        this.zzj = z3Var;
    }

    @Override
    public final void run() {
        HashMap map = new HashMap();
        map.put(NotificationCompat.CATEGORY_EVENT, "precacheProgress");
        map.put("src", this.zza);
        map.put("cachedSrc", this.zzb);
        map.put("bytesLoaded", Integer.toString(this.zzc));
        map.put("totalBytes", Integer.toString(this.zzd));
        map.put("bufferedDuration", Long.toString(this.zze));
        map.put("totalDuration", Long.toString(this.zzf));
        map.put("cacheReady", true != this.zzg ? "0" : "1");
        map.put("playerCount", Integer.toString(this.zzh));
        map.put("playerPreparedCount", Integer.toString(this.zzi));
        z3.a(this.zzj, "onPrecacheEvent", map);
    }
}
