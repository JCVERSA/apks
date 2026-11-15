package defpackage;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import android.widget.FrameLayout;
import com.google.android.gms.ads.internal.client.zzaz;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.client.zzco;
import com.google.android.gms.ads.internal.client.zzfj;
import com.google.android.gms.ads.internal.util.client.zzq;
import com.google.android.gms.ads.internal.util.client.zzr;
import com.google.android.gms.ads.internal.util.client.zzs;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbfw;
import com.google.android.gms.internal.ads.zzbfz;
import com.google.android.gms.internal.ads.zzbga;

public final class gse extends iwe {
    public final FrameLayout b;
    public final FrameLayout c;
    public final Context d;
    public final zzaz e;

    public gse(zzaz zzazVar, FrameLayout frameLayout, FrameLayout frameLayout2, Context context) {
        this.b = frameLayout;
        this.c = frameLayout2;
        this.d = context;
        this.e = zzazVar;
    }

    @Override
    public final Object a() {
        zzaz.j(this.d, "native_ad_view_delegate");
        return new zzfj();
    }

    @Override
    public final Object b(zzco zzcoVar) {
        return zzcoVar.zzj(ObjectWrapper.wrap(this.b), ObjectWrapper.wrap(this.c));
    }

    @Override
    public final Object c() {
        Context context = this.d;
        cye.a(context);
        if (!((Boolean) zzbd.zzc().b(cye.Na)).booleanValue()) {
            zzaz zzazVar = this.e;
            return zzazVar.d.c(this.d, this.b, this.c);
        }
        try {
            return zzbfw.zzdy(((zzbga) zzs.zzb(context, "com.google.android.gms.ads.ChimeraNativeAdViewDelegateCreatorImpl", new zzq() {
                @Override
                public final Object zza(Object obj) {
                    return zzbfz.zzb((IBinder) obj);
                }
            })).zze(ObjectWrapper.wrap(context), ObjectWrapper.wrap(this.b), ObjectWrapper.wrap(this.c), 251410000));
        } catch (RemoteException | zzr | NullPointerException e) {
            zzaz zzazVar2 = this.e;
            zzazVar2.g = uaf.c(this.d);
            zzazVar2.g.b(e, "ClientApiBroker.createNativeAdViewDelegate");
            return null;
        }
    }
}
