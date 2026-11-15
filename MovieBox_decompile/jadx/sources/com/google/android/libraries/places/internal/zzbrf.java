package com.google.android.libraries.places.internal;

import java.io.IOException;

final class zzbrf extends zzbrl {
    final zzbri zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzbrf(zzbri zzbriVar, zzbts zzbtsVar) {
        super(zzbtsVar);
        this.zza = zzbriVar;
    }

    @Override
    public final void zza(zzbue zzbueVar) throws IOException {
        this.zza.zzk++;
        super.zza(zzbueVar);
    }

    @Override
    public final void zzb(boolean z10, int i10, int i11) throws IOException {
        if (z10) {
            this.zza.zzk++;
        }
        super.zzb(z10, i10, i11);
    }

    @Override
    public final void zzc(int i10, zzbtp zzbtpVar) throws IOException {
        this.zza.zzk++;
        super.zzc(i10, zzbtpVar);
    }
}
