package defpackage;

import android.os.IBinder;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.ads.internal.client.zzaz;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.client.zzco;
import com.google.android.gms.ads.internal.client.zzfk;
import com.google.android.gms.ads.internal.util.client.zzq;
import com.google.android.gms.ads.internal.util.client.zzr;
import com.google.android.gms.ads.internal.util.client.zzs;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbgc;
import com.google.android.gms.internal.ads.zzbgf;
import com.google.android.gms.internal.ads.zzbgg;
import java.util.HashMap;

public final class eue extends iwe {
    public final View b;
    public final HashMap c;
    public final HashMap d;
    public final zzaz e;

    public eue(zzaz zzazVar, View view, HashMap map, HashMap map2) {
        this.b = view;
        this.c = map;
        this.d = map2;
        this.e = zzazVar;
    }

    @Override
    public final Object a() {
        zzaz.j(this.b.getContext(), "native_ad_view_holder_delegate");
        return new zzfk();
    }

    @Override
    public final Object b(zzco zzcoVar) {
        HashMap map = this.d;
        return zzcoVar.zzk(ObjectWrapper.wrap(this.b), ObjectWrapper.wrap(this.c), ObjectWrapper.wrap(map));
    }

    @Override
    public final Object c() {
        View view = this.b;
        cye.a(view.getContext());
        if (!((Boolean) zzbd.zzc().b(cye.Na)).booleanValue()) {
            zzaz zzazVar = this.e;
            return zzazVar.f.c(this.b, this.c, this.d);
        }
        try {
            return zzbgc.zze(((zzbgg) zzs.zzb(view.getContext(), "com.google.android.gms.ads.ChimeraNativeAdViewHolderDelegateCreatorImpl", new zzq() {
                @Override
                public final Object zza(Object obj) {
                    return zzbgf.zzb((IBinder) obj);
                }
            })).zze(ObjectWrapper.wrap(view), ObjectWrapper.wrap(this.c), ObjectWrapper.wrap(this.d)));
        } catch (RemoteException | zzr | NullPointerException e) {
            zzaz zzazVar2 = this.e;
            zzazVar2.g = uaf.c(this.b.getContext());
            zzazVar2.g.b(e, "ClientApiBroker.createNativeAdViewHolderDelegate");
            return null;
        }
    }
}
