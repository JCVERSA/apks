package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.appmetrica.analytics.coreutils.internal.ApiKeyUtils;

public class C2532f5 {
    public final String a;
    public final String b;

    public C2532f5(String str, String str2) {
        this.a = str;
        this.b = str2;
    }

    @NonNull
    public final String a() {
        return ApiKeyUtils.createPartialApiKey(this.b);
    }

    @Nullable
    public final String b() {
        return this.b;
    }

    public final String c() {
        return this.a;
    }

    public boolean d() {
        return false;
    }

    public String e() {
        return this.a + "_" + ApiKeyUtils.createPartialApiKey(this.b);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C2532f5 c2532f5 = (C2532f5) obj;
        String str = this.a;
        if (str == null ? c2532f5.a != null : !str.equals(c2532f5.a)) {
            return false;
        }
        String str2 = this.b;
        if (str2 != null) {
            return str2.equals(c2532f5.b);
        }
        return c2532f5.b == null;
    }

    public final int hashCode() {
        String str = this.a;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.b;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public String toString() {
        return this.a + "_" + this.b;
    }
}
