package com.google.android.gms.internal.auth;

import com.google.android.gms.auth.api.proxy.ProxyResponse;

final class zzbp extends zzbd {
    final zzbq zza;

    zzbp(zzbq zzbqVar) {
        this.zza = zzbqVar;
    }

    @Override
    public final void zzb(ProxyResponse proxyResponse) {
        this.zza.setResult(new zzbu(proxyResponse));
    }
}
