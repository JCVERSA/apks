package com.google.android.gms.internal.ads;

import androidx.core.app.NotificationCompat;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.zzv;
import defpackage.cye;
import java.util.HashMap;

final class zzccn implements Runnable {
    final String zza;
    final String zzb;
    final long zzc;
    final long zzd;
    final long zze;
    final long zzf;
    final long zzg;
    final boolean zzh;
    final int zzi;
    final int zzj;
    final z3 zzk;

    public zzccn(z3 z3Var, String str, String str2, long j, long j2, long j3, long j4, long j5, boolean z, int i, int i2) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = j;
        this.zzd = j2;
        this.zze = j3;
        this.zzf = j4;
        this.zzg = j5;
        this.zzh = z;
        this.zzi = i;
        this.zzj = i2;
        this.zzk = z3Var;
    }

    @Override
    public final void run() {
        HashMap map = new HashMap();
        map.put(NotificationCompat.CATEGORY_EVENT, "precacheProgress");
        map.put("src", this.zza);
        map.put("cachedSrc", this.zzb);
        map.put("bufferedDuration", Long.toString(this.zzc));
        map.put("totalDuration", Long.toString(this.zzd));
        if (((Boolean) zzbd.zzc().b(cye.c2)).booleanValue()) {
            map.put("qoeLoadedBytes", Long.toString(this.zze));
            map.put("qoeCachedBytes", Long.toString(this.zzf));
            map.put("totalBytes", Long.toString(this.zzg));
            map.put("reportTime", Long.toString(zzv.zzC().currentTimeMillis()));
        }
        map.put("cacheReady", true != this.zzh ? "0" : "1");
        map.put("playerCount", Integer.toString(this.zzi));
        map.put("playerPreparedCount", Integer.toString(this.zzj));
        z3.a(this.zzk, "onPrecacheEvent", map);
    }
}
