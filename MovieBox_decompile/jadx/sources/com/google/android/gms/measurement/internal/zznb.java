package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.common.util.Clock;

public final class zznb extends zzh {
    protected final zznj zza;
    protected final zznh zzb;
    private Handler zzc;
    private boolean zzd;
    private final zzng zze;

    zznb(zzhy zzhyVar) {
        super(zzhyVar);
        this.zzd = true;
        this.zza = new zznj(this);
        this.zzb = new zznh(this);
        this.zze = new zzng(this);
    }

    public final void zzab() {
        zzt();
        if (this.zzc == null) {
            this.zzc = new com.google.android.gms.internal.measurement.zzdh(Looper.getMainLooper());
        }
    }

    final boolean zzaa() {
        zzt();
        return this.zzd;
    }

    @Override
    public final zzb zzc() {
        return super.zzc();
    }

    @Override
    public final zzab zzd() {
        return super.zzd();
    }

    @Override
    public final zzag zze() {
        return super.zze();
    }

    @Override
    public final zzaz zzf() {
        return super.zzf();
    }

    @Override
    public final zzgg zzg() {
        return super.zzg();
    }

    @Override
    public final zzgf zzh() {
        return super.zzh();
    }

    @Override
    public final zzgh zzi() {
        return super.zzi();
    }

    @Override
    public final zzgo zzj() {
        return super.zzj();
    }

    @Override
    public final zzha zzk() {
        return super.zzk();
    }

    @Override
    public final zzhv zzl() {
        return super.zzl();
    }

    @Override
    public final zzjq zzm() {
        return super.zzm();
    }

    @Override
    public final zzlj zzn() {
        return super.zzn();
    }

    @Override
    public final zzls zzo() {
        return super.zzo();
    }

    @Override
    public final zznb zzp() {
        return super.zzp();
    }

    @Override
    public final zzos zzq() {
        return super.zzq();
    }

    @Override
    public final void zzr() {
        super.zzr();
    }

    @Override
    public final void zzs() {
        super.zzs();
    }

    @Override
    public final void zzt() {
        super.zzt();
    }

    @Override
    protected final boolean zzz() {
        return false;
    }

    @Override
    public final Context zza() {
        return super.zza();
    }

    @Override
    public final Clock zzb() {
        return super.zzb();
    }

    static void zza(zznb zznbVar, long j10) {
        zznbVar.zzt();
        zznbVar.zzab();
        zznbVar.zzj().zzp().zza("Activity paused, time", Long.valueOf(j10));
        zznbVar.zze.zza(j10);
        if (zznbVar.zze().zzw()) {
            zznbVar.zzb.zzb(j10);
        }
    }

    static void zzb(zznb zznbVar, long j10) {
        zznbVar.zzt();
        zznbVar.zzab();
        zznbVar.zzj().zzp().zza("Activity resumed, time", Long.valueOf(j10));
        if (zznbVar.zze().zza(zzbh.zzco)) {
            if (zznbVar.zze().zzw() || zznbVar.zzd) {
                zznbVar.zzb.zzc(j10);
            }
        } else if (zznbVar.zze().zzw() || zznbVar.zzk().zzn.zza()) {
            zznbVar.zzb.zzc(j10);
        }
        zznbVar.zze.zza();
        zznj zznjVar = zznbVar.zza;
        zznjVar.zza.zzt();
        if (zznjVar.zza.zzu.zzac()) {
            zznjVar.zza(zznjVar.zza.zzb().currentTimeMillis(), false);
        }
    }

    final void zza(boolean z10) {
        zzt();
        this.zzd = z10;
    }

    public final boolean zza(boolean z10, boolean z11, long j10) {
        return this.zzb.zza(z10, z11, j10);
    }
}
