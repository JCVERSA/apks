package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.util.Log;
import java.util.concurrent.atomic.AtomicReference;

public final class zzdk extends zzdn {
    private final AtomicReference<Bundle> zza = new AtomicReference<>();
    private boolean zzb;

    public final Bundle zza(long j10) {
        Bundle bundle;
        synchronized (this.zza) {
            if (!this.zzb) {
                try {
                    this.zza.wait(j10);
                } catch (InterruptedException unused) {
                    return null;
                }
            }
            bundle = this.zza.get();
        }
        return bundle;
    }

    public final Long zzb(long j10) {
        return (Long) zza(zza(j10), Long.class);
    }

    public final String zzc(long j10) {
        return (String) zza(zza(j10), String.class);
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x0003, code lost:
    
        r4 = r4.get(com.mbridge.msdk.foundation.entity.CampaignEx.JSON_KEY_AD_R);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static <T> T zza(Bundle bundle, Class<T> cls) {
        Object obj;
        if (bundle == null || obj == null) {
            return null;
        }
        try {
            return cls.cast(obj);
        } catch (ClassCastException e10) {
            Log.w("AM", String.format("Unexpected object type. Expected, Received: %s, %s", cls.getCanonicalName(), obj.getClass().getCanonicalName()), e10);
            throw e10;
        }
    }

    @Override
    public final void zza(Bundle bundle) {
        synchronized (this.zza) {
            try {
                try {
                    this.zza.set(bundle);
                    this.zzb = true;
                    this.zza.notify();
                } catch (Throwable th2) {
                    this.zza.notify();
                    throw th2;
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }
}
