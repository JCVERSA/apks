package com.google.android.libraries.places.internal;

import java.io.OutputStream;

final class zzbmu extends OutputStream {
    final zzbmw zza;

    zzbmu(zzbmw zzbmwVar, zzbmt zzbmtVar) {
        this.zza = zzbmwVar;
    }

    @Override
    public final void write(int i10) {
        this.zza.zzk(new byte[]{(byte) i10}, 0, 1);
    }

    @Override
    public final void write(byte[] bArr, int i10, int i11) {
        this.zza.zzk(bArr, i10, i11);
    }
}
