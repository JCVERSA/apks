package com.google.android.libraries.places.internal;

import java.io.IOException;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

@SourceDebugExtension
public final class zzbvy implements zzbws {
    final zzbvz zza;
    final zzbws zzb;

    zzbvy(zzbvz zzbvzVar, zzbws zzbwsVar) {
        this.zza = zzbvzVar;
        this.zzb = zzbwsVar;
    }

    @Override
    public final void close() {
        zzbvz zzbvzVar = this.zza;
        try {
            try {
                this.zzb.close();
                Unit unit = Unit.f64096a;
                zzbvw.zza(zzbvz.zza, zzbvzVar);
            } catch (IOException e10) {
                zzbvw.zza(zzbvz.zza, zzbvzVar);
                throw e10;
            }
        } catch (Throwable th2) {
            zzbvw.zza(zzbvz.zza, zzbvzVar);
            throw th2;
        }
    }

    public final String toString() {
        return "AsyncTimeout.source(" + this.zzb + ")";
    }

    @Override
    public final long zza(zzbwb sink, long j10) {
        Intrinsics.h(sink, "sink");
        zzbvz zzbvzVar = this.zza;
        try {
            try {
                long jZza = this.zzb.zza(sink, j10);
                zzbvw.zza(zzbvz.zza, zzbvzVar);
                return jZza;
            } catch (IOException e10) {
                zzbvw.zza(zzbvz.zza, zzbvzVar);
                throw e10;
            }
        } catch (Throwable th2) {
            zzbvw.zza(zzbvz.zza, zzbvzVar);
            throw th2;
        }
    }
}
