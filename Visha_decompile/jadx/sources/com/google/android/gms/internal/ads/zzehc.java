package com.google.android.gms.internal.ads;

import com.google.android.gms.dynamic.IObjectWrapper;
import defpackage.c9g;
import defpackage.izf;
import defpackage.u0g;
import defpackage.w1g;

final class zzehc extends zzbvu {
    final w1g zza;
    final izf zzb;
    final u0g zzc;
    final c9g zzd;

    public zzehc(h5 h5Var, w1g w1gVar, izf izfVar, u0g u0gVar, c9g c9gVar) {
        this.zza = w1gVar;
        this.zzb = izfVar;
        this.zzc = u0gVar;
        this.zzd = c9gVar;
    }

    @Override
    public final void zze(IObjectWrapper iObjectWrapper) {
        this.zzb.onAdClicked();
    }

    @Override
    public final void zzf(IObjectWrapper iObjectWrapper) {
        this.zza.zzds(4);
    }

    @Override
    public final void zzg(IObjectWrapper iObjectWrapper, int i) {
    }

    @Override
    public final void zzh(IObjectWrapper iObjectWrapper) {
        this.zzc.zzb();
    }

    @Override
    public final void zzi(IObjectWrapper iObjectWrapper) {
    }

    @Override
    public final void zzj(IObjectWrapper iObjectWrapper) {
        this.zza.zzdp();
    }

    @Override
    public final void zzk(IObjectWrapper iObjectWrapper, int i) {
    }

    @Override
    public final void zzl(IObjectWrapper iObjectWrapper) {
    }

    @Override
    public final void zzm(IObjectWrapper iObjectWrapper, zzbvw zzbvwVar) {
        this.zzd.p(zzbvwVar);
    }

    @Override
    public final void zzn(IObjectWrapper iObjectWrapper) {
        this.zzd.p(null);
    }

    @Override
    public final void zzo(IObjectWrapper iObjectWrapper) {
        this.zzc.zze();
    }

    @Override
    public final void zzp(IObjectWrapper iObjectWrapper) {
        this.zzd.zzc();
    }
}
