package com.google.android.gms.auth.api.identity;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.jc7;
import defpackage.wd8;
import defpackage.x3e;
import defpackage.z09;

public class SavePasswordRequest extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<SavePasswordRequest> CREATOR = new x3e();
    private final SignInPassword zba;

    @Nullable
    private final String zbb;
    private final int zbc;

    public static final class a {
        public SignInPassword a;
        public String b;
        public int c;

        public a a(SignInPassword signInPassword) {
            this.a = signInPassword;
            return this;
        }

        public final a b(String str) {
            this.b = str;
            return this;
        }

        public final a c(int i) {
            this.c = i;
            return this;
        }
    }

    public SavePasswordRequest(SignInPassword signInPassword, @Nullable String str, int i) {
        this.zba = (SignInPassword) wd8.l(signInPassword);
        this.zbb = str;
        this.zbc = i;
    }

    @NonNull
    public static a builder() {
        return new a();
    }

    @NonNull
    public static a zba(@NonNull SavePasswordRequest savePasswordRequest) {
        wd8.l(savePasswordRequest);
        a aVarBuilder = builder();
        aVarBuilder.a(savePasswordRequest.getSignInPassword());
        aVarBuilder.c(savePasswordRequest.zbc);
        String str = savePasswordRequest.zbb;
        if (str != null) {
            aVarBuilder.b(str);
        }
        return aVarBuilder;
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof SavePasswordRequest)) {
            return false;
        }
        SavePasswordRequest savePasswordRequest = (SavePasswordRequest) obj;
        return jc7.a(this.zba, savePasswordRequest.zba) && jc7.a(this.zbb, savePasswordRequest.zbb) && this.zbc == savePasswordRequest.zbc;
    }

    @NonNull
    public SignInPassword getSignInPassword() {
        return this.zba;
    }

    public int hashCode() {
        return jc7.b(this.zba, this.zbb);
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        int iA = z09.a(parcel);
        z09.B(parcel, 1, getSignInPassword(), i, false);
        z09.D(parcel, 2, this.zbb, false);
        z09.s(parcel, 3, this.zbc);
        z09.b(parcel, iA);
    }
}
