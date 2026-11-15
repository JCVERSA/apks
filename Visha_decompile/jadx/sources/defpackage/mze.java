package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.text.TextUtils;
import com.google.android.gms.common.internal.b;
import com.google.android.gms.internal.auth.zzbh;

public final class mze extends b {
    public final Bundle I;

    public mze(Context context, Looper looper, ay0 ay0Var, p20 p20Var, bf1 bf1Var, qe7 qe7Var) {
        super(context, looper, 16, ay0Var, bf1Var, qe7Var);
        this.I = new Bundle();
    }

    @Override
    public final IInterface d(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.internal.IAuthService");
        return iInterfaceQueryLocalInterface instanceof zzbh ? (zzbh) iInterfaceQueryLocalInterface : new zzbh(iBinder);
    }

    @Override
    public final Bundle g() {
        return this.I;
    }

    @Override
    public final int getMinApkVersion() {
        return 12451000;
    }

    @Override
    public final String j() {
        return "com.google.android.gms.auth.api.internal.IAuthService";
    }

    @Override
    public final String k() {
        return "com.google.android.gms.auth.service.START";
    }

    @Override
    public final boolean requiresSignIn() {
        ay0 ay0VarI = I();
        return (TextUtils.isEmpty(ay0VarI.b()) || ay0VarI.e(o20.a).isEmpty()) ? false : true;
    }

    @Override
    public final boolean usesClientTelemetry() {
        return true;
    }
}
