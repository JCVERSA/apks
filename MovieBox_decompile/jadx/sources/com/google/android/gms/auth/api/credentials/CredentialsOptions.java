package com.google.android.gms.auth.api.credentials;

import androidx.annotation.NonNull;
import com.google.android.gms.auth.api.Auth;

@Deprecated
public final class CredentialsOptions extends Auth.AuthCredentialsOptions {

    @NonNull
    public static final CredentialsOptions DEFAULT = new Builder().build();

    public static final class Builder extends Auth.AuthCredentialsOptions.Builder {
        @NonNull
        public CredentialsOptions build() {
            return new CredentialsOptions(this, null);
        }

        @Override
        @NonNull
        public final Auth.AuthCredentialsOptions.Builder forceEnableSaveDialog() {
            forceEnableSaveDialog();
            return this;
        }

        @Override
        @NonNull
        public Builder forceEnableSaveDialog() {
            this.zba = Boolean.TRUE;
            return this;
        }
    }

    CredentialsOptions(Builder builder, zbd zbdVar) {
        super(builder);
    }
}
