package defpackage;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.ads.internal.zzc;
import com.google.android.gms.common.internal.a;
import com.google.android.gms.internal.ads.zzbla;

public final class t4f extends zzc {
    public t4f(Context context, Looper looper, a.InterfaceC0093a interfaceC0093a, a.b bVar) {
        super(dcf.a(context), looper, 166, interfaceC0093a, bVar, null);
    }

    public final zzbla I() {
        return (zzbla) super.getService();
    }

    @Override
    public final IInterface d(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.httpcache.IHttpAssetsCacheService");
        return iInterfaceQueryLocalInterface instanceof zzbla ? (zzbla) iInterfaceQueryLocalInterface : new zzbla(iBinder);
    }

    @Override
    public final String j() {
        return "com.google.android.gms.ads.internal.httpcache.IHttpAssetsCacheService";
    }

    @Override
    public final String k() {
        return "com.google.android.gms.ads.service.HTTP";
    }
}
