package com.google.android.libraries.places.internal;

final class zzbpv extends zzbir {
    static final zzayc zza = zzayc.zza("io.grpc.internal.RetryingNameResolver.RESOLUTION_RESULT_LISTENER_KEY");
    private final zzbcv zzb;
    private final zzbpq zzc;
    private final zzbdw zzd;

    zzbpv(zzbcv zzbcvVar, zzbpq zzbpqVar, zzbdw zzbdwVar) {
        super(zzbcvVar);
        this.zzb = zzbcvVar;
        this.zzc = zzbpqVar;
        this.zzd = zzbdwVar;
    }

    @Override
    public final void zzc() {
        super.zzc();
        this.zzc.zzb();
    }

    @Override
    public final void zzd(zzbcr zzbcrVar) {
        super.zzd(new zzbpu(this, zzbcrVar));
    }
}
