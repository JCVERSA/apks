package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.internal.b;
import com.google.android.gms.common.internal.service.zai;

public final class i2e extends b {
    public final rea I;

    public i2e(Context context, Looper looper, ay0 ay0Var, rea reaVar, bf1 bf1Var, qe7 qe7Var) {
        super(context, looper, 270, ay0Var, bf1Var, qe7Var);
        this.I = reaVar;
    }

    @Override
    public final IInterface d(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.service.IClientTelemetryService");
        return iInterfaceQueryLocalInterface instanceof zai ? (zai) iInterfaceQueryLocalInterface : new zai(iBinder);
    }

    @Override
    public final Bundle g() {
        return this.I.b();
    }

    @Override
    public final Feature[] getApiFeatures() {
        return n1e.b;
    }

    @Override
    public final int getMinApkVersion() {
        return 203400000;
    }

    @Override
    public final String j() {
        return "com.google.android.gms.common.internal.service.IClientTelemetryService";
    }

    @Override
    public final String k() {
        return "com.google.android.gms.common.telemetry.service.START";
    }

    @Override
    public final boolean m() {
        return true;
    }
}
