package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import java.util.Iterator;
import java.util.Map;

public final class zzb extends zze {
    private final Map<String, Long> zza;
    private final Map<String, Integer> zzb;
    private long zzc;

    public zzb(zzhy zzhyVar) {
        super(zzhyVar);
        this.zzb = new androidx.collection.a();
        this.zza = new androidx.collection.a();
    }

    @Override
    public final Clock zzb() {
        return super.zzb();
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

    static void zzb(zzb zzbVar, String str, long j10) {
        zzbVar.zzt();
        Preconditions.checkNotEmpty(str);
        Integer num = zzbVar.zzb.get(str);
        if (num == null) {
            zzbVar.zzj().zzg().zza("Call to endAdUnitExposure for unknown ad unit id", str);
            return;
        }
        zzlk zzlkVarZza = zzbVar.zzn().zza(false);
        int iIntValue = num.intValue() - 1;
        if (iIntValue != 0) {
            zzbVar.zzb.put(str, Integer.valueOf(iIntValue));
            return;
        }
        zzbVar.zzb.remove(str);
        Long l10 = zzbVar.zza.get(str);
        if (l10 == null) {
            zzbVar.zzj().zzg().zza("First ad unit exposure time was never set");
        } else {
            long jLongValue = j10 - l10.longValue();
            zzbVar.zza.remove(str);
            zzbVar.zza(str, jLongValue, zzlkVarZza);
        }
        if (zzbVar.zzb.isEmpty()) {
            long j11 = zzbVar.zzc;
            if (j11 == 0) {
                zzbVar.zzj().zzg().zza("First ad exposure time was never set");
            } else {
                zzbVar.zza(j10 - j11, zzlkVarZza);
                zzbVar.zzc = 0L;
            }
        }
    }

    @Override
    public final Context zza() {
        return super.zza();
    }

    static void zza(zzb zzbVar, String str, long j10) {
        zzbVar.zzt();
        Preconditions.checkNotEmpty(str);
        if (zzbVar.zzb.isEmpty()) {
            zzbVar.zzc = j10;
        }
        Integer num = zzbVar.zzb.get(str);
        if (num != null) {
            zzbVar.zzb.put(str, Integer.valueOf(num.intValue() + 1));
        } else if (zzbVar.zzb.size() >= 100) {
            zzbVar.zzj().zzu().zza("Too many ads visible");
        } else {
            zzbVar.zzb.put(str, 1);
            zzbVar.zza.put(str, Long.valueOf(j10));
        }
    }

    public final void zza(String str, long j10) {
        if (str != null && str.length() != 0) {
            zzl().zzb(new zza(this, str, j10));
        } else {
            zzj().zzg().zza("Ad unit id must be a non-empty string");
        }
    }

    private final void zza(long j10, zzlk zzlkVar) {
        if (zzlkVar == null) {
            zzj().zzp().zza("Not logging ad exposure. No active activity");
            return;
        }
        if (j10 < 1000) {
            zzj().zzp().zza("Not logging ad exposure. Less than 1000 ms. exposure", Long.valueOf(j10));
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putLong("_xt", j10);
        zzos.zza(zzlkVar, bundle, true);
        zzm().zzc("am", "_xa", bundle);
    }

    public final void zzb(String str, long j10) {
        if (str != null && str.length() != 0) {
            zzl().zzb(new zzd(this, str, j10));
        } else {
            zzj().zzg().zza("Ad unit id must be a non-empty string");
        }
    }

    private final void zza(String str, long j10, zzlk zzlkVar) {
        if (zzlkVar == null) {
            zzj().zzp().zza("Not logging ad unit exposure. No active activity");
            return;
        }
        if (j10 < 1000) {
            zzj().zzp().zza("Not logging ad unit exposure. Less than 1000 ms. exposure", Long.valueOf(j10));
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString("_ai", str);
        bundle.putLong("_xt", j10);
        zzos.zza(zzlkVar, bundle, true);
        zzm().zzc("am", "_xu", bundle);
    }

    public final void zzb(long j10) {
        Iterator<String> it = this.zza.keySet().iterator();
        while (it.hasNext()) {
            this.zza.put(it.next(), Long.valueOf(j10));
        }
        if (this.zza.isEmpty()) {
            return;
        }
        this.zzc = j10;
    }

    public final void zza(long j10) {
        zzlk zzlkVarZza = zzn().zza(false);
        for (String str : this.zza.keySet()) {
            zza(str, j10 - this.zza.get(str).longValue(), zzlkVarZza);
        }
        if (!this.zza.isEmpty()) {
            zza(j10 - this.zzc, zzlkVarZza);
        }
        zzb(j10);
    }
}
