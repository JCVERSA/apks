package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.ads.internal.client.zzew;
import com.google.android.gms.ads.query.QueryInfo;
import com.google.android.gms.ads.query.QueryInfoGenerationCallback;

final class zzbto extends zzbye {
    final QueryInfoGenerationCallback zza;

    public zzbto(v3 v3Var, QueryInfoGenerationCallback queryInfoGenerationCallback) {
        this.zza = queryInfoGenerationCallback;
    }

    @Override
    public final void zzb(String str) {
        this.zza.onFailure(str);
    }

    @Override
    public final void zzc(String str, String str2, Bundle bundle) {
        this.zza.onSuccess(new QueryInfo(new zzew(str, bundle, str2)));
    }
}
