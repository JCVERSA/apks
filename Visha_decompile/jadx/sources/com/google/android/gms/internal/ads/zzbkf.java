package com.google.android.gms.internal.ads;

import androidx.annotation.RequiresApi;
import com.google.android.gms.ads.h5.OnH5AdsEventListener;

@RequiresApi(api = 21)
public final class zzbkf extends zzbkh {
    private final OnH5AdsEventListener zza;

    public zzbkf(OnH5AdsEventListener onH5AdsEventListener) {
        this.zza = onH5AdsEventListener;
    }

    @Override
    public final void zzb(String str) {
        this.zza.onH5AdsEvent(str);
    }
}
