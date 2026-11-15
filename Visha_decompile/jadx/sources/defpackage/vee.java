package defpackage;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zzaz;
import com.google.android.gms.ads.internal.client.zzco;
import com.google.android.gms.ads.internal.util.client.zzq;
import com.google.android.gms.ads.internal.util.client.zzr;
import com.google.android.gms.ads.internal.util.client.zzs;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzboy;
import com.google.android.gms.internal.ads.zzbst;
import com.google.android.gms.internal.ads.zzbsu;

public final class vee extends iwe {
    public final Context b;
    public final zzboy c;

    public vee(zzaz zzazVar, Context context, zzboy zzboyVar) {
        this.b = context;
        this.c = zzboyVar;
    }

    @Override
    public final Object a() {
        return null;
    }

    @Override
    public final Object b(zzco zzcoVar) {
        return zzcoVar.zzm(ObjectWrapper.wrap(this.b), this.c, 251410000);
    }

    @Override
    public final Object c() {
        Context context = this.b;
        try {
            return ((zzbsu) zzs.zzb(context, "com.google.android.gms.ads.DynamiteOfflineUtilsCreatorImpl", new zzq() {
                @Override
                public final Object zza(Object obj) {
                    return zzbst.zzb((IBinder) obj);
                }
            })).zze(ObjectWrapper.wrap(context), this.c, 251410000);
        } catch (RemoteException | zzr | NullPointerException unused) {
            return null;
        }
    }
}
