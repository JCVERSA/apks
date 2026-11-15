package com.google.android.gms.auth.api;

import android.content.Context;
import android.os.Looper;
import androidx.annotation.Nullable;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.internal.zbe;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.ClientSettings;
import java.util.Collections;
import java.util.List;

final class zbb extends Api.AbstractClientBuilder {
    zbb() {
    }

    @Override
    public final Api.Client buildClient(Context context, Looper looper, ClientSettings clientSettings, @Nullable Object obj, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        return new zbe(context, looper, clientSettings, (GoogleSignInOptions) obj, connectionCallbacks, onConnectionFailedListener);
    }

    @Override
    public final List getImpliedScopes(@Nullable Object obj) {
        GoogleSignInOptions googleSignInOptions = (GoogleSignInOptions) obj;
        return googleSignInOptions == null ? Collections.emptyList() : googleSignInOptions.getScopes();
    }
}
