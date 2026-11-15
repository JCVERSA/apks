package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.c;
import com.google.android.gms.common.internal.b;
import com.google.android.gms.internal.location.zzal;
import com.google.android.gms.internal.location.zzam;

public abstract class l1j extends b {
    public final String I;
    public final d1f J;

    public l1j(Context context, Looper looper, c.a aVar, c.b bVar, String str, ay0 ay0Var) {
        super(context, looper, 23, ay0Var, aVar, bVar);
        this.J = new gui(this);
        this.I = str;
    }

    @Override
    public final IInterface d(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
        return iInterfaceQueryLocalInterface instanceof zzam ? (zzam) iInterfaceQueryLocalInterface : new zzal(iBinder);
    }

    @Override
    public final Bundle g() {
        Bundle bundle = new Bundle();
        bundle.putString("client_name", this.I);
        return bundle;
    }

    @Override
    public final Feature[] getApiFeatures() {
        return amj.f;
    }

    @Override
    public final int getMinApkVersion() {
        return 11717000;
    }

    @Override
    public final String j() {
        return "com.google.android.gms.location.internal.IGoogleLocationManagerService";
    }

    @Override
    public final String k() {
        return "com.google.android.location.internal.GoogleLocationManagerService.START";
    }
}
