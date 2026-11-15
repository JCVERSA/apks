package com.google.android.gms.auth.api.identity;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.d4e;
import defpackage.jc7;
import defpackage.wd8;
import defpackage.z09;

public final class SignInCredential extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<SignInCredential> CREATOR = new d4e();
    private final String zba;

    @Nullable
    private final String zbb;

    @Nullable
    private final String zbc;

    @Nullable
    private final String zbd;

    @Nullable
    private final Uri zbe;

    @Nullable
    private final String zbf;

    @Nullable
    private final String zbg;

    @Nullable
    private final String zbh;

    public SignInCredential(@NonNull String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable Uri uri, @Nullable String str5, @Nullable String str6, @Nullable String str7) {
        this.zba = wd8.f(str);
        this.zbb = str2;
        this.zbc = str3;
        this.zbd = str4;
        this.zbe = uri;
        this.zbf = str5;
        this.zbg = str6;
        this.zbh = str7;
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof SignInCredential)) {
            return false;
        }
        SignInCredential signInCredential = (SignInCredential) obj;
        return jc7.a(this.zba, signInCredential.zba) && jc7.a(this.zbb, signInCredential.zbb) && jc7.a(this.zbc, signInCredential.zbc) && jc7.a(this.zbd, signInCredential.zbd) && jc7.a(this.zbe, signInCredential.zbe) && jc7.a(this.zbf, signInCredential.zbf) && jc7.a(this.zbg, signInCredential.zbg) && jc7.a(this.zbh, signInCredential.zbh);
    }

    @Nullable
    public String getDisplayName() {
        return this.zbb;
    }

    @Nullable
    public String getFamilyName() {
        return this.zbd;
    }

    @Nullable
    public String getGivenName() {
        return this.zbc;
    }

    @Nullable
    public String getGoogleIdToken() {
        return this.zbg;
    }

    @NonNull
    public String getId() {
        return this.zba;
    }

    @Nullable
    public String getPassword() {
        return this.zbf;
    }

    @Nullable
    public String getPhoneNumber() {
        return this.zbh;
    }

    @Nullable
    public Uri getProfilePictureUri() {
        return this.zbe;
    }

    public int hashCode() {
        return jc7.b(this.zba, this.zbb, this.zbc, this.zbd, this.zbe, this.zbf, this.zbg, this.zbh);
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        int iA = z09.a(parcel);
        z09.D(parcel, 1, getId(), false);
        z09.D(parcel, 2, getDisplayName(), false);
        z09.D(parcel, 3, getGivenName(), false);
        z09.D(parcel, 4, getFamilyName(), false);
        z09.B(parcel, 5, getProfilePictureUri(), i, false);
        z09.D(parcel, 6, getPassword(), false);
        z09.D(parcel, 7, getGoogleIdToken(), false);
        z09.D(parcel, 8, getPhoneNumber(), false);
        z09.b(parcel, iA);
    }
}
