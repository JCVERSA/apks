package com.google.firebase.messaging;

import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.Objects;
import java.util.regex.Pattern;

final class z0 {

    private static final Pattern f31366d = Pattern.compile("[a-zA-Z0-9-_.~%]{1,900}");

    private final String f31367a;

    private final String f31368b;

    private final String f31369c;

    private z0(String str, String str2) {
        this.f31367a = d(str2, str);
        this.f31368b = str;
        this.f31369c = str + "!" + str2;
    }

    static z0 a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String[] strArrSplit = str.split("!", -1);
        if (strArrSplit.length != 2) {
            return null;
        }
        return new z0(strArrSplit[0], strArrSplit[1]);
    }

    private static String d(String str, String str2) {
        if (str != null && str.startsWith("/topics/")) {
            Log.w("FirebaseMessaging", String.format("Format /topics/topic-name is deprecated. Only 'topic-name' should be used in %s.", str2));
            str = str.substring(8);
        }
        if (str == null || !f31366d.matcher(str).matches()) {
            throw new IllegalArgumentException(String.format("Invalid topic name: %s does not match the allowed format %s.", str, "[a-zA-Z0-9-_.~%]{1,900}"));
        }
        return str;
    }

    public static z0 f(String str) {
        return new z0("S", str);
    }

    public static z0 g(String str) {
        return new z0("U", str);
    }

    public String b() {
        return this.f31368b;
    }

    public String c() {
        return this.f31367a;
    }

    public String e() {
        return this.f31369c;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof z0)) {
            return false;
        }
        z0 z0Var = (z0) obj;
        return this.f31367a.equals(z0Var.f31367a) && this.f31368b.equals(z0Var.f31368b);
    }

    public int hashCode() {
        return Objects.hashCode(this.f31368b, this.f31367a);
    }
}
