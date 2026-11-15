package com.android.volley;

import android.text.TextUtils;

public final class e {

    private final String f18615a;

    private final String f18616b;

    public e(String str, String str2) {
        this.f18615a = str;
        this.f18616b = str2;
    }

    public final String a() {
        return this.f18615a;
    }

    public final String b() {
        return this.f18616b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || e.class != obj.getClass()) {
            return false;
        }
        e eVar = (e) obj;
        return TextUtils.equals(this.f18615a, eVar.f18615a) && TextUtils.equals(this.f18616b, eVar.f18616b);
    }

    public int hashCode() {
        return (this.f18615a.hashCode() * 31) + this.f18616b.hashCode();
    }

    public String toString() {
        return "Header[name=" + this.f18615a + ",value=" + this.f18616b + "]";
    }
}
