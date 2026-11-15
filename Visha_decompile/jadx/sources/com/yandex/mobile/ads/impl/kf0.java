package com.yandex.mobile.ads.impl;

import android.text.TextUtils;

public final class kf0 {
    private final String a;
    private final String b;

    public kf0(String str, String str2) {
        this.a = str;
        this.b = str2;
    }

    public final String a() {
        return this.a;
    }

    public final String b() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || kf0.class != obj.getClass()) {
            return false;
        }
        kf0 kf0Var = (kf0) obj;
        return TextUtils.equals(this.a, kf0Var.a) && TextUtils.equals(this.b, kf0Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "Header[name=" + this.a + ",value=" + this.b + "]";
    }
}
