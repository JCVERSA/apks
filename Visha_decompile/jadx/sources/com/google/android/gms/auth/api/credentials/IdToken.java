package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.jc7;
import defpackage.s3e;
import defpackage.wd8;
import defpackage.z09;

@Deprecated
public final class IdToken extends AbstractSafeParcelable implements ReflectedParcelable {

    @NonNull
    public static final Parcelable.Creator<IdToken> CREATOR = new s3e();

    @NonNull
    private final String zba;

    @NonNull
    private final String zbb;

    public IdToken(@NonNull String str, @NonNull String str2) {
        wd8.b(!TextUtils.isEmpty(str), "account type string cannot be null or empty");
        wd8.b(!TextUtils.isEmpty(str2), "id token string cannot be null or empty");
        this.zba = str;
        this.zbb = str2;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof IdToken)) {
            return false;
        }
        IdToken idToken = (IdToken) obj;
        return jc7.a(this.zba, idToken.zba) && jc7.a(this.zbb, idToken.zbb);
    }

    @NonNull
    public String getAccountType() {
        return this.zba;
    }

    @NonNull
    public String getIdToken() {
        return this.zbb;
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        int iA = z09.a(parcel);
        z09.D(parcel, 1, getAccountType(), false);
        z09.D(parcel, 2, getIdToken(), false);
        z09.b(parcel, iA);
    }
}
