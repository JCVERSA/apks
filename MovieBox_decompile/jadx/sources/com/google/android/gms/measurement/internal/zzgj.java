package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.BaseGmsClient;

public final class zzgj extends BaseGmsClient<zzgb> {
    public zzgj(Context context, Looper looper, BaseGmsClient.BaseConnectionCallbacks baseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener baseOnConnectionFailedListener) {
        super(context, looper, 93, baseConnectionCallbacks, baseOnConnectionFailedListener, null);
    }

    @Override
    public final IInterface createServiceInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.measurement.internal.IMeasurementService");
        return iInterfaceQueryLocalInterface instanceof zzgb ? (zzgb) iInterfaceQueryLocalInterface : new zzgd(iBinder);
    }

    @Override
    public final int getMinApkVersion() {
        return 12451000;
    }

    @Override
    @NonNull
    protected final String getServiceDescriptor() {
        return "com.google.android.gms.measurement.internal.IMeasurementService";
    }

    @Override
    @NonNull
    protected final String getStartServiceAction() {
        return "com.google.android.gms.measurement.START";
    }
}
