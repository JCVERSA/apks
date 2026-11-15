package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.k3e;
import defpackage.wd8;
import defpackage.z09;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

@Deprecated
public final class CredentialRequest extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<CredentialRequest> CREATOR = new k3e();
    final int zba;
    private final boolean zbb;
    private final String[] zbc;
    private final CredentialPickerConfig zbd;
    private final CredentialPickerConfig zbe;
    private final boolean zbf;

    @Nullable
    private final String zbg;

    @Nullable
    private final String zbh;
    private final boolean zbi;

    public CredentialRequest(int i, boolean z, String[] strArr, @Nullable CredentialPickerConfig credentialPickerConfig, @Nullable CredentialPickerConfig credentialPickerConfig2, boolean z2, @Nullable String str, @Nullable String str2, boolean z3) {
        this.zba = i;
        this.zbb = z;
        this.zbc = (String[]) wd8.l(strArr);
        this.zbd = credentialPickerConfig == null ? new CredentialPickerConfig.a().a() : credentialPickerConfig;
        this.zbe = credentialPickerConfig2 == null ? new CredentialPickerConfig.a().a() : credentialPickerConfig2;
        if (i < 3) {
            this.zbf = true;
            this.zbg = null;
            this.zbh = null;
        } else {
            this.zbf = z2;
            this.zbg = str;
            this.zbh = str2;
        }
        this.zbi = z3;
    }

    @NonNull
    public String[] getAccountTypes() {
        return this.zbc;
    }

    @NonNull
    public Set<String> getAccountTypesSet() {
        return new HashSet(Arrays.asList(this.zbc));
    }

    @NonNull
    public CredentialPickerConfig getCredentialHintPickerConfig() {
        return this.zbe;
    }

    @NonNull
    public CredentialPickerConfig getCredentialPickerConfig() {
        return this.zbd;
    }

    @Nullable
    public String getIdTokenNonce() {
        return this.zbh;
    }

    @Nullable
    public String getServerClientId() {
        return this.zbg;
    }

    @Deprecated
    public boolean getSupportsPasswordLogin() {
        return isPasswordLoginSupported();
    }

    public boolean isIdTokenRequested() {
        return this.zbf;
    }

    public boolean isPasswordLoginSupported() {
        return this.zbb;
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        int iA = z09.a(parcel);
        z09.g(parcel, 1, isPasswordLoginSupported());
        z09.E(parcel, 2, getAccountTypes(), false);
        z09.B(parcel, 3, getCredentialPickerConfig(), i, false);
        z09.B(parcel, 4, getCredentialHintPickerConfig(), i, false);
        z09.g(parcel, 5, isIdTokenRequested());
        z09.D(parcel, 6, getServerClientId(), false);
        z09.D(parcel, 7, getIdTokenNonce(), false);
        z09.g(parcel, 8, this.zbi);
        z09.s(parcel, 1000, this.zba);
        z09.b(parcel, iA);
    }
}
