package com.google.android.libraries.places.internal;

import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.jvm.internal.Intrinsics;

final class zzbua implements zzbts {
    private final zzbwc zza;
    private final zzbwb zzb;
    private final zzbtv zzc;
    private int zzd;
    private boolean zze;

    zzbua(zzbwc zzbwcVar, boolean z10) {
        this.zza = zzbwcVar;
        zzbwb zzbwbVar = new zzbwb();
        this.zzb = zzbwbVar;
        this.zzc = new zzbtv(4096, false, zzbwbVar);
        this.zzd = 16384;
    }

    @Override
    public final synchronized void close() throws IOException {
        this.zze = true;
        this.zza.close();
    }

    @Override
    public final synchronized void zza(zzbue zzbueVar) throws IOException {
        if (this.zze) {
            throw new IOException("closed");
        }
        this.zzd = zzbueVar.zzc(this.zzd);
        zzl(0, 0, (byte) 4, (byte) 1);
        this.zza.flush();
    }

    @Override
    public final synchronized void zzb(boolean z10, int i10, int i11) throws IOException {
        if (this.zze) {
            throw new IOException("closed");
        }
        zzl(0, 8, (byte) 6, z10 ? (byte) 1 : (byte) 0);
        this.zza.zzw(i10);
        this.zza.zzw(i11);
        this.zza.flush();
    }

    @Override
    public final synchronized void zzc(int i10, zzbtp zzbtpVar) throws IOException {
        if (this.zze) {
            throw new IOException("closed");
        }
        if (zzbtpVar.zzs == -1) {
            throw new IllegalArgumentException();
        }
        zzl(i10, 4, (byte) 3, (byte) 0);
        this.zza.zzw(zzbtpVar.zzs);
        this.zza.flush();
    }

    @Override
    public final int zzd() {
        return this.zzd;
    }

    @Override
    public final synchronized void zze() throws IOException {
        try {
            if (this.zze) {
                throw new IOException("closed");
            }
            Logger logger = zzbub.zza;
            Level level = Level.FINE;
            if (logger.isLoggable(level)) {
                zzbub.zza.logp(level, "io.grpc.okhttp.internal.framed.Http2$Writer", "connectionPreface", String.format(">> CONNECTION %s", zzbub.zzb.zze()));
            }
            zzbwc zzbwcVar = this.zza;
            byte[] source = zzbub.zzb.zzp();
            Intrinsics.h(source, "source");
            if (((zzbwk) zzbwcVar).zzc) {
                throw new IllegalStateException("closed");
            }
            zzbwb zzbwbVar = ((zzbwk) zzbwcVar).zzb;
            Intrinsics.h(source, "source");
            zzbwbVar.zzl(source, 0, source.length);
            ((zzbwk) zzbwcVar).zza();
            this.zza.flush();
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override
    public final synchronized void zzf(boolean z10, int i10, zzbwb zzbwbVar, int i11) throws IOException {
        if (this.zze) {
            throw new IOException("closed");
        }
        zzl(i10, i11, (byte) 0, z10 ? (byte) 1 : (byte) 0);
        if (i11 > 0) {
            this.zza.zzn(zzbwbVar, i11);
        }
    }

    @Override
    public final synchronized void zzg() throws IOException {
        if (this.zze) {
            throw new IOException("closed");
        }
        this.zza.flush();
    }

    @Override
    public final synchronized void zzh(int i10, zzbtp zzbtpVar, byte[] bArr) throws IOException {
        if (this.zze) {
            throw new IOException("closed");
        }
        if (zzbtpVar.zzs == -1) {
            throw zzbub.zzf("errorCode.httpCode == -1", new Object[0]);
        }
        zzl(0, 8, (byte) 7, (byte) 0);
        this.zza.zzw(0);
        this.zza.zzw(zzbtpVar.zzs);
        this.zza.flush();
    }

    @Override
    public final synchronized void zzi(zzbue zzbueVar) throws IOException {
        int i10;
        try {
            if (this.zze) {
                throw new IOException("closed");
            }
            int i11 = 0;
            zzl(0, zzbueVar.zzd() * 6, (byte) 4, (byte) 0);
            while (i11 < 10) {
                if (zzbueVar.zzf(i11)) {
                    if (i11 == 4) {
                        int i12 = i11;
                        i11 = 3;
                        i10 = i12;
                    } else {
                        i10 = 7;
                        if (i11 == 7) {
                            i11 = 4;
                        } else {
                            i10 = i11;
                        }
                    }
                    zzbwc zzbwcVar = this.zza;
                    if (((zzbwk) zzbwcVar).zzc) {
                        throw new IllegalStateException("closed");
                    }
                    ((zzbwk) zzbwcVar).zzb.zzq(i11);
                    ((zzbwk) zzbwcVar).zza();
                    this.zza.zzw(zzbueVar.zza(i10));
                    i11 = i10;
                }
                i11++;
            }
            this.zza.flush();
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override
    public final synchronized void zzj(boolean z10, boolean z11, int i10, int i11, List list) throws IOException {
        if (this.zze) {
            throw new IOException("closed");
        }
        this.zzc.zzb(list);
        long jZzg = this.zzb.zzg();
        int iMin = (int) Math.min(this.zzd, jZzg);
        long j10 = iMin;
        zzl(i10, iMin, (byte) 1, jZzg == j10 ? (byte) 4 : (byte) 0);
        this.zza.zzn(this.zzb, j10);
        if (jZzg > j10) {
            long j11 = jZzg - j10;
            while (j11 > 0) {
                int iMin2 = (int) Math.min(this.zzd, j11);
                long j12 = iMin2;
                j11 -= j12;
                zzl(i10, iMin2, (byte) 9, j11 == 0 ? (byte) 4 : (byte) 0);
                this.zza.zzn(this.zzb, j12);
            }
        }
    }

    @Override
    public final synchronized void zzk(int i10, long j10) throws IOException {
        if (this.zze) {
            throw new IOException("closed");
        }
        if (j10 == 0) {
            throw zzbub.zzf("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s", new Object[]{0L});
        }
        zzl(i10, 4, (byte) 8, (byte) 0);
        this.zza.zzw((int) j10);
        this.zza.flush();
    }

    final void zzl(int i10, int i11, byte b10, byte b11) throws IOException {
        Logger logger = zzbub.zza;
        Level level = Level.FINE;
        if (logger.isLoggable(level)) {
            zzbub.zza.logp(level, "io.grpc.okhttp.internal.framed.Http2$Writer", "frameHeader", zzbty.zza(false, i10, i11, b10, b11));
        }
        int i12 = this.zzd;
        if (i11 > i12) {
            throw zzbub.zzf("FRAME_SIZE_ERROR length > %d: %d", new Object[]{Integer.valueOf(i12), Integer.valueOf(i11)});
        }
        if ((Integer.MIN_VALUE & i10) != 0) {
            throw zzbub.zzf("reserved bit set: %s", new Object[]{Integer.valueOf(i10)});
        }
        zzbwc zzbwcVar = this.zza;
        zzbwcVar.zzv((i11 >>> 16) & 255);
        zzbwcVar.zzv((i11 >>> 8) & 255);
        zzbwcVar.zzv(i11 & 255);
        this.zza.zzv(b10);
        this.zza.zzv(b11);
        this.zza.zzw(i10 & Integer.MAX_VALUE);
    }
}
