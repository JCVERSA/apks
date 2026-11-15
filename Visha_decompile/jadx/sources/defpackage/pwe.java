package defpackage;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.zzc;
import com.google.android.gms.ads.zzh;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.internal.a;
import com.google.android.gms.internal.ads.zzbau;

public final class pwe extends zzc {
    public pwe(Context context, Looper looper, a.InterfaceC0093a interfaceC0093a, a.b bVar) {
        super(dcf.a(context), looper, 123, interfaceC0093a, bVar, null);
    }

    public final boolean I() {
        return ((Boolean) zzbd.zzc().b(cye.c2)).booleanValue() && th.c(getAvailableFeatures(), zzh.zza);
    }

    public final zzbau J() {
        return (zzbau) super.getService();
    }

    @Override
    public final IInterface d(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.cache.ICacheService");
        return iInterfaceQueryLocalInterface instanceof zzbau ? (zzbau) iInterfaceQueryLocalInterface : new zzbau(iBinder);
    }

    @Override
    public final Feature[] getApiFeatures() {
        return zzh.zzb;
    }

    @Override
    public final String j() {
        return "com.google.android.gms.ads.internal.cache.ICacheService";
    }

    @Override
    public final String k() {
        return "com.google.android.gms.ads.service.CACHE";
    }
}
