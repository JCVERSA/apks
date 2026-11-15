package com.google.android.libraries.places.internal;

import java.io.EOFException;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;

final class zzbsl extends zzbeg {
    private final zzbwb zza;

    zzbsl(zzbwb zzbwbVar) {
        this.zza = zzbwbVar;
    }

    @Override
    public final void close() throws EOFException {
        zzbwb zzbwbVar = this.zza;
        zzbwbVar.zzF(zzbwbVar.zzg());
    }

    @Override
    public final int zze() {
        try {
            return this.zza.zzc() & 255;
        } catch (EOFException e10) {
            throw new IndexOutOfBoundsException(e10.getMessage());
        }
    }

    @Override
    public final int zzf() {
        return (int) this.zza.zzg();
    }

    @Override
    public final zzbnv zzg(int i10) {
        zzbwb zzbwbVar = new zzbwb();
        zzbwbVar.zzn(this.zza, i10);
        return new zzbsl(zzbwbVar);
    }

    @Override
    public final void zzi(ByteBuffer byteBuffer) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final void zzj(OutputStream outputStream, int i10) throws IOException {
        this.zza.zzr(outputStream, i10);
    }

    @Override
    public final void zzk(byte[] bArr, int i10, int i11) {
        while (i11 > 0) {
            int iZzd = this.zza.zzd(bArr, i10, i11);
            if (iZzd == -1) {
                throw new IndexOutOfBoundsException("EOF trying to read " + i11 + " bytes");
            }
            i11 -= iZzd;
            i10 += iZzd;
        }
    }

    @Override
    public final void zzl(int i10) {
        try {
            this.zza.zzF(i10);
        } catch (EOFException e10) {
            throw new IndexOutOfBoundsException(e10.getMessage());
        }
    }
}
