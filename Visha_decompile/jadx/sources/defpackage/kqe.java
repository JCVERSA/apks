package defpackage;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zzaz;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.client.zzco;
import com.google.android.gms.ads.internal.client.zzcw;
import com.google.android.gms.ads.internal.client.zzcy;
import com.google.android.gms.ads.internal.client.zzcz;
import com.google.android.gms.ads.internal.client.zzfi;
import com.google.android.gms.ads.internal.util.client.zzq;
import com.google.android.gms.ads.internal.util.client.zzr;
import com.google.android.gms.ads.internal.util.client.zzs;
import com.google.android.gms.dynamic.ObjectWrapper;

public final class kqe extends iwe {
    public final Context b;
    public final zzaz c;

    public kqe(zzaz zzazVar, Context context) {
        this.b = context;
        this.c = zzazVar;
    }

    @Override
    public final Object a() {
        zzaz.j(this.b, "mobile_ads_settings");
        return new zzfi();
    }

    @Override
    public final Object b(zzco zzcoVar) {
        return zzcoVar.zzh(ObjectWrapper.wrap(this.b), 251410000);
    }

    @Override
    public final Object c() {
        Context context = this.b;
        cye.a(context);
        if (!((Boolean) zzbd.zzc().b(cye.Na)).booleanValue()) {
            return this.c.c.zza(this.b);
        }
        try {
            IBinder iBinderZze = ((zzcz) zzs.zzb(context, "com.google.android.gms.ads.ChimeraMobileAdsSettingManagerCreatorImpl", new zzq() {
                @Override
                public final Object zza(Object obj) {
                    IBinder iBinder = (IBinder) obj;
                    if (iBinder == null) {
                        return null;
                    }
                    IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManagerCreator");
                    return iInterfaceQueryLocalInterface instanceof zzcz ? (zzcz) iInterfaceQueryLocalInterface : new zzcz(iBinder);
                }
            })).zze(ObjectWrapper.wrap(context), 251410000);
            if (iBinderZze == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinderZze.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
            return iInterfaceQueryLocalInterface instanceof zzcy ? (zzcy) iInterfaceQueryLocalInterface : new zzcw(iBinderZze);
        } catch (RemoteException | zzr | NullPointerException e) {
            zzaz zzazVar = this.c;
            zzazVar.g = uaf.c(this.b);
            zzazVar.g.b(e, "ClientApiBroker.getMobileAdsSettingsManager");
            return null;
        }
    }
}
