package com.google.android.gms.internal.p002authapi;

import android.app.PendingIntent;
import com.google.android.gms.auth.api.Auth;
import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.auth.api.credentials.CredentialRequest;
import com.google.android.gms.auth.api.credentials.CredentialRequestResult;
import com.google.android.gms.auth.api.credentials.CredentialsApi;
import com.google.android.gms.auth.api.credentials.HintRequest;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;

public final class zbl implements CredentialsApi {
    @Override
    public final PendingResult<Status> delete(GoogleApiClient googleApiClient, Credential credential) {
        Preconditions.checkNotNull(googleApiClient, "client must not be null");
        Preconditions.checkNotNull(credential, "credential must not be null");
        return googleApiClient.execute(new zbi(this, googleApiClient, credential));
    }

    @Override
    public final PendingResult<Status> disableAutoSignIn(GoogleApiClient googleApiClient) {
        Preconditions.checkNotNull(googleApiClient, "client must not be null");
        return googleApiClient.execute(new zbj(this, googleApiClient));
    }

    @Override
    public final PendingIntent getHintPickerIntent(GoogleApiClient googleApiClient, HintRequest hintRequest) {
        Preconditions.checkNotNull(googleApiClient, "client must not be null");
        Preconditions.checkNotNull(hintRequest, "request must not be null");
        Auth.AuthCredentialsOptions authCredentialsOptionsZba = ((zbo) googleApiClient.getClient(Auth.zba)).zba();
        return zbn.zba(googleApiClient.getContext(), authCredentialsOptionsZba, hintRequest, authCredentialsOptionsZba.zbd());
    }

    @Override
    public final PendingResult<CredentialRequestResult> request(GoogleApiClient googleApiClient, CredentialRequest credentialRequest) {
        Preconditions.checkNotNull(googleApiClient, "client must not be null");
        Preconditions.checkNotNull(credentialRequest, "request must not be null");
        return googleApiClient.enqueue(new zbg(this, googleApiClient, credentialRequest));
    }

    @Override
    public final PendingResult<Status> save(GoogleApiClient googleApiClient, Credential credential) {
        Preconditions.checkNotNull(googleApiClient, "client must not be null");
        Preconditions.checkNotNull(credential, "credential must not be null");
        return googleApiClient.execute(new zbh(this, googleApiClient, credential));
    }
}
