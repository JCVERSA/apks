package com.google.android.libraries.places.internal;

import java.io.IOException;
import java.util.Locale;
import java.util.logging.Logger;

public final class zzbub implements zzbuf {
    private static final Logger zza = Logger.getLogger(zzbty.class.getName());
    private static final zzbwf zzb;

    static {
        zzbwe zzbweVar = zzbwf.zza;
        zzb = zzbwe.zza("PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n");
    }

    static int zza(int i10, byte b10, short s10) throws IOException {
        if ((b10 & 8) != 0) {
            i10--;
        }
        if (s10 <= i10) {
            return i10 - s10;
        }
        throw zzi("PROTOCOL_ERROR padding %s > remaining length %s", Short.valueOf(s10), Integer.valueOf(i10));
    }

    static int zzb(zzbwd zzbwdVar) {
        return (zzbwdVar.zzc() & 255) | ((zzbwdVar.zzc() & 255) << 16) | ((zzbwdVar.zzc() & 255) << 8);
    }

    static IllegalArgumentException zzf(String str, Object[] objArr) {
        throw new IllegalArgumentException(String.format(Locale.US, str, objArr));
    }

    public static IOException zzi(String str, Object... objArr) throws IOException {
        throw new IOException(String.format(Locale.US, str, objArr));
    }

    @Override
    public final zzbtr zzc(zzbwd zzbwdVar, boolean z10) {
        return new zzbtz(zzbwdVar, 4096, true);
    }

    @Override
    public final zzbts zzd(zzbwc zzbwcVar, boolean z10) {
        return new zzbua(zzbwcVar, true);
    }
}
