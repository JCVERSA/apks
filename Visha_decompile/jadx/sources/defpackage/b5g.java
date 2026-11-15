package defpackage;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.internal.b;
import com.google.android.gms.internal.appset.zzg;

public final class b5g extends b {
    public b5g(Context context, Looper looper, ay0 ay0Var, bf1 bf1Var, qe7 qe7Var) {
        super(context, looper, 300, ay0Var, bf1Var, qe7Var);
    }

    @Override
    public final IInterface d(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.appset.internal.IAppSetService");
        return iInterfaceQueryLocalInterface instanceof zzg ? (zzg) iInterfaceQueryLocalInterface : new zzg(iBinder);
    }

    @Override
    public final Feature[] getApiFeatures() {
        return avg.b;
    }

    @Override
    public final int getMinApkVersion() {
        return 212800000;
    }

    @Override
    public final String j() {
        return "com.google.android.gms.appset.internal.IAppSetService";
    }

    @Override
    public final String k() {
        return "com.google.android.gms.appset.service.START";
    }

    @Override
    public final boolean m() {
        return true;
    }

    @Override
    public final boolean usesClientTelemetry() {
        return true;
    }
}
