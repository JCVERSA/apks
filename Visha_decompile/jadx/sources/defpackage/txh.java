package defpackage;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.ads.internal.zzc;
import com.google.android.gms.common.internal.a;
import com.google.android.gms.internal.ads.zzfob;

public final class txh extends zzc {
    public final int F;

    public txh(Context context, Looper looper, a.InterfaceC0093a interfaceC0093a, a.b bVar, int i) {
        super(context, looper, 116, interfaceC0093a, bVar, null);
        this.F = i;
    }

    public final zzfob I() {
        return (zzfob) super.getService();
    }

    @Override
    public final IInterface d(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.gass.internal.IGassService");
        return iInterfaceQueryLocalInterface instanceof zzfob ? (zzfob) iInterfaceQueryLocalInterface : new zzfob(iBinder);
    }

    @Override
    public final int getMinApkVersion() {
        return this.F;
    }

    @Override
    public final String j() {
        return "com.google.android.gms.gass.internal.IGassService";
    }

    @Override
    public final String k() {
        return "com.google.android.gms.gass.START";
    }
}
