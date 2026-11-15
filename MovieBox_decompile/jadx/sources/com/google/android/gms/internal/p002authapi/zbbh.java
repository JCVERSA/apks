package com.google.android.gms.internal.p002authapi;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.auth.api.identity.zbu;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.internal.ConnectionCallbacks;
import com.google.android.gms.common.api.internal.OnConnectionFailedListener;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.GmsClient;
import com.vungle.ads.internal.protos.Sdk$SDKError;

public final class zbbh extends GmsClient {
    private final Bundle zba;

    public zbbh(Context context, Looper looper, zbu zbuVar, ClientSettings clientSettings, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, Sdk$SDKError.Reason.PLACEMENT_SLEEP_VALUE, clientSettings, connectionCallbacks, onConnectionFailedListener);
        this.zba = new Bundle();
    }

    @Override
    @Nullable
    protected final IInterface createServiceInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.identity.internal.ISignInService");
        return iInterfaceQueryLocalInterface instanceof zbam ? (zbam) iInterfaceQueryLocalInterface : new zbam(iBinder);
    }

    @Override
    public final Feature[] getApiFeatures() {
        return zbbi.zbi;
    }

    @Override
    protected final Bundle getGetServiceRequestExtraArgs() {
        return this.zba;
    }

    @Override
    public final int getMinApkVersion() {
        return 17895000;
    }

    @Override
    @NonNull
    protected final String getServiceDescriptor() {
        return "com.google.android.gms.auth.api.identity.internal.ISignInService";
    }

    @Override
    @NonNull
    protected final String getStartServiceAction() {
        return "com.google.android.gms.auth.api.identity.service.signin.START";
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
