package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.client.zzbx;
import com.google.android.gms.ads.internal.client.zzce;
import com.google.android.gms.ads.internal.client.zzcg;
import defpackage.guh;
import java.util.List;

public final class zzfix extends zzcg {
    private final guh zza;

    public zzfix(guh guhVar) {
        this.zza = guhVar;
    }

    @Override
    public final zzbaa zze(String str) {
        return this.zza.a(str);
    }

    @Override
    public final zzbx zzf(String str) {
        return this.zza.b(str);
    }

    @Override
    public final zzbwd zzg(String str) {
        return this.zza.c(str);
    }

    @Override
    public final void zzh(zzboy zzboyVar) {
        guh guhVar = this.zza;
        guhVar.h(zzboyVar);
        guhVar.g();
    }

    @Override
    public final void zzi(List list, zzce zzceVar) {
        this.zza.i(list, zzceVar);
    }

    @Override
    public final boolean zzj(String str) {
        return this.zza.j(str);
    }

    @Override
    public final boolean zzk(String str) {
        return this.zza.k(str);
    }

    @Override
    public final boolean zzl(String str) {
        return this.zza.l(str);
    }
}
