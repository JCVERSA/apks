package defpackage;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zzaz;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.client.zzcf;
import com.google.android.gms.ads.internal.client.zzch;
import com.google.android.gms.ads.internal.client.zzci;
import com.google.android.gms.ads.internal.client.zzco;
import com.google.android.gms.ads.internal.util.client.zzq;
import com.google.android.gms.ads.internal.util.client.zzr;
import com.google.android.gms.ads.internal.util.client.zzs;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzboy;

public final class roe extends iwe {
    public final Context b;
    public final zzboy c;
    public final zzaz d;

    public roe(zzaz zzazVar, Context context, zzboy zzboyVar) {
        this.b = context;
        this.c = zzboyVar;
        this.d = zzazVar;
    }

    @Override
    public final Object a() {
        zzaz.j(this.b, "ads_preloader");
        return null;
    }

    @Override
    public final Object b(zzco zzcoVar) throws RemoteException {
        IObjectWrapper iObjectWrapperWrap = ObjectWrapper.wrap(this.b);
        zzboy zzboyVar = this.c;
        zzch zzchVarZzg = zzcoVar.zzg(iObjectWrapperWrap, zzboyVar, 251410000);
        zzchVarZzg.zzh(zzboyVar);
        return zzchVarZzg;
    }

    @Override
    public final Object c() {
        zzch zzcfVar;
        Context context = this.b;
        IObjectWrapper iObjectWrapperWrap = ObjectWrapper.wrap(context);
        cye.a(context);
        if (!((Boolean) zzbd.zzc().b(cye.Na)).booleanValue()) {
            return this.d.h.zza(this.b, this.c);
        }
        try {
            zzci zzciVar = (zzci) zzs.zzb(context, "com.google.android.gms.ads.ChimeraAdPreloaderCreatorImpl", new zzq() {
                @Override
                public final Object zza(Object obj) {
                    IBinder iBinder = (IBinder) obj;
                    if (iBinder == null) {
                        return null;
                    }
                    IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdPreloaderCreator");
                    return iInterfaceQueryLocalInterface instanceof zzci ? (zzci) iInterfaceQueryLocalInterface : new zzci(iBinder);
                }
            });
            zzboy zzboyVar = this.c;
            IBinder iBinderZze = zzciVar.zze(iObjectWrapperWrap, zzboyVar, 251410000);
            if (iBinderZze == null) {
                zzcfVar = null;
            } else {
                IInterface iInterfaceQueryLocalInterface = iBinderZze.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdPreloader");
                zzcfVar = iInterfaceQueryLocalInterface instanceof zzch ? (zzch) iInterfaceQueryLocalInterface : new zzcf(iBinderZze);
            }
            zzcfVar.zzh(zzboyVar);
            return zzcfVar;
        } catch (RemoteException | zzr | NullPointerException e) {
            zzaz zzazVar = this.d;
            zzazVar.g = uaf.c(this.b);
            zzazVar.g.b(e, "ClientApiBroker.getAdPreloader");
            return null;
        }
    }
}
