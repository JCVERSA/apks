package com.google.android.gms.auth.api.signin;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.i3e;
import defpackage.wd8;
import defpackage.z09;

public class SignInAccount extends AbstractSafeParcelable implements ReflectedParcelable {

    @NonNull
    public static final Parcelable.Creator<SignInAccount> CREATOR = new i3e();

    @Deprecated
    String zba;

    @Deprecated
    String zbb;
    private GoogleSignInAccount zbc;

    public SignInAccount(String str, GoogleSignInAccount googleSignInAccount, String str2) {
        this.zbc = googleSignInAccount;
        this.zba = wd8.g(str, "8.3 and 8.4 SDKs require non-null email");
        this.zbb = wd8.g(str2, "8.3 and 8.4 SDKs require non-null userId");
    }

    @Override
    public final void writeToParcel(@NonNull Parcel parcel, int i) {
        int iA = z09.a(parcel);
        z09.D(parcel, 4, this.zba, false);
        z09.B(parcel, 7, this.zbc, i, false);
        z09.D(parcel, 8, this.zbb, false);
        z09.b(parcel, iA);
    }

    @Nullable
    public final GoogleSignInAccount zba() {
        return this.zbc;
    }
}
