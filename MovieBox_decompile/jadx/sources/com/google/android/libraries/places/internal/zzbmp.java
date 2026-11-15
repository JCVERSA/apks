package com.google.android.libraries.places.internal;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

final class zzbmp extends FilterInputStream {
    private final int zza;
    private final zzbqo zzb;
    private long zzc;
    private long zzd;
    private long zze;

    zzbmp(InputStream inputStream, int i10, zzbqo zzbqoVar) {
        super(inputStream);
        this.zze = -1L;
        this.zza = i10;
        this.zzb = zzbqoVar;
    }

    private final void zza() {
        long j10 = this.zzd;
        long j11 = this.zzc;
        if (j10 > j11) {
            this.zzb.zzg(j10 - j11);
            this.zzc = this.zzd;
        }
    }

    private final void zzb() {
        long j10 = this.zzd;
        int i10 = this.zza;
        if (j10 <= i10) {
            return;
        }
        throw new zzbdq(zzbdo.zzj.zzg("Decompressed gRPC message exceeds maximum size " + i10), null);
    }

    @Override
    public final synchronized void mark(int i10) {
        ((FilterInputStream) this).in.mark(i10);
        this.zze = this.zzd;
    }

    @Override
    public final int read() throws IOException {
        int i10 = ((FilterInputStream) this).in.read();
        if (i10 != -1) {
            this.zzd++;
        }
        zzb();
        zza();
        return i10;
    }

    @Override
    public final synchronized void reset() throws IOException {
        if (!((FilterInputStream) this).in.markSupported()) {
            throw new IOException("Mark not supported");
        }
        if (this.zze == -1) {
            throw new IOException("Mark not set");
        }
        ((FilterInputStream) this).in.reset();
        this.zzd = this.zze;
    }

    @Override
    public final long skip(long j10) throws IOException {
        long jSkip = ((FilterInputStream) this).in.skip(j10);
        this.zzd += jSkip;
        zzb();
        zza();
        return jSkip;
    }

    @Override
    public final int read(byte[] bArr, int i10, int i11) throws IOException {
        int i12 = ((FilterInputStream) this).in.read(bArr, i10, i11);
        if (i12 != -1) {
            this.zzd += (long) i12;
        }
        zzb();
        zza();
        return i12;
    }
}
