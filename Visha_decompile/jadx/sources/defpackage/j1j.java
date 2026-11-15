package defpackage;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.util.Log;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.internal.b;
import com.google.android.gms.internal.auth.zzp;

public final class j1j extends b {
    public j1j(Context context, Looper looper, ay0 ay0Var, bf1 bf1Var, qe7 qe7Var) {
        super(context, looper, 224, ay0Var, bf1Var, qe7Var);
    }

    @Override
    public final IInterface d(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.account.data.IGoogleAuthService");
        return iInterfaceQueryLocalInterface instanceof zzp ? (zzp) iInterfaceQueryLocalInterface : new zzp(iBinder);
    }

    @Override
    public final void disconnect(String str) {
        Log.w("GoogleAuthSvcClientImpl", "GoogleAuthServiceClientImpl disconnected with reason: ".concat(String.valueOf(str)));
        super.disconnect(str);
    }

    @Override
    public final Feature[] getApiFeatures() {
        return new Feature[]{bvg.j, bvg.i, bvg.a};
    }

    @Override
    public final int getMinApkVersion() {
        return 17895000;
    }

    @Override
    public final String j() {
        return "com.google.android.gms.auth.account.data.IGoogleAuthService";
    }

    @Override
    public final String k() {
        return "com.google.android.gms.auth.account.authapi.START";
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
