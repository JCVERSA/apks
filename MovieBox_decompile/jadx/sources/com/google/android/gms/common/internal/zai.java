package com.google.android.gms.common.internal;

import androidx.annotation.NonNull;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.internal.OnConnectionFailedListener;

final class zai implements BaseGmsClient.BaseOnConnectionFailedListener {
    final OnConnectionFailedListener zaa;

    zai(OnConnectionFailedListener onConnectionFailedListener) {
        this.zaa = onConnectionFailedListener;
    }

    @Override
    public final void onConnectionFailed(@NonNull ConnectionResult connectionResult) {
        this.zaa.onConnectionFailed(connectionResult);
    }
}
