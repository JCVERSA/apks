package com.google.android.gms.measurement.internal;

final class zzz extends zzaa {
    private com.google.android.gms.internal.measurement.zzfo.zze zzg;
    private final zzt zzh;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzz(zzt zztVar, String str, int i10, com.google.android.gms.internal.measurement.zzfo.zze zzeVar) {
        super(str, i10);
        this.zzh = zztVar;
        this.zzg = zzeVar;
    }

    @Override
    final int zza() {
        return this.zzg.zza();
    }

    @Override
    final boolean zzb() {
        return false;
    }

    @Override
    final boolean zzc() {
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    final boolean zza(Long l10, Long l11, com.google.android.gms.internal.measurement.zzfy.zzo zzoVar, boolean z10) {
        Object[] objArr = com.google.android.gms.internal.measurement.zzoe.zza() && this.zzh.zze().zzf(this.zza, zzbh.zzbn);
        boolean zZzf = this.zzg.zzf();
        boolean zZzg = this.zzg.zzg();
        boolean zZzh = this.zzg.zzh();
        Object[] objArr2 = zZzf || zZzg || zZzh;
        Boolean boolZza = null;
        boolZza = null;
        boolZza = null;
        boolZza = null;
        boolZza = null;
        if (z10 && objArr2 != true) {
            this.zzh.zzj().zzp().zza("Property filter already evaluated true and it is not associated with an enhanced audience. audience ID, filter ID", Integer.valueOf(this.zzb), this.zzg.zzi() ? Integer.valueOf(this.zzg.zza()) : null);
            return true;
        }
        com.google.android.gms.internal.measurement.zzfo.zzc zzcVarZzb = this.zzg.zzb();
        boolean zZzf2 = zzcVarZzb.zzf();
        if (zzoVar.zzk()) {
            if (zzcVarZzb.zzh()) {
                boolZza = zzaa.zza(zzaa.zza(zzoVar.zzc(), zzcVarZzb.zzc()), zZzf2);
            } else {
                this.zzh.zzj().zzu().zza("No number filter for long property. property", this.zzh.zzi().zzc(zzoVar.zzg()));
            }
        } else if (zzoVar.zzi()) {
            if (zzcVarZzb.zzh()) {
                boolZza = zzaa.zza(zzaa.zza(zzoVar.zza(), zzcVarZzb.zzc()), zZzf2);
            } else {
                this.zzh.zzj().zzu().zza("No number filter for double property. property", this.zzh.zzi().zzc(zzoVar.zzg()));
            }
        } else if (!zzoVar.zzm()) {
            this.zzh.zzj().zzu().zza("User property has no value, property", this.zzh.zzi().zzc(zzoVar.zzg()));
        } else if (zzcVarZzb.zzj()) {
            boolZza = zzaa.zza(zzaa.zza(zzoVar.zzh(), zzcVarZzb.zzd(), this.zzh.zzj()), zZzf2);
        } else if (!zzcVarZzb.zzh()) {
            this.zzh.zzj().zzu().zza("No string or number filter defined. property", this.zzh.zzi().zzc(zzoVar.zzg()));
        } else if (zzoo.zzb(zzoVar.zzh())) {
            boolZza = zzaa.zza(zzaa.zza(zzoVar.zzh(), zzcVarZzb.zzc()), zZzf2);
        } else {
            this.zzh.zzj().zzu().zza("Invalid user property value for Numeric number filter. property, value", this.zzh.zzi().zzc(zzoVar.zzg()), zzoVar.zzh());
        }
        this.zzh.zzj().zzp().zza("Property filter result", boolZza == null ? "null" : boolZza);
        if (boolZza == null) {
            return false;
        }
        this.zzc = Boolean.TRUE;
        if (zZzh && !boolZza.booleanValue()) {
            return true;
        }
        if (!z10 || this.zzg.zzf()) {
            this.zzd = boolZza;
        }
        if (boolZza.booleanValue() && objArr2 != false && zzoVar.zzl()) {
            long jZzd = zzoVar.zzd();
            if (l10 != null) {
                jZzd = l10.longValue();
            }
            if (objArr != false && this.zzg.zzf() && !this.zzg.zzg() && l11 != null) {
                jZzd = l11.longValue();
            }
            if (this.zzg.zzg()) {
                this.zzf = Long.valueOf(jZzd);
            } else {
                this.zze = Long.valueOf(jZzd);
            }
        }
        return true;
    }
}
