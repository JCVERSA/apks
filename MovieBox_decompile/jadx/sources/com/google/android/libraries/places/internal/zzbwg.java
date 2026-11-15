package com.google.android.libraries.places.internal;

import java.io.IOException;
import java.io.InputStream;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

@SourceDebugExtension
final class zzbwg implements zzbws {
    private final InputStream zza;
    private final zzbwv zzb;

    public zzbwg(InputStream input, zzbwv timeout) {
        Intrinsics.h(input, "input");
        Intrinsics.h(timeout, "timeout");
        this.zza = input;
        this.zzb = timeout;
    }

    @Override
    public final void close() throws IOException {
        this.zza.close();
    }

    public final String toString() {
        return "source(" + this.zza + ")";
    }

    @Override
    public final long zza(zzbwb sink, long j10) throws IOException {
        Intrinsics.h(sink, "sink");
        try {
            zzbwv.zzb();
            zzbwn zzbwnVarZzB = sink.zzB(1);
            int i10 = this.zza.read(zzbwnVarZzB.zzb, zzbwnVarZzB.zzd, (int) Math.min(j10, 8192 - zzbwnVarZzB.zzd));
            if (i10 != -1) {
                zzbwnVarZzB.zzd += i10;
                long j11 = i10;
                sink.zzE(sink.zzg() + j11);
                return j11;
            }
            if (zzbwnVarZzB.zzc != zzbwnVarZzB.zzd) {
                return -1L;
            }
            sink.zza = zzbwnVarZzB.zza();
            zzbwo.zzb(zzbwnVarZzB);
            return -1L;
        } catch (AssertionError e10) {
            if (zzbwi.zza(e10)) {
                throw new IOException(e10);
            }
            throw e10;
        }
    }
}
