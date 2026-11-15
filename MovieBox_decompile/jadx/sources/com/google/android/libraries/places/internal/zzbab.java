package com.google.android.libraries.places.internal;

import com.hisavana.common.tracking.TrackingKey;

public final class zzbab {
    private String zza;
    private zzbac zzb;
    private Long zzc;
    private zzbau zzd;

    public final zzbab zza(String str) {
        this.zza = str;
        return this;
    }

    public final zzbab zzb(zzbac zzbacVar) {
        this.zzb = zzbacVar;
        return this;
    }

    public final zzbab zzc(zzbau zzbauVar) {
        this.zzd = zzbauVar;
        return this;
    }

    public final zzbab zzd(long j10) {
        this.zzc = Long.valueOf(j10);
        return this;
    }

    public final zzbae zze() {
        zzmt.zzc(this.zza, TrackingKey.DESCRIPTION);
        zzmt.zzc(this.zzb, "severity");
        zzmt.zzc(this.zzc, "timestampNanos");
        return new zzbae(this.zza, this.zzb, this.zzc.longValue(), null, this.zzd, null);
    }
}
