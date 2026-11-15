package com.google.android.gms.auth.api.identity;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.g4e;
import defpackage.jc7;
import defpackage.wd8;
import defpackage.z09;

public class SignInPassword extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<SignInPassword> CREATOR = new g4e();
    private final String zba;
    private final String zbb;

    public SignInPassword(@NonNull String str, @NonNull String str2) {
        this.zba = wd8.g(((String) wd8.m(str, "Account identifier cannot be null")).trim(), "Account identifier cannot be empty");
        this.zbb = wd8.f(str2);
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof SignInPassword)) {
            return false;
        }
        SignInPassword signInPassword = (SignInPassword) obj;
        return jc7.a(this.zba, signInPassword.zba) && jc7.a(this.zbb, signInPassword.zbb);
    }

    @NonNull
    public String getId() {
        return this.zba;
    }

    @NonNull
    public String getPassword() {
        return this.zbb;
    }

    public int hashCode() {
        return jc7.b(this.zba, this.zbb);
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        int iA = z09.a(parcel);
        z09.D(parcel, 1, getId(), false);
        z09.D(parcel, 2, getPassword(), false);
        z09.b(parcel, iA);
    }
}
