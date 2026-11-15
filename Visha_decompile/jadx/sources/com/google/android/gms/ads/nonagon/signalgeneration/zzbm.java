package com.google.android.gms.ads.nonagon.signalgeneration;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import defpackage.f9g;

public final class zzbm implements f9g {
    public final zzb b;
    public final int c;
    public final String d;

    @VisibleForTesting
    public zzbm(zzb zzbVar, int i, @Nullable String str) {
        this.b = zzbVar;
        this.c = i;
        this.d = str;
    }

    @Override
    public final void zze(@Nullable final zzbk zzbkVar) {
        if (zzbkVar == null || this.c != 2 || TextUtils.isEmpty(this.d)) {
            return;
        }
        com.google.android.gms.ads.internal.util.zzs.zzh(new Runnable() {
            @Override
            public final void run() {
                zzbm zzbmVar = this.zza;
                zzbmVar.b.zzd(zzbmVar.d, zzbkVar);
            }
        });
    }

    @Override
    public final void zzf(@Nullable String str) {
    }
}
