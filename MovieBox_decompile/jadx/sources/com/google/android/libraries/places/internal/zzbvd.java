package com.google.android.libraries.places.internal;

final class zzbvd extends zzbbm {
    final zzbvg zzf;

    zzbvd(zzbvg zzbvgVar) {
        this.zzf = zzbvgVar;
    }

    @Override
    public final void zzb(zzbdo zzbdoVar) {
        this.zzf.zzh.zze(zzaze.TRANSIENT_FAILURE, new zzbbc(zzbbe.zzb(zzbdoVar)));
    }

    @Override
    public final void zzc(zzbbi zzbbiVar) {
        throw new IllegalStateException("GracefulSwitchLoadBalancer must switch to a load balancing policy before handling ResolvedAddresses");
    }

    @Override
    public final void zze() {
    }
}
