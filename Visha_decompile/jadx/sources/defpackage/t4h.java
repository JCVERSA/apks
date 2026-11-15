package defpackage;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.internal.a;
import com.google.android.gms.measurement.internal.zzec;
import com.google.android.gms.measurement.internal.zzee;

public final class t4h extends a {
    public t4h(Context context, Looper looper, a.InterfaceC0093a interfaceC0093a, a.b bVar) {
        super(context, looper, 93, interfaceC0093a, bVar, null);
    }

    @Override
    public final IInterface d(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.measurement.internal.IMeasurementService");
        return iInterfaceQueryLocalInterface instanceof zzee ? (zzee) iInterfaceQueryLocalInterface : new zzec(iBinder);
    }

    @Override
    public final int getMinApkVersion() {
        return 12451000;
    }

    @Override
    public final String j() {
        return "com.google.android.gms.measurement.internal.IMeasurementService";
    }

    @Override
    public final String k() {
        return "com.google.android.gms.measurement.START";
    }
}
