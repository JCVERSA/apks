package com.google.android.gms.internal.auth;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.GmsClient;

public final class zzap extends GmsClient {
    private final Bundle zze;

    public zzap(Context context, Looper looper, ClientSettings clientSettings, com.google.android.gms.auth.api.accounttransfer.zzr zzrVar, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 128, clientSettings, connectionCallbacks, onConnectionFailedListener);
        this.zze = zzrVar == null ? new Bundle() : zzrVar.zza();
    }

    @Override
    protected final IInterface createServiceInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.accounttransfer.internal.IAccountTransferService");
        return iInterfaceQueryLocalInterface instanceof zzau ? (zzau) iInterfaceQueryLocalInterface : new zzau(iBinder);
    }

    @Override
    protected final Bundle getGetServiceRequestExtraArgs() {
        return this.zze;
    }

    @Override
    public final int getMinApkVersion() {
        return 12451000;
    }

    @Override
    protected final String getServiceDescriptor() {
        return "com.google.android.gms.auth.api.accounttransfer.internal.IAccountTransferService";
    }

    @Override
    protected final String getStartServiceAction() {
        return "com.google.android.gms.auth.api.accounttransfer.service.START";
    }

    @Override
    public final boolean usesClientTelemetry() {
        return true;
    }
}
