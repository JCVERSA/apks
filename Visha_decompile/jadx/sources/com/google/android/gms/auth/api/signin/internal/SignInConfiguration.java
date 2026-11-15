package com.google.android.gms.auth.api.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.i4e;
import defpackage.wd8;
import defpackage.yn4;
import defpackage.z09;

public final class SignInConfiguration extends AbstractSafeParcelable implements ReflectedParcelable {

    @NonNull
    public static final Parcelable.Creator<SignInConfiguration> CREATOR = new i4e();
    private final String zba;
    private GoogleSignInOptions zbb;

    public SignInConfiguration(@NonNull String str, @NonNull GoogleSignInOptions googleSignInOptions) {
        this.zba = wd8.f(str);
        this.zbb = googleSignInOptions;
    }

    public final boolean equals(@Nullable Object obj) {
        if (!(obj instanceof SignInConfiguration)) {
            return false;
        }
        SignInConfiguration signInConfiguration = (SignInConfiguration) obj;
        if (this.zba.equals(signInConfiguration.zba)) {
            GoogleSignInOptions googleSignInOptions = this.zbb;
            if (googleSignInOptions == null) {
                if (signInConfiguration.zbb == null) {
                    return true;
                }
            } else if (googleSignInOptions.equals(signInConfiguration.zbb)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return new yn4().a(this.zba).a(this.zbb).b();
    }

    @Override
    public final void writeToParcel(@NonNull Parcel parcel, int i) {
        int iA = z09.a(parcel);
        z09.D(parcel, 2, this.zba, false);
        z09.B(parcel, 5, this.zbb, i, false);
        z09.b(parcel, iA);
    }

    @NonNull
    public final GoogleSignInOptions zba() {
        return this.zbb;
    }
}
