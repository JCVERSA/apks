package com.google.android.gms.internal.ads;

import app.fast.ssh.ProtectedFastSSH;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

public final class zzdce implements zzddp, zzdlb, zzdir, zzdef, zzbfg {
    private final zzdeh zza;
    private final zzdgi zzb;
    private final zzfld zzc;
    private final ScheduledExecutorService zzd;
    private final Executor zze;
    private ScheduledFuture zzg;
    private final String zzi;
    private final zzhdr zzf = zzhdr.zze();
    private final AtomicBoolean zzh = new AtomicBoolean();

    zzdce(zzdeh zzdehVar, zzfld zzfldVar, ScheduledExecutorService scheduledExecutorService, Executor executor, String str, zzdgi zzdgiVar) {
        this.zza = zzdehVar;
        this.zzc = zzfldVar;
        this.zzd = scheduledExecutorService;
        this.zze = executor;
        this.zzi = str;
        this.zzb = zzdgiVar;
    }

    private final boolean zzl() {
        return this.zzi.equals(ProtectedFastSSH.s("扟"));
    }

    @Override
    public final void zzd(zzcch zzcchVar, String str, String str2) {
    }

    @Override
    public final synchronized void zzdH() {
        if (this.zzc.zze == 4) {
            this.zza.zza();
            return;
        }
        zzhdr zzhdrVar = this.zzf;
        if (zzhdrVar.isDone()) {
            return;
        }
        ScheduledFuture scheduledFuture = this.zzg;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
        }
        zzhdrVar.zza((Object) true);
    }

    @Override
    public final void zzdI() {
    }

    @Override
    public final void zzdK() {
    }

    @Override
    public final void zzdj(zzbff zzbffVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzng)).booleanValue() && zzl() && zzbffVar.zzj && this.zzh.compareAndSet(false, true) && this.zzc.zze != 3) {
            com.google.android.gms.ads.internal.util.zze.zza(ProtectedFastSSH.s("扠"));
            this.zza.zza();
        }
    }

    @Override
    public final void zzds() {
    }

    @Override
    public final void zzdt() {
        zzfld zzfldVar = this.zzc;
        if (zzfldVar.zze == 3) {
            return;
        }
        int i = zzfldVar.zzY;
        if (i == 0 || i == 1) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzng)).booleanValue() && zzl()) {
                return;
            }
            this.zza.zza();
        }
    }

    @Override
    public final void zze() {
    }

    @Override
    public final void zzf() {
    }

    @Override
    public final void zzg() {
        zzfld zzfldVar = this.zzc;
        int i = zzfldVar.zze;
        if (i == 3) {
            return;
        }
        if (i == 4) {
            this.zzb.zza();
            return;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzcm)).booleanValue() && zzfldVar.zzY == 2) {
            int i2 = zzfldVar.zzq;
            if (i2 == 0) {
                this.zza.zza();
            } else {
                zzhcy.zzr(this.zzf, new zzdcc(this), this.zze);
                this.zzg = this.zzd.schedule(new zzdcd(this), i2, TimeUnit.MILLISECONDS);
            }
        }
    }

    @Override
    public final void zzh() {
    }

    final void zzi() {
        synchronized (this) {
            zzhdr zzhdrVar = this.zzf;
            if (zzhdrVar.isDone()) {
                return;
            }
            zzhdrVar.zza((Object) true);
        }
    }

    @Override
    public final synchronized void zzj(com.google.android.gms.ads.internal.client.zze zzeVar) {
        zzhdr zzhdrVar = this.zzf;
        if (zzhdrVar.isDone()) {
            return;
        }
        ScheduledFuture scheduledFuture = this.zzg;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
        }
        zzhdrVar.zzb(new Exception());
    }

    final zzdeh zzk() {
        return this.zza;
    }
}
