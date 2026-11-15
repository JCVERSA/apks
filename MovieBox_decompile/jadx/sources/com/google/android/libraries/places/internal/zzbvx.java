package com.google.android.libraries.places.internal;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.IOException;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

@SourceDebugExtension
public final class zzbvx implements zzbwq {
    final zzbvz zza;
    final zzbwq zzb;

    zzbvx(zzbvz zzbvzVar, zzbwq zzbwqVar) {
        this.zza = zzbvzVar;
        this.zzb = zzbwqVar;
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

    @Override
    public final void flush() {
        zzbvz zzbvzVar = this.zza;
        try {
            try {
                this.zzb.flush();
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
        return "AsyncTimeout.sink(" + this.zzb + ")";
    }

    @Override
    public final void zzn(zzbwb source, long j10) {
        Intrinsics.h(source, "source");
        zzbvv.zzb(source.zzg(), 0L, j10);
        while (true) {
            long j11 = 0;
            if (j10 <= 0) {
                return;
            }
            zzbwn zzbwnVar = source.zza;
            Intrinsics.e(zzbwnVar);
            while (j11 < PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH) {
                j11 += (long) (zzbwnVar.zzd - zzbwnVar.zzc);
                if (j11 >= j10) {
                    j11 = j10;
                    break;
                } else {
                    zzbwnVar = zzbwnVar.zzg;
                    Intrinsics.e(zzbwnVar);
                }
            }
            zzbvz zzbvzVar = this.zza;
            try {
                this.zzb.zzn(source, j11);
                Unit unit = Unit.f64096a;
                zzbvw.zza(zzbvz.zza, zzbvzVar);
                j10 -= j11;
            } catch (IOException e10) {
                throw e10;
            } finally {
                zzbvw.zza(zzbvz.zza, zzbvzVar);
            }
        }
    }
}
