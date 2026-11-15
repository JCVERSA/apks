package com.google.android.gms.auth.api.credentials;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.webkit.ProxyConfig;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.jc7;
import defpackage.wd8;
import defpackage.y2e;
import defpackage.z09;
import java.util.Collections;
import java.util.List;

@Deprecated
public class Credential extends AbstractSafeParcelable implements ReflectedParcelable {

    @NonNull
    public static final Parcelable.Creator<Credential> CREATOR = new y2e();

    @NonNull
    public static final String EXTRA_KEY = "com.google.android.gms.credentials.Credential";
    private final String zba;

    @Nullable
    private final String zbb;

    @Nullable
    private final Uri zbc;
    private final List zbd;

    @Nullable
    private final String zbe;

    @Nullable
    private final String zbf;

    @Nullable
    private final String zbg;

    @Nullable
    private final String zbh;

    public Credential(String str, @Nullable String str2, @Nullable Uri uri, List list, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6) {
        Boolean boolValueOf;
        String strTrim = ((String) wd8.m(str, "credential identifier cannot be null")).trim();
        wd8.g(strTrim, "credential identifier cannot be empty");
        if (str3 != null && TextUtils.isEmpty(str3)) {
            throw new IllegalArgumentException("Password must not be empty if set");
        }
        if (str4 != null) {
            if (TextUtils.isEmpty(str4)) {
                boolValueOf = Boolean.FALSE;
            } else {
                Uri uri2 = Uri.parse(str4);
                if (!uri2.isAbsolute() || !uri2.isHierarchical() || TextUtils.isEmpty(uri2.getScheme()) || TextUtils.isEmpty(uri2.getAuthority())) {
                    boolValueOf = Boolean.FALSE;
                } else {
                    boolean z = true;
                    if (!ProxyConfig.MATCH_HTTP.equalsIgnoreCase(uri2.getScheme()) && !ProxyConfig.MATCH_HTTPS.equalsIgnoreCase(uri2.getScheme())) {
                        z = false;
                    }
                    boolValueOf = Boolean.valueOf(z);
                }
            }
            if (!boolValueOf.booleanValue()) {
                throw new IllegalArgumentException("Account type must be a valid Http/Https URI");
            }
        }
        if (!TextUtils.isEmpty(str4) && !TextUtils.isEmpty(str3)) {
            throw new IllegalArgumentException("Password and AccountType are mutually exclusive");
        }
        if (str2 != null && TextUtils.isEmpty(str2.trim())) {
            str2 = null;
        }
        this.zbb = str2;
        this.zbc = uri;
        this.zbd = list == null ? Collections.emptyList() : Collections.unmodifiableList(list);
        this.zba = strTrim;
        this.zbe = str3;
        this.zbf = str4;
        this.zbg = str5;
        this.zbh = str6;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Credential)) {
            return false;
        }
        Credential credential = (Credential) obj;
        return TextUtils.equals(this.zba, credential.zba) && TextUtils.equals(this.zbb, credential.zbb) && jc7.a(this.zbc, credential.zbc) && TextUtils.equals(this.zbe, credential.zbe) && TextUtils.equals(this.zbf, credential.zbf);
    }

    @Nullable
    public String getAccountType() {
        return this.zbf;
    }

    @Nullable
    public String getFamilyName() {
        return this.zbh;
    }

    @Nullable
    public String getGivenName() {
        return this.zbg;
    }

    public String getId() {
        return this.zba;
    }

    public List<IdToken> getIdTokens() {
        return this.zbd;
    }

    @Nullable
    public String getName() {
        return this.zbb;
    }

    @Nullable
    public String getPassword() {
        return this.zbe;
    }

    @Nullable
    public Uri getProfilePictureUri() {
        return this.zbc;
    }

    public int hashCode() {
        return jc7.b(this.zba, this.zbb, this.zbc, this.zbe, this.zbf);
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        int iA = z09.a(parcel);
        z09.D(parcel, 1, getId(), false);
        z09.D(parcel, 2, getName(), false);
        z09.B(parcel, 3, getProfilePictureUri(), i, false);
        z09.H(parcel, 4, getIdTokens(), false);
        z09.D(parcel, 5, getPassword(), false);
        z09.D(parcel, 6, getAccountType(), false);
        z09.D(parcel, 9, getGivenName(), false);
        z09.D(parcel, 10, getFamilyName(), false);
        z09.b(parcel, iA);
    }
}
