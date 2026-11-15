package defpackage;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zzaz;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.client.zzco;
import com.google.android.gms.ads.internal.client.zzdu;
import com.google.android.gms.ads.internal.util.client.zzq;
import com.google.android.gms.ads.internal.util.client.zzr;
import com.google.android.gms.ads.internal.util.client.zzs;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzboy;

public final class iae extends iwe {
    public final Context b;
    public final zzboy c;

    public iae(zzaz zzazVar, Context context, zzboy zzboyVar) {
        this.b = context;
        this.c = zzboyVar;
    }

    @Override
    public final Object a() {
        zzaz.j(this.b, "out_of_context_tester");
        return null;
    }

    @Override
    public final Object b(zzco zzcoVar) {
        Context context = this.b;
        IObjectWrapper iObjectWrapperWrap = ObjectWrapper.wrap(context);
        cye.a(context);
        if (((Boolean) zzbd.zzc().b(cye.y9)).booleanValue()) {
            return zzcoVar.zzi(iObjectWrapperWrap, this.c, 251410000);
        }
        return null;
    }

    @Override
    public final Object c() {
        Context context = this.b;
        IObjectWrapper iObjectWrapperWrap = ObjectWrapper.wrap(context);
        cye.a(context);
        if (!((Boolean) zzbd.zzc().b(cye.y9)).booleanValue()) {
            return null;
        }
        try {
            return ((zzdu) zzs.zzb(context, "com.google.android.gms.ads.DynamiteOutOfContextTesterCreatorImpl", new zzq() {
                @Override
                public final Object zza(Object obj) {
                    IBinder iBinder = (IBinder) obj;
                    if (iBinder == null) {
                        return null;
                    }
                    IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IOutOfContextTesterCreator");
                    return iInterfaceQueryLocalInterface instanceof zzdu ? (zzdu) iInterfaceQueryLocalInterface : new zzdu(iBinder);
                }
            })).zze(iObjectWrapperWrap, this.c, 251410000);
        } catch (RemoteException | zzr | NullPointerException e) {
            uaf.c(this.b).b(e, "ClientApiBroker.getOutOfContextTester");
            return null;
        }
    }
}
