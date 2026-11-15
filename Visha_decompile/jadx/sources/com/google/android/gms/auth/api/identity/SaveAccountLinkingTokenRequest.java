package com.google.android.gms.auth.api.identity;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.jc7;
import defpackage.v3e;
import defpackage.wd8;
import defpackage.z09;
import java.util.ArrayList;
import java.util.List;

public class SaveAccountLinkingTokenRequest extends AbstractSafeParcelable implements ReflectedParcelable {

    @NonNull
    public static final Parcelable.Creator<SaveAccountLinkingTokenRequest> CREATOR = new v3e();

    @NonNull
    public static final String EXTRA_TOKEN = "extra_token";

    @NonNull
    public static final String TOKEN_TYPE_AUTH_CODE = "auth_code";
    private final PendingIntent zba;
    private final String zbb;
    private final String zbc;
    private final List zbd;

    @Nullable
    private final String zbe;
    private final int zbf;

    public static final class a {
        public PendingIntent a;
        public String b;
        public String c;
        public List d = new ArrayList();
        public String e;
        public int f;

        public a a(PendingIntent pendingIntent) {
            this.a = pendingIntent;
            return this;
        }

        public a b(List list) {
            this.d = list;
            return this;
        }

        public a c(String str) {
            this.c = str;
            return this;
        }

        public a d(String str) {
            this.b = str;
            return this;
        }

        public final a e(String str) {
            this.e = str;
            return this;
        }

        public final a f(int i) {
            this.f = i;
            return this;
        }
    }

    public SaveAccountLinkingTokenRequest(PendingIntent pendingIntent, String str, String str2, List list, @Nullable String str3, int i) {
        this.zba = pendingIntent;
        this.zbb = str;
        this.zbc = str2;
        this.zbd = list;
        this.zbe = str3;
        this.zbf = i;
    }

    @NonNull
    public static a builder() {
        return new a();
    }

    @NonNull
    public static a zba(@NonNull SaveAccountLinkingTokenRequest saveAccountLinkingTokenRequest) {
        wd8.l(saveAccountLinkingTokenRequest);
        a aVarBuilder = builder();
        aVarBuilder.b(saveAccountLinkingTokenRequest.getScopes());
        aVarBuilder.c(saveAccountLinkingTokenRequest.getServiceId());
        aVarBuilder.a(saveAccountLinkingTokenRequest.getConsentPendingIntent());
        aVarBuilder.d(saveAccountLinkingTokenRequest.getTokenType());
        aVarBuilder.f(saveAccountLinkingTokenRequest.zbf);
        String str = saveAccountLinkingTokenRequest.zbe;
        if (!TextUtils.isEmpty(str)) {
            aVarBuilder.e(str);
        }
        return aVarBuilder;
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof SaveAccountLinkingTokenRequest)) {
            return false;
        }
        SaveAccountLinkingTokenRequest saveAccountLinkingTokenRequest = (SaveAccountLinkingTokenRequest) obj;
        return this.zbd.size() == saveAccountLinkingTokenRequest.zbd.size() && this.zbd.containsAll(saveAccountLinkingTokenRequest.zbd) && jc7.a(this.zba, saveAccountLinkingTokenRequest.zba) && jc7.a(this.zbb, saveAccountLinkingTokenRequest.zbb) && jc7.a(this.zbc, saveAccountLinkingTokenRequest.zbc) && jc7.a(this.zbe, saveAccountLinkingTokenRequest.zbe) && this.zbf == saveAccountLinkingTokenRequest.zbf;
    }

    @NonNull
    public PendingIntent getConsentPendingIntent() {
        return this.zba;
    }

    @NonNull
    public List<String> getScopes() {
        return this.zbd;
    }

    @NonNull
    public String getServiceId() {
        return this.zbc;
    }

    @NonNull
    public String getTokenType() {
        return this.zbb;
    }

    public int hashCode() {
        return jc7.b(this.zba, this.zbb, this.zbc, this.zbd, this.zbe);
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        int iA = z09.a(parcel);
        z09.B(parcel, 1, getConsentPendingIntent(), i, false);
        z09.D(parcel, 2, getTokenType(), false);
        z09.D(parcel, 3, getServiceId(), false);
        z09.F(parcel, 4, getScopes(), false);
        z09.D(parcel, 5, this.zbe, false);
        z09.s(parcel, 6, this.zbf);
        z09.b(parcel, iA);
    }
}
