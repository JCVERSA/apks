package com.google.android.gms.internal.auth;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.GmsClient;

public final class zzam extends GmsClient {
    public zzam(Context context, Looper looper, ClientSettings clientSettings, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 120, clientSettings, connectionCallbacks, onConnectionFailedListener);
    }

    @Override
    protected final IInterface createServiceInterface(IBinder iBinder) {
        return com.google.android.gms.auth.account.zzd.zzb(iBinder);
    }

    @Override
    public final Feature[] getApiFeatures() {
        return new Feature[]{com.google.android.gms.auth.zze.zzl};
    }

    @Override
    public final int getMinApkVersion() {
        return 12451000;
    }

    @Override
    protected final String getServiceDescriptor() {
        return "com.google.android.gms.auth.account.IWorkAccountService";
    }

    @Override
    protected final String getStartServiceAction() {
        return "com.google.android.gms.auth.account.workaccount.START";
    }

    @Override
    public final boolean usesClientTelemetry() {
        return true;
    }
}
