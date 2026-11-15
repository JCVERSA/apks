package com.google.android.gms.internal.p002authapi;

import androidx.annotation.Nullable;
import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.auth.api.credentials.CredentialRequestResult;
import com.google.android.gms.common.api.Status;

public final class zbe implements CredentialRequestResult {
    private final Status zba;

    @Nullable
    private final Credential zbb;

    public zbe(Status status, @Nullable Credential credential) {
        this.zba = status;
        this.zbb = credential;
    }

    @Override
    @Nullable
    public final Credential getCredential() {
        return this.zbb;
    }

    @Override
    public final Status getStatus() {
        return this.zba;
    }
}
