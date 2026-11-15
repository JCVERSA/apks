package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.api.c;
import com.google.android.gms.common.internal.b;
import com.google.android.gms.internal.p000authapi.zbt;

public final class f4e extends b {
    public final n20.a I;

    public f4e(Context context, Looper looper, ay0 ay0Var, n20.a aVar, c.a aVar2, c.b bVar) {
        super(context, looper, 68, ay0Var, aVar2, bVar);
        n20.a.C0426a c0426a = new n20.a.C0426a(aVar == null ? n20.a.e : aVar);
        c0426a.a(h3e.a());
        this.I = new n20.a(c0426a);
    }

    @Override
    public final IInterface d(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.credentials.internal.ICredentialsService");
        return iInterfaceQueryLocalInterface instanceof zbt ? (zbt) iInterfaceQueryLocalInterface : new zbt(iBinder);
    }

    @Override
    public final Bundle g() {
        return this.I.a();
    }

    @Override
    public final int getMinApkVersion() {
        return 12800000;
    }

    @Override
    public final String j() {
        return "com.google.android.gms.auth.api.credentials.internal.ICredentialsService";
    }

    @Override
    public final String k() {
        return "com.google.android.gms.auth.api.credentials.service.START";
    }
}
