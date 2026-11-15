package com.google.android.libraries.places.internal;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.InvalidMarkException;

final class zzbnx extends zzbeg {
    int zza;
    final int zzb;
    final byte[] zzc;
    int zzd = -1;

    zzbnx(byte[] bArr, int i10, int i11) {
        zzmt.zzf(i10 >= 0, "offset must be >= 0");
        zzmt.zzf(i11 >= 0, "length must be >= 0");
        int i12 = i11 + i10;
        zzmt.zzf(i12 <= 0, "offset + length exceeds array boundary");
        this.zzc = bArr;
        this.zza = i10;
        this.zzb = i12;
    }

    @Override
    public final void zzb() {
        this.zzd = this.zza;
    }

    @Override
    public final void zzc() {
        int i10 = this.zzd;
        if (i10 == -1) {
            throw new InvalidMarkException();
        }
        this.zza = i10;
    }

    @Override
    public final boolean zzd() {
        return true;
    }

    @Override
    public final int zze() {
        zza(1);
        int i10 = this.zza;
        this.zza = i10 + 1;
        return this.zzc[i10] & 255;
    }

    @Override
    public final int zzf() {
        return this.zzb - this.zza;
    }

    @Override
    public final zzbnv zzg(int i10) {
        zza(i10);
        int i11 = this.zza;
        this.zza = i11 + i10;
        return new zzbnx(this.zzc, i11, i10);
    }

    @Override
    public final void zzi(ByteBuffer byteBuffer) {
        zzmt.zzc(byteBuffer, "dest");
        int iRemaining = byteBuffer.remaining();
        zza(iRemaining);
        byteBuffer.put(this.zzc, this.zza, iRemaining);
        this.zza += iRemaining;
    }

    @Override
    public final void zzj(OutputStream outputStream, int i10) throws IOException {
        zza(i10);
        outputStream.write(this.zzc, this.zza, i10);
        this.zza += i10;
    }

    @Override
    public final void zzk(byte[] bArr, int i10, int i11) {
        System.arraycopy(this.zzc, this.zza, bArr, i10, i11);
        this.zza += i11;
    }

    @Override
    public final void zzl(int i10) {
        zza(i10);
        this.zza += i10;
    }
}
