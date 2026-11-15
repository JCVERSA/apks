package com.google.firebase;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.StringResourceValueReader;
import com.google.android.gms.common.util.Strings;

public final class m {

    private final String f31126a;

    private final String f31127b;

    private final String f31128c;

    private final String f31129d;

    private final String f31130e;

    private final String f31131f;

    private final String f31132g;

    private m(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        Preconditions.checkState(!Strings.isEmptyOrWhitespace(str), "ApplicationId must be set.");
        this.f31127b = str;
        this.f31126a = str2;
        this.f31128c = str3;
        this.f31129d = str4;
        this.f31130e = str5;
        this.f31131f = str6;
        this.f31132g = str7;
    }

    public static m a(Context context) {
        StringResourceValueReader stringResourceValueReader = new StringResourceValueReader(context);
        String string = stringResourceValueReader.getString("google_app_id");
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        return new m(string, stringResourceValueReader.getString("google_api_key"), stringResourceValueReader.getString("firebase_database_url"), stringResourceValueReader.getString("ga_trackingId"), stringResourceValueReader.getString("gcm_defaultSenderId"), stringResourceValueReader.getString("google_storage_bucket"), stringResourceValueReader.getString("project_id"));
    }

    public String b() {
        return this.f31126a;
    }

    public String c() {
        return this.f31127b;
    }

    public String d() {
        return this.f31130e;
    }

    public String e() {
        return this.f31132g;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof m)) {
            return false;
        }
        m mVar = (m) obj;
        return Objects.equal(this.f31127b, mVar.f31127b) && Objects.equal(this.f31126a, mVar.f31126a) && Objects.equal(this.f31128c, mVar.f31128c) && Objects.equal(this.f31129d, mVar.f31129d) && Objects.equal(this.f31130e, mVar.f31130e) && Objects.equal(this.f31131f, mVar.f31131f) && Objects.equal(this.f31132g, mVar.f31132g);
    }

    public int hashCode() {
        return Objects.hashCode(this.f31127b, this.f31126a, this.f31128c, this.f31129d, this.f31130e, this.f31131f, this.f31132g);
    }

    public String toString() {
        return Objects.toStringHelper(this).add("applicationId", this.f31127b).add("apiKey", this.f31126a).add("databaseUrl", this.f31128c).add("gcmSenderId", this.f31130e).add("storageBucket", this.f31131f).add("projectId", this.f31132g).toString();
    }
}
