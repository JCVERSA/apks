package com.google.android.libraries.places.internal;

import com.cloud.tmc.integration.event.EventConstants;
import java.text.MessageFormat;
import java.util.logging.Level;

final class zzbfh extends zzaym {
    private final zzbfi zza;
    private final zzbqt zzb;

    zzbfh(zzbfi zzbfiVar, zzbqt zzbqtVar) {
        zzmt.zzc(zzbfiVar, "tracer");
        this.zza = zzbfiVar;
        zzmt.zzc(zzbqtVar, EventConstants.KEY_TIME);
        this.zzb = zzbqtVar;
    }

    private static Level zzc(int i10) {
        int i11 = i10 - 1;
        if (i11 != 1) {
            return (i11 == 2 || i11 == 3) ? Level.FINE : Level.FINEST;
        }
        return Level.FINER;
    }

    private final boolean zzd(int i10) {
        if (i10 == 1) {
            return false;
        }
        this.zza.zzd();
        return false;
    }

    @Override
    public final void zza(int i10, String str) {
        zzbap zzbapVarZza = this.zza.zza();
        Level levelZzc = zzc(i10);
        if (zzbfi.zza.isLoggable(levelZzc)) {
            zzbfi.zzb(zzbapVarZza, levelZzc, str);
        }
        zzd(i10);
    }

    @Override
    public final void zzb(int i10, String str, Object... objArr) {
        Level levelZzc = zzc(i10);
        zzd(i10);
        zza(i10, zzbfi.zza.isLoggable(levelZzc) ? MessageFormat.format(str, objArr) : null);
    }
}
