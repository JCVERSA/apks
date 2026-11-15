package defpackage;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.internal.b;
import com.google.android.gms.internal.p001authapiphone.zzh;

public final class doj extends b {
    public doj(Context context, Looper looper, ay0 ay0Var, bf1 bf1Var, qe7 qe7Var) {
        super(context, looper, 126, ay0Var, bf1Var, qe7Var);
    }

    @Override
    public final IInterface d(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.phone.internal.ISmsRetrieverApiService");
        return iInterfaceQueryLocalInterface instanceof zzh ? (zzh) iInterfaceQueryLocalInterface : new zzh(iBinder);
    }

    @Override
    public final Feature[] getApiFeatures() {
        return s7e.e;
    }

    @Override
    public final int getMinApkVersion() {
        return 12451000;
    }

    @Override
    public final String j() {
        return "com.google.android.gms.auth.api.phone.internal.ISmsRetrieverApiService";
    }

    @Override
    public final String k() {
        return "com.google.android.gms.auth.api.phone.service.SmsRetrieverApiService.START";
    }

    @Override
    public final boolean usesClientTelemetry() {
        return true;
    }
}
