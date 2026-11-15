package com.google.android.gms.measurement.internal;

import android.app.ActivityManager;
import android.os.Bundle;
import android.text.TextUtils;

final class zznj {
    final zznb zza;

    zznj(zznb zznbVar) {
        this.zza = zznbVar;
    }

    private final void zzb(long j10, boolean z10) {
        this.zza.zzt();
        if (this.zza.zzu.zzac()) {
            this.zza.zzk().zzk.zza(j10);
            this.zza.zzj().zzp().zza("Session started, time", Long.valueOf(this.zza.zzb().elapsedRealtime()));
            long j11 = j10 / 1000;
            this.zza.zzm().zza("auto", "_sid", Long.valueOf(j11), j10);
            this.zza.zzk().zzl.zza(j11);
            this.zza.zzk().zzg.zza(false);
            Bundle bundle = new Bundle();
            bundle.putLong("_sid", j11);
            this.zza.zzm().zza("auto", "_s", j10, bundle);
            String strZza = this.zza.zzk().zzq.zza();
            if (TextUtils.isEmpty(strZza)) {
                return;
            }
            Bundle bundle2 = new Bundle();
            bundle2.putString("_ffr", strZza);
            this.zza.zzm().zza("auto", "_ssr", j10, bundle2);
        }
    }

    final void zza() {
        this.zza.zzt();
        if (this.zza.zzk().zza(this.zza.zzb().currentTimeMillis())) {
            this.zza.zzk().zzg.zza(true);
            ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
            ActivityManager.getMyMemoryState(runningAppProcessInfo);
            if (runningAppProcessInfo.importance == 100) {
                this.zza.zzj().zzp().zza("Detected application was in foreground");
                zzb(this.zza.zzb().currentTimeMillis(), false);
            }
        }
    }

    final void zza(long j10, boolean z10) {
        this.zza.zzt();
        this.zza.zzab();
        if (this.zza.zzk().zza(j10)) {
            this.zza.zzk().zzg.zza(true);
            this.zza.zzg().zzag();
        }
        this.zza.zzk().zzk.zza(j10);
        if (this.zza.zzk().zzg.zza()) {
            zzb(j10, z10);
        }
    }
}
