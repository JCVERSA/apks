package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import defpackage.rsi;

final class zzdu extends zzch {
    private final rsi zza;

    public zzdu(rsi rsiVar) {
        this.zza = rsiVar;
    }

    @Override
    public final int zzd() {
        return System.identityHashCode(this.zza);
    }

    @Override
    public final void zze(String str, String str2, Bundle bundle, long j) {
        this.zza.a(str, str2, bundle, j);
    }
}
