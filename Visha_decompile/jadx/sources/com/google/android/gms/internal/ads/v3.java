package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.internal.client.zzbb;
import com.google.android.gms.ads.internal.client.zzeh;
import com.google.android.gms.ads.internal.client.zzm;
import com.google.android.gms.ads.internal.client.zzn;
import com.google.android.gms.ads.internal.client.zzq;
import com.google.android.gms.ads.query.QueryInfoGenerationCallback;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;

public final class v3 {
    public static zzbyi e;
    public final Context a;
    public final AdFormat b;
    public final zzeh c;
    public final String d;

    public v3(Context context, AdFormat adFormat, zzeh zzehVar, String str) {
        this.a = context;
        this.b = adFormat;
        this.c = zzehVar;
        this.d = str;
    }

    public static zzbyi a(Context context) {
        zzbyi zzbyiVar;
        synchronized (v3.class) {
            try {
                if (e == null) {
                    e = zzbb.zza().zzt(context, new zzbou());
                }
                zzbyiVar = e;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzbyiVar;
    }

    public final void b(QueryInfoGenerationCallback queryInfoGenerationCallback) {
        zzm zzmVarZza;
        long jCurrentTimeMillis = System.currentTimeMillis();
        Context context = this.a;
        zzbyi zzbyiVarA = a(context);
        if (zzbyiVarA == null) {
            queryInfoGenerationCallback.onFailure("Internal Error, query info generator is null.");
            return;
        }
        IObjectWrapper iObjectWrapperWrap = ObjectWrapper.wrap(context);
        zzeh zzehVar = this.c;
        if (zzehVar == null) {
            zzn zznVar = new zzn();
            zznVar.zzg(jCurrentTimeMillis);
            zzmVarZza = zznVar.zza();
        } else {
            zzehVar.zzo(jCurrentTimeMillis);
            zzmVarZza = zzq.zza.zza(context, zzehVar);
        }
        try {
            zzbyiVarA.zzf(iObjectWrapperWrap, new zzbym(this.d, this.b.name(), null, zzmVarZza, 0, null), new zzbto(this, queryInfoGenerationCallback));
        } catch (RemoteException unused) {
            queryInfoGenerationCallback.onFailure("Internal Error.");
        }
    }
}
