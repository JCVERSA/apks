package defpackage;

import android.content.Context;
import android.text.TextUtils;

public final class yw3 {
    public final String a;
    public final String b;
    public final String c;
    public final String d;
    public final String e;
    public final String f;
    public final String g;

    public yw3(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        wd8.p(!v0a.a(str), "ApplicationId must be set.");
        this.b = str;
        this.a = str2;
        this.c = str3;
        this.d = str4;
        this.e = str5;
        this.f = str6;
        this.g = str7;
    }

    public static yw3 a(Context context) {
        b0a b0aVar = new b0a(context);
        String strA = b0aVar.a("google_app_id");
        if (TextUtils.isEmpty(strA)) {
            return null;
        }
        return new yw3(strA, b0aVar.a("google_api_key"), b0aVar.a("firebase_database_url"), b0aVar.a("ga_trackingId"), b0aVar.a("gcm_defaultSenderId"), b0aVar.a("google_storage_bucket"), b0aVar.a("project_id"));
    }

    public String b() {
        return this.a;
    }

    public String c() {
        return this.b;
    }

    public String d() {
        return this.e;
    }

    public String e() {
        return this.g;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof yw3)) {
            return false;
        }
        yw3 yw3Var = (yw3) obj;
        return jc7.a(this.b, yw3Var.b) && jc7.a(this.a, yw3Var.a) && jc7.a(this.c, yw3Var.c) && jc7.a(this.d, yw3Var.d) && jc7.a(this.e, yw3Var.e) && jc7.a(this.f, yw3Var.f) && jc7.a(this.g, yw3Var.g);
    }

    public int hashCode() {
        return jc7.b(this.b, this.a, this.c, this.d, this.e, this.f, this.g);
    }

    public String toString() {
        return jc7.c(this).a("applicationId", this.b).a("apiKey", this.a).a("databaseUrl", this.c).a("gcmSenderId", this.e).a("storageBucket", this.f).a("projectId", this.g).toString();
    }
}
