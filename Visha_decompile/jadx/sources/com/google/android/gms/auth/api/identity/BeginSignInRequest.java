package com.google.android.gms.auth.api.identity;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.jc7;
import defpackage.wd8;
import defpackage.z09;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class BeginSignInRequest extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<BeginSignInRequest> CREATOR = new com.google.android.gms.auth.api.identity.a();
    private final PasswordRequestOptions zba;
    private final GoogleIdTokenRequestOptions zbb;

    @Nullable
    private final String zbc;
    private final boolean zbd;
    private final int zbe;

    public static final class GoogleIdTokenRequestOptions extends AbstractSafeParcelable {

        @NonNull
        public static final Parcelable.Creator<GoogleIdTokenRequestOptions> CREATOR = new b();
        private final boolean zba;

        @Nullable
        private final String zbb;

        @Nullable
        private final String zbc;
        private final boolean zbd;

        @Nullable
        private final String zbe;

        @Nullable
        private final List zbf;
        private final boolean zbg;

        public static final class a {
            public boolean a = false;
            public String b = null;
            public String c = null;
            public boolean d = true;
            public String e = null;
            public List f = null;
            public boolean g = false;

            public GoogleIdTokenRequestOptions a() {
                return new GoogleIdTokenRequestOptions(this.a, this.b, this.c, this.d, this.e, this.f, this.g);
            }

            public a b(boolean z) {
                this.a = z;
                return this;
            }
        }

        public GoogleIdTokenRequestOptions(boolean z, @Nullable String str, @Nullable String str2, boolean z2, @Nullable String str3, @Nullable List list, boolean z3) {
            boolean z4 = true;
            if (z2 && z3) {
                z4 = false;
            }
            wd8.b(z4, "filterByAuthorizedAccounts and requestVerifiedPhoneNumber must not both be true; the Verified Phone Number feature only works in sign-ups.");
            this.zba = z;
            if (z) {
                wd8.m(str, "serverClientId must be provided if Google ID tokens are requested");
            }
            this.zbb = str;
            this.zbc = str2;
            this.zbd = z2;
            Parcelable.Creator<BeginSignInRequest> creator = BeginSignInRequest.CREATOR;
            ArrayList arrayList = null;
            if (list != null && !list.isEmpty()) {
                arrayList = new ArrayList(list);
                Collections.sort(arrayList);
            }
            this.zbf = arrayList;
            this.zbe = str3;
            this.zbg = z3;
        }

        @NonNull
        public static a builder() {
            return new a();
        }

        public boolean equals(@Nullable Object obj) {
            if (!(obj instanceof GoogleIdTokenRequestOptions)) {
                return false;
            }
            GoogleIdTokenRequestOptions googleIdTokenRequestOptions = (GoogleIdTokenRequestOptions) obj;
            return this.zba == googleIdTokenRequestOptions.zba && jc7.a(this.zbb, googleIdTokenRequestOptions.zbb) && jc7.a(this.zbc, googleIdTokenRequestOptions.zbc) && this.zbd == googleIdTokenRequestOptions.zbd && jc7.a(this.zbe, googleIdTokenRequestOptions.zbe) && jc7.a(this.zbf, googleIdTokenRequestOptions.zbf) && this.zbg == googleIdTokenRequestOptions.zbg;
        }

        public boolean filterByAuthorizedAccounts() {
            return this.zbd;
        }

        @Nullable
        public List<String> getIdTokenDepositionScopes() {
            return this.zbf;
        }

        @Nullable
        public String getLinkedServiceId() {
            return this.zbe;
        }

        @Nullable
        public String getNonce() {
            return this.zbc;
        }

        @Nullable
        public String getServerClientId() {
            return this.zbb;
        }

        public int hashCode() {
            return jc7.b(Boolean.valueOf(this.zba), this.zbb, this.zbc, Boolean.valueOf(this.zbd), this.zbe, this.zbf, Boolean.valueOf(this.zbg));
        }

        public boolean isSupported() {
            return this.zba;
        }

        public boolean requestVerifiedPhoneNumber() {
            return this.zbg;
        }

        @Override
        public void writeToParcel(@NonNull Parcel parcel, int i) {
            int iA = z09.a(parcel);
            z09.g(parcel, 1, isSupported());
            z09.D(parcel, 2, getServerClientId(), false);
            z09.D(parcel, 3, getNonce(), false);
            z09.g(parcel, 4, filterByAuthorizedAccounts());
            z09.D(parcel, 5, getLinkedServiceId(), false);
            z09.F(parcel, 6, getIdTokenDepositionScopes(), false);
            z09.g(parcel, 7, requestVerifiedPhoneNumber());
            z09.b(parcel, iA);
        }
    }

    public static final class PasswordRequestOptions extends AbstractSafeParcelable {

        @NonNull
        public static final Parcelable.Creator<PasswordRequestOptions> CREATOR = new c();
        private final boolean zba;

        public static final class a {
            public boolean a = false;

            public PasswordRequestOptions a() {
                return new PasswordRequestOptions(this.a);
            }

            public a b(boolean z) {
                this.a = z;
                return this;
            }
        }

        public PasswordRequestOptions(boolean z) {
            this.zba = z;
        }

        @NonNull
        public static a builder() {
            return new a();
        }

        public boolean equals(@Nullable Object obj) {
            return (obj instanceof PasswordRequestOptions) && this.zba == ((PasswordRequestOptions) obj).zba;
        }

        public int hashCode() {
            return jc7.b(Boolean.valueOf(this.zba));
        }

        public boolean isSupported() {
            return this.zba;
        }

        @Override
        public void writeToParcel(@NonNull Parcel parcel, int i) {
            int iA = z09.a(parcel);
            z09.g(parcel, 1, isSupported());
            z09.b(parcel, iA);
        }
    }

    public static final class a {
        public PasswordRequestOptions a;
        public GoogleIdTokenRequestOptions b;
        public String c;
        public boolean d;
        public int e;

        public a() {
            PasswordRequestOptions.a aVarBuilder = PasswordRequestOptions.builder();
            aVarBuilder.b(false);
            this.a = aVarBuilder.a();
            GoogleIdTokenRequestOptions.a aVarBuilder2 = GoogleIdTokenRequestOptions.builder();
            aVarBuilder2.b(false);
            this.b = aVarBuilder2.a();
        }

        public a a(boolean z) {
            this.d = z;
            return this;
        }

        public a b(GoogleIdTokenRequestOptions googleIdTokenRequestOptions) {
            this.b = (GoogleIdTokenRequestOptions) wd8.l(googleIdTokenRequestOptions);
            return this;
        }

        public a c(PasswordRequestOptions passwordRequestOptions) {
            this.a = (PasswordRequestOptions) wd8.l(passwordRequestOptions);
            return this;
        }

        public final a d(String str) {
            this.c = str;
            return this;
        }

        public final a e(int i) {
            this.e = i;
            return this;
        }
    }

    public BeginSignInRequest(PasswordRequestOptions passwordRequestOptions, GoogleIdTokenRequestOptions googleIdTokenRequestOptions, @Nullable String str, boolean z, int i) {
        this.zba = (PasswordRequestOptions) wd8.l(passwordRequestOptions);
        this.zbb = (GoogleIdTokenRequestOptions) wd8.l(googleIdTokenRequestOptions);
        this.zbc = str;
        this.zbd = z;
        this.zbe = i;
    }

    @NonNull
    public static a builder() {
        return new a();
    }

    @NonNull
    public static a zba(@NonNull BeginSignInRequest beginSignInRequest) {
        wd8.l(beginSignInRequest);
        a aVarBuilder = builder();
        aVarBuilder.b(beginSignInRequest.getGoogleIdTokenRequestOptions());
        aVarBuilder.c(beginSignInRequest.getPasswordRequestOptions());
        aVarBuilder.a(beginSignInRequest.zbd);
        aVarBuilder.e(beginSignInRequest.zbe);
        String str = beginSignInRequest.zbc;
        if (str != null) {
            aVarBuilder.d(str);
        }
        return aVarBuilder;
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof BeginSignInRequest)) {
            return false;
        }
        BeginSignInRequest beginSignInRequest = (BeginSignInRequest) obj;
        return jc7.a(this.zba, beginSignInRequest.zba) && jc7.a(this.zbb, beginSignInRequest.zbb) && jc7.a(this.zbc, beginSignInRequest.zbc) && this.zbd == beginSignInRequest.zbd && this.zbe == beginSignInRequest.zbe;
    }

    @NonNull
    public GoogleIdTokenRequestOptions getGoogleIdTokenRequestOptions() {
        return this.zbb;
    }

    @NonNull
    public PasswordRequestOptions getPasswordRequestOptions() {
        return this.zba;
    }

    public int hashCode() {
        return jc7.b(this.zba, this.zbb, this.zbc, Boolean.valueOf(this.zbd));
    }

    public boolean isAutoSelectEnabled() {
        return this.zbd;
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        int iA = z09.a(parcel);
        z09.B(parcel, 1, getPasswordRequestOptions(), i, false);
        z09.B(parcel, 2, getGoogleIdTokenRequestOptions(), i, false);
        z09.D(parcel, 3, this.zbc, false);
        z09.g(parcel, 4, isAutoSelectEnabled());
        z09.s(parcel, 5, this.zbe);
        z09.b(parcel, iA);
    }
}
