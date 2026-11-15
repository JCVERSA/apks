package com.google.android.libraries.places.internal;

import java.io.InputStream;

public abstract class zzbej implements zzbqp {
    protected abstract zzbei zzc();

    protected abstract zzbis zzd();

    @Override
    public boolean zzp() {
        throw null;
    }

    @Override
    public final void zzr() {
        if (zzd().zzf()) {
            return;
        }
        zzd().zzc();
    }

    protected final void zzs(int i10) {
        zzbei.zzn(zzc(), i10);
    }

    @Override
    public final void zzt() {
        zzc().zzv();
    }

    @Override
    public final void zzu(int i10) {
        zzbei.zzo(zzc(), 2);
    }

    @Override
    public final void zzv(zzazc zzazcVar) {
        zzd().zza(zzazcVar);
    }

    @Override
    public final void zzw(InputStream inputStream) {
        try {
            if (!zzd().zzf()) {
                zzd().zze(inputStream);
            }
        } finally {
            zzbjd.zzi(inputStream);
        }
    }
}
