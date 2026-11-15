package com.google.android.gms.auth.api.identity;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.jc7;
import defpackage.r3e;
import defpackage.wd8;
import defpackage.z09;

public class GetSignInIntentRequest extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<GetSignInIntentRequest> CREATOR = new r3e();
    private final String zba;

    @Nullable
    private final String zbb;

    @Nullable
    private String zbc;

    @Nullable
    private final String zbd;
    private final boolean zbe;
    private final int zbf;

    public static final class a {
        public String a;
        public String b;
        public String c;
        public String d;
        public boolean e;
        public int f;

        public a a(String str) {
            this.b = str;
            return this;
        }

        public a b(String str) {
            this.d = str;
            return this;
        }

        public a c(boolean z) {
            this.e = z;
            return this;
        }

        public a d(String str) {
            wd8.l(str);
            this.a = str;
            return this;
        }

        public final a e(String str) {
            this.c = str;
            return this;
        }

        public final a f(int i) {
            this.f = i;
            return this;
        }
    }

    public GetSignInIntentRequest(String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, boolean z, int i) {
        wd8.l(str);
        this.zba = str;
        this.zbb = str2;
        this.zbc = str3;
        this.zbd = str4;
        this.zbe = z;
        this.zbf = i;
    }

    @NonNull
    public static a builder() {
        return new a();
    }

    @NonNull
    public static a zba(@NonNull GetSignInIntentRequest getSignInIntentRequest) {
        wd8.l(getSignInIntentRequest);
        a aVarBuilder = builder();
        aVarBuilder.d(getSignInIntentRequest.getServerClientId());
        aVarBuilder.b(getSignInIntentRequest.getNonce());
        aVarBuilder.a(getSignInIntentRequest.getHostedDomainFilter());
        aVarBuilder.c(getSignInIntentRequest.zbe);
        aVarBuilder.f(getSignInIntentRequest.zbf);
        String str = getSignInIntentRequest.zbc;
        if (str != null) {
            aVarBuilder.e(str);
        }
        return aVarBuilder;
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof GetSignInIntentRequest)) {
            return false;
        }
        GetSignInIntentRequest getSignInIntentRequest = (GetSignInIntentRequest) obj;
        return jc7.a(this.zba, getSignInIntentRequest.zba) && jc7.a(this.zbd, getSignInIntentRequest.zbd) && jc7.a(this.zbb, getSignInIntentRequest.zbb) && jc7.a(Boolean.valueOf(this.zbe), Boolean.valueOf(getSignInIntentRequest.zbe)) && this.zbf == getSignInIntentRequest.zbf;
    }

    @Nullable
    public String getHostedDomainFilter() {
        return this.zbb;
    }

    @Nullable
    public String getNonce() {
        return this.zbd;
    }

    @NonNull
    public String getServerClientId() {
        return this.zba;
    }

    public int hashCode() {
        return jc7.b(this.zba, this.zbb, this.zbd, Boolean.valueOf(this.zbe), Integer.valueOf(this.zbf));
    }

    public boolean requestVerifiedPhoneNumber() {
        return this.zbe;
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        int iA = z09.a(parcel);
        z09.D(parcel, 1, getServerClientId(), false);
        z09.D(parcel, 2, getHostedDomainFilter(), false);
        z09.D(parcel, 3, this.zbc, false);
        z09.D(parcel, 4, getNonce(), false);
        z09.g(parcel, 5, requestVerifiedPhoneNumber());
        z09.s(parcel, 6, this.zbf);
        z09.b(parcel, iA);
    }
}
