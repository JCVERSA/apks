package com.google.android.gms.measurement;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.collection.a;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzhy;
import com.google.android.gms.measurement.internal.zzjl;
import com.google.android.gms.measurement.internal.zzjm;
import com.google.android.gms.measurement.internal.zzjq;
import com.google.android.gms.measurement.internal.zzon;
import java.util.List;
import java.util.Map;

final class zzb extends AppMeasurement.zza {
    private final zzhy zza;
    private final zzjq zzb;

    public zzb(@NonNull zzhy zzhyVar) {
        super();
        Preconditions.checkNotNull(zzhyVar);
        this.zza = zzhyVar;
        this.zzb = zzhyVar.zzp();
    }

    @Override
    public final int zza(String str) {
        return zzjq.zza(str);
    }

    @Override
    public final Double zzb() {
        return this.zzb.zzad();
    }

    @Override
    public final Integer zzc() {
        return this.zzb.zzae();
    }

    @Override
    public final Long zzd() {
        return this.zzb.zzaf();
    }

    @Override
    public final String zze() {
        return this.zzb.zzak();
    }

    @Override
    public final long zzf() {
        return this.zza.zzt().zzn();
    }

    @Override
    public final String zzg() {
        return this.zzb.zzag();
    }

    @Override
    public final String zzh() {
        return this.zzb.zzah();
    }

    @Override
    public final String zzi() {
        return this.zzb.zzai();
    }

    @Override
    public final String zzj() {
        return this.zzb.zzag();
    }

    @Override
    public final Boolean zza() {
        return this.zzb.zzac();
    }

    @Override
    public final void zzb(String str) {
        this.zza.zze().zza(str, this.zza.zzb().elapsedRealtime());
    }

    @Override
    public final void zzc(String str) {
        this.zza.zze().zzb(str, this.zza.zzb().elapsedRealtime());
    }

    @Override
    public final Object zza(int i10) {
        if (i10 == 0) {
            return zze();
        }
        if (i10 == 1) {
            return zzd();
        }
        if (i10 == 2) {
            return zzb();
        }
        if (i10 == 3) {
            return zzc();
        }
        if (i10 != 4) {
            return null;
        }
        return zza();
    }

    @Override
    public final void zzb(String str, String str2, Bundle bundle) {
        this.zzb.zzb(str, str2, bundle);
    }

    @Override
    public final void zzb(zzjl zzjlVar) {
        this.zzb.zzb(zzjlVar);
    }

    @Override
    public final List<Bundle> zza(String str, String str2) {
        return this.zzb.zza(str, str2);
    }

    @Override
    public final Map<String, Object> zza(boolean z10) {
        List<zzon> listZza = this.zzb.zza(z10);
        a aVar = new a(listZza.size());
        for (zzon zzonVar : listZza) {
            Object objZza = zzonVar.zza();
            if (objZza != null) {
                aVar.put(zzonVar.zza, objZza);
            }
        }
        return aVar;
    }

    @Override
    public final Map<String, Object> zza(String str, String str2, boolean z10) {
        return this.zzb.zza(str, str2, z10);
    }

    @Override
    public final void zza(String str, String str2, Bundle bundle) {
        this.zza.zzp().zza(str, str2, bundle);
    }

    @Override
    public final void zza(String str, String str2, Bundle bundle, long j10) {
        this.zzb.zza(str, str2, bundle, j10);
    }

    @Override
    public final void zza(zzjl zzjlVar) {
        this.zzb.zza(zzjlVar);
    }

    @Override
    public final void zza(Bundle bundle) {
        this.zzb.zzb(bundle);
    }

    @Override
    public final void zza(zzjm zzjmVar) {
        this.zzb.zza(zzjmVar);
    }
}
