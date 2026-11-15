package com.google.android.libraries.places.internal;

import java.io.IOException;
import java.io.OutputStream;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

@SourceDebugExtension
final class zzbwj implements zzbwq {
    private final OutputStream zza;
    private final zzbwv zzb;

    public zzbwj(OutputStream out, zzbwv timeout) {
        Intrinsics.h(out, "out");
        Intrinsics.h(timeout, "timeout");
        this.zza = out;
        this.zzb = timeout;
    }

    @Override
    public final void close() throws IOException {
        this.zza.close();
    }

    @Override
    public final void flush() throws IOException {
        this.zza.flush();
    }

    public final String toString() {
        return "sink(" + this.zza + ")";
    }

    @Override
    public final void zzn(zzbwb source, long j10) throws IOException {
        Intrinsics.h(source, "source");
        zzbvv.zzb(source.zzg(), 0L, j10);
        while (j10 > 0) {
            zzbwv.zzb();
            zzbwn zzbwnVar = source.zza;
            Intrinsics.e(zzbwnVar);
            int iMin = (int) Math.min(j10, zzbwnVar.zzd - zzbwnVar.zzc);
            this.zza.write(zzbwnVar.zzb, zzbwnVar.zzc, iMin);
            zzbwnVar.zzc += iMin;
            long j11 = iMin;
            source.zzE(source.zzg() - j11);
            j10 -= j11;
            if (zzbwnVar.zzc == zzbwnVar.zzd) {
                source.zza = zzbwnVar.zza();
                zzbwo.zzb(zzbwnVar);
            }
        }
    }
}
