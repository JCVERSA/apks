package com.google.android.libraries.places.internal;

import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

final class zzbrk implements zzbts {
    private static final Logger zza = Logger.getLogger(zzbsf.class.getName());
    private final zzbrj zzb;
    private final zzbts zzc;
    private final zzbsi zzd = new zzbsi(Level.FINE, zzbsf.class);

    zzbrk(zzbrj zzbrjVar, zzbts zzbtsVar) {
        this.zzb = zzbrjVar;
        this.zzc = zzbtsVar;
    }

    @Override
    public final void close() {
        try {
            this.zzc.close();
        } catch (IOException e10) {
            zza.logp(e10.getClass().equals(IOException.class) ? Level.FINE : Level.INFO, "io.grpc.okhttp.ExceptionHandlingFrameWriter", "close", "Failed closing connection", (Throwable) e10);
        }
    }

    @Override
    public final void zza(zzbue zzbueVar) {
        this.zzd.zzi(2);
        try {
            this.zzc.zza(zzbueVar);
        } catch (IOException e10) {
            this.zzb.zzb(e10);
        }
    }

    @Override
    public final void zzb(boolean z10, int i10, int i11) {
        long j10 = (((long) i10) << 32) | (((long) i11) & 4294967295L);
        if (z10) {
            this.zzd.zze(2, j10);
        } else {
            this.zzd.zzd(2, j10);
        }
        try {
            this.zzc.zzb(z10, i10, i11);
        } catch (IOException e10) {
            this.zzb.zzb(e10);
        }
    }

    @Override
    public final void zzc(int i10, zzbtp zzbtpVar) {
        this.zzd.zzg(2, i10, zzbtpVar);
        try {
            this.zzc.zzc(i10, zzbtpVar);
        } catch (IOException e10) {
            this.zzb.zzb(e10);
        }
    }

    @Override
    public final int zzd() {
        return this.zzc.zzd();
    }

    @Override
    public final void zze() {
        try {
            this.zzc.zze();
        } catch (IOException e10) {
            this.zzb.zzb(e10);
        }
    }

    @Override
    public final void zzf(boolean z10, int i10, zzbwb zzbwbVar, int i11) {
        this.zzd.zza(2, i10, zzbwbVar, i11, z10);
        try {
            this.zzc.zzf(z10, i10, zzbwbVar, i11);
        } catch (IOException e10) {
            this.zzb.zzb(e10);
        }
    }

    @Override
    public final void zzg() {
        try {
            this.zzc.zzg();
        } catch (IOException e10) {
            this.zzb.zzb(e10);
        }
    }

    @Override
    public final void zzh(int i10, zzbtp zzbtpVar, byte[] bArr) {
        zzbwe zzbweVar = zzbwf.zza;
        this.zzd.zzb(2, 0, zzbtpVar, zzbwe.zzb(bArr));
        try {
            this.zzc.zzh(0, zzbtpVar, bArr);
            this.zzc.zzg();
        } catch (IOException e10) {
            this.zzb.zzb(e10);
        }
    }

    @Override
    public final void zzi(zzbue zzbueVar) {
        this.zzd.zzh(2, zzbueVar);
        try {
            this.zzc.zzi(zzbueVar);
        } catch (IOException e10) {
            this.zzb.zzb(e10);
        }
    }

    @Override
    public final void zzj(boolean z10, boolean z11, int i10, int i11, List list) {
        try {
            this.zzc.zzj(false, false, i10, 0, list);
        } catch (IOException e10) {
            this.zzb.zzb(e10);
        }
    }

    @Override
    public final void zzk(int i10, long j10) {
        this.zzd.zzj(2, i10, j10);
        try {
            this.zzc.zzk(i10, j10);
        } catch (IOException e10) {
            this.zzb.zzb(e10);
        }
    }
}
