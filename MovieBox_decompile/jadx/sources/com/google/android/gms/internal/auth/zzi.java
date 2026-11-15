package com.google.android.gms.internal.auth;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.internal.ConnectionCallbacks;
import com.google.android.gms.common.api.internal.OnConnectionFailedListener;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.GmsClient;

final class zzi extends GmsClient {
    zzi(Context context, Looper looper, ClientSettings clientSettings, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 224, clientSettings, connectionCallbacks, onConnectionFailedListener);
    }

    @Override
    @Nullable
    protected final IInterface createServiceInterface(IBinder iBinder) {
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
        return new Feature[]{com.google.android.gms.auth.zze.zzj, com.google.android.gms.auth.zze.zzi, com.google.android.gms.auth.zze.zza};
    }

    @Override
    public final int getMinApkVersion() {
        return 17895000;
    }

    @Override
    @NonNull
    protected final String getServiceDescriptor() {
        return "com.google.android.gms.auth.account.data.IGoogleAuthService";
    }

    @Override
    @NonNull
    protected final String getStartServiceAction() {
        return "com.google.android.gms.auth.account.authapi.START";
    }

    @Override
    protected final boolean getUseDynamicLookup() {
        return true;
    }

    @Override
    public final boolean usesClientTelemetry() {
        return true;
    }
}
