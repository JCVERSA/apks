package com.google.android.libraries.places.internal;

import java.io.IOException;
import java.io.InputStream;

final class zzbnw extends InputStream implements zzbav {
    private final zzbnv zza;

    public zzbnw(zzbnv zzbnvVar) {
        zzmt.zzc(zzbnvVar, "buffer");
        this.zza = zzbnvVar;
    }

    @Override
    public final int available() throws IOException {
        return this.zza.zzf();
    }

    @Override
    public final void close() throws IOException {
        this.zza.close();
    }

    @Override
    public final void mark(int i10) {
        this.zza.zzb();
    }

    @Override
    public final boolean markSupported() {
        return this.zza.zzd();
    }

    @Override
    public final int read() {
        if (this.zza.zzf() == 0) {
            return -1;
        }
        return this.zza.zze();
    }

    @Override
    public final void reset() throws IOException {
        this.zza.zzc();
    }

    @Override
    public final long skip(long j10) throws IOException {
        int iMin = (int) Math.min(this.zza.zzf(), j10);
        this.zza.zzl(iMin);
        return iMin;
    }

    @Override
    public final int read(byte[] bArr, int i10, int i11) throws IOException {
        if (this.zza.zzf() == 0) {
            return -1;
        }
        int iMin = Math.min(this.zza.zzf(), i11);
        this.zza.zzk(bArr, i10, iMin);
        return iMin;
    }
}
