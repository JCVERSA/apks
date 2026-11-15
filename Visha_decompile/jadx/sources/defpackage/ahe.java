package defpackage;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.ads.h5.OnH5AdsEventListener;
import com.google.android.gms.ads.internal.client.zzaz;
import com.google.android.gms.ads.internal.client.zzco;
import com.google.android.gms.ads.internal.util.client.zzq;
import com.google.android.gms.ads.internal.util.client.zzr;
import com.google.android.gms.ads.internal.util.client.zzs;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbkf;
import com.google.android.gms.internal.ads.zzbkn;
import com.google.android.gms.internal.ads.zzbko;
import com.google.android.gms.internal.ads.zzbks;
import com.google.android.gms.internal.ads.zzboy;

public final class ahe extends iwe {
    public final Context b;
    public final zzboy c;
    public final OnH5AdsEventListener d;

    public ahe(zzaz zzazVar, Context context, zzboy zzboyVar, OnH5AdsEventListener onH5AdsEventListener) {
        this.b = context;
        this.c = zzboyVar;
        this.d = onH5AdsEventListener;
    }

    @Override
    public final Object a() {
        return new zzbks();
    }

    @Override
    public final Object b(zzco zzcoVar) {
        return zzcoVar.zzl(ObjectWrapper.wrap(this.b), this.c, 251410000, new zzbkf(this.d));
    }

    @Override
    public final Object c() {
        Context context = this.b;
        try {
            return ((zzbko) zzs.zzb(context, "com.google.android.gms.ads.DynamiteH5AdsManagerCreatorImpl", new zzq() {
                @Override
                public final Object zza(Object obj) {
                    return zzbkn.zzb((IBinder) obj);
                }
            })).zze(ObjectWrapper.wrap(context), this.c, 251410000, new zzbkf(this.d));
        } catch (RemoteException | zzr | NullPointerException unused) {
            return null;
        }
    }
}
