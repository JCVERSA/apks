package defpackage;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.ads.internal.zzc;
import com.google.android.gms.common.internal.a;
import com.google.android.gms.internal.ads.zzbuk;
import com.google.android.gms.internal.ads.zzbum;

public final class gbf extends zzc {
    public gbf(Context context, Looper looper, a.InterfaceC0093a interfaceC0093a, a.b bVar) {
        super(dcf.a(context), looper, 8, interfaceC0093a, bVar, null);
    }

    public final zzbum I() {
        return (zzbum) super.getService();
    }

    @Override
    public final IInterface d(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.request.IAdRequestService");
        return iInterfaceQueryLocalInterface instanceof zzbum ? (zzbum) iInterfaceQueryLocalInterface : new zzbuk(iBinder);
    }

    @Override
    public final int getMinApkVersion() {
        return 242115000;
    }

    @Override
    public final String j() {
        return "com.google.android.gms.ads.internal.request.IAdRequestService";
    }

    @Override
    public final String k() {
        return "com.google.android.gms.ads.service.START";
    }
}
