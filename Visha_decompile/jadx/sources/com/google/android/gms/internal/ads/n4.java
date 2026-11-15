package com.google.android.gms.internal.ads;

import defpackage.fyi;
import defpackage.pyi;
import defpackage.qyi;
import defpackage.zyf;

public final class n4 implements fyi {
    public final qyi a;

    public n4(qyi qyiVar) {
        this.a = qyiVar;
    }

    @Override
    public final Object zzb() {
        zzbbn$zza$zza zzbbn_zza_zza = ((zyf) this.a).a().o.a == 3 ? zzbbn$zza$zza.REWARDED_INTERSTITIAL : zzbbn$zza$zza.REWARD_BASED_VIDEO_AD;
        pyi.b(zzbbn_zza_zza);
        return zzbbn_zza_zza;
    }
}
