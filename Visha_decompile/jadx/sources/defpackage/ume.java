package defpackage;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zzaz;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.client.zzbr;
import com.google.android.gms.ads.internal.client.zzbt;
import com.google.android.gms.ads.internal.client.zzbu;
import com.google.android.gms.ads.internal.client.zzco;
import com.google.android.gms.ads.internal.client.zzfe;
import com.google.android.gms.ads.internal.util.client.zzq;
import com.google.android.gms.ads.internal.util.client.zzr;
import com.google.android.gms.ads.internal.util.client.zzs;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzboy;

public final class ume extends iwe {
    public final Context b;
    public final String c;
    public final zzboy d;
    public final zzaz e;

    public ume(zzaz zzazVar, Context context, String str, zzboy zzboyVar) {
        this.b = context;
        this.c = str;
        this.d = zzboyVar;
        this.e = zzazVar;
    }

    @Override
    public final Object a() {
        zzaz.j(this.b, "native_ad");
        return new zzfe();
    }

    @Override
    public final Object b(zzco zzcoVar) {
        return zzcoVar.zzb(ObjectWrapper.wrap(this.b), this.c, this.d, 251410000);
    }

    @Override
    public final Object c() {
        Context context = this.b;
        cye.a(context);
        if (!((Boolean) zzbd.zzc().b(cye.Na)).booleanValue()) {
            return this.e.b.zza(this.b, this.c, this.d);
        }
        try {
            IBinder iBinderZze = ((zzbu) zzs.zzb(context, "com.google.android.gms.ads.ChimeraAdLoaderBuilderCreatorImpl", new zzq() {
                @Override
                public final Object zza(Object obj) {
                    IBinder iBinder = (IBinder) obj;
                    if (iBinder == null) {
                        return null;
                    }
                    IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilderCreator");
                    return iInterfaceQueryLocalInterface instanceof zzbu ? (zzbu) iInterfaceQueryLocalInterface : new zzbu(iBinder);
                }
            })).zze(ObjectWrapper.wrap(context), this.c, this.d, 251410000);
            if (iBinderZze == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinderZze.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
            return iInterfaceQueryLocalInterface instanceof zzbt ? (zzbt) iInterfaceQueryLocalInterface : new zzbr(iBinderZze);
        } catch (RemoteException | zzr | NullPointerException e) {
            zzaz zzazVar = this.e;
            zzazVar.g = uaf.c(this.b);
            zzazVar.g.b(e, "ClientApiBroker.createAdLoaderBuilder");
            return null;
        }
    }
}
