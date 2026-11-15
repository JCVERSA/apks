package com.google.android.gms.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.client.zzbb;
import com.google.android.gms.ads.internal.client.zzch;
import com.google.android.gms.internal.ads.zzbou;

public final class zzb {
    public static volatile zzch a;

    public static zzch zza(Context context) {
        if (a == null) {
            synchronized (zzb.class) {
                try {
                    if (a == null) {
                        a = zzbb.zza().zzg(context, new zzbou());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return a;
    }
}
