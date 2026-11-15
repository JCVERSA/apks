package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.q3e;
import defpackage.wd8;
import defpackage.z09;

@Deprecated
public final class HintRequest extends AbstractSafeParcelable implements ReflectedParcelable {

    @NonNull
    public static final Parcelable.Creator<HintRequest> CREATOR = new q3e();
    final int zba;
    private final CredentialPickerConfig zbb;
    private final boolean zbc;
    private final boolean zbd;
    private final String[] zbe;
    private final boolean zbf;

    @Nullable
    private final String zbg;

    @Nullable
    private final String zbh;

    public HintRequest(int i, CredentialPickerConfig credentialPickerConfig, boolean z, boolean z2, String[] strArr, boolean z3, @Nullable String str, @Nullable String str2) {
        this.zba = i;
        this.zbb = (CredentialPickerConfig) wd8.l(credentialPickerConfig);
        this.zbc = z;
        this.zbd = z2;
        this.zbe = (String[]) wd8.l(strArr);
        if (i < 2) {
            this.zbf = true;
            this.zbg = null;
            this.zbh = null;
        } else {
            this.zbf = z3;
            this.zbg = str;
            this.zbh = str2;
        }
    }

    @NonNull
    public String[] getAccountTypes() {
        return this.zbe;
    }

    @NonNull
    public CredentialPickerConfig getHintPickerConfig() {
        return this.zbb;
    }

    @Nullable
    public String getIdTokenNonce() {
        return this.zbh;
    }

    @Nullable
    public String getServerClientId() {
        return this.zbg;
    }

    public boolean isEmailAddressIdentifierSupported() {
        return this.zbc;
    }

    public boolean isIdTokenRequested() {
        return this.zbf;
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        int iA = z09.a(parcel);
        z09.B(parcel, 1, getHintPickerConfig(), i, false);
        z09.g(parcel, 2, isEmailAddressIdentifierSupported());
        z09.g(parcel, 3, this.zbd);
        z09.E(parcel, 4, getAccountTypes(), false);
        z09.g(parcel, 5, isIdTokenRequested());
        z09.D(parcel, 6, getServerClientId(), false);
        z09.D(parcel, 7, getIdTokenNonce(), false);
        z09.s(parcel, 1000, this.zba);
        z09.b(parcel, iA);
    }
}
