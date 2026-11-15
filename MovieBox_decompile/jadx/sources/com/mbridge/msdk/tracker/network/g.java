package com.mbridge.msdk.tracker.network;

import android.text.TextUtils;

public final class g {

    private final String f37744a;

    private final String f37745b;

    public g(String str, String str2) {
        this.f37744a = str;
        this.f37745b = str2;
    }

    public final String a() {
        return this.f37744a;
    }

    public final String b() {
        return this.f37745b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || g.class != obj.getClass()) {
            return false;
        }
        g gVar = (g) obj;
        return TextUtils.equals(this.f37744a, gVar.f37744a) && TextUtils.equals(this.f37745b, gVar.f37745b);
    }

    public int hashCode() {
        return (this.f37744a.hashCode() * 31) + this.f37745b.hashCode();
    }

    public String toString() {
        return "Header[name=" + this.f37744a + ",value=" + this.f37745b + "]";
    }
}
