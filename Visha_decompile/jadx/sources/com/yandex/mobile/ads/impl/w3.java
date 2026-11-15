package com.yandex.mobile.ads.impl;

import defpackage.hz9;
import defpackage.y45;
import java.util.Arrays;
import java.util.Locale;

public final class w3 {
    private final int a;
    private final String b;
    private final String c;
    private final String d;

    public w3(int i, String str, String str2, String str3) {
        y45.j(str, "description");
        y45.j(str2, "displayMessage");
        this.a = i;
        this.b = str;
        this.c = str2;
        this.d = str3;
    }

    public final String a() {
        return this.d;
    }

    public final int b() {
        return this.a;
    }

    public final String c() {
        return this.b;
    }

    public final String d() {
        return this.c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof w3)) {
            return false;
        }
        w3 w3Var = (w3) obj;
        return this.a == w3Var.a && y45.e(this.b, w3Var.b) && y45.e(this.c, w3Var.c) && y45.e(this.d, w3Var.d);
    }

    public final int hashCode() {
        int iA = v3.a(this.c, v3.a(this.b, Integer.hashCode(this.a) * 31, 31), 31);
        String str = this.d;
        return iA + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        hz9 hz9Var = hz9.a;
        String str = String.format(Locale.US, "AdFetchRequestError (code: %d, description: %s, adUnitId: %s, display_message: %s)", Arrays.copyOf(new Object[]{Integer.valueOf(this.a), this.b, this.d, this.c}, 4));
        y45.i(str, "format(...)");
        return str;
    }
}
