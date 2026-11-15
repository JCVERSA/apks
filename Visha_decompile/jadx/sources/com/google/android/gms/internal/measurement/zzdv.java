package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import defpackage.kti;

final class zzdv extends zzch {
    private final kti zza;

    public zzdv(kti ktiVar) {
        this.zza = ktiVar;
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
