package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.ArrayList;
import java.util.List;

public final class jb implements gk {
    private final String a;
    private final String b;
    private final String c;
    private final List<String> d;

    public jb(String str, String str2, String str3, ArrayList arrayList) {
        y45.j(str, "actionType");
        y45.j(str2, "adtuneUrl");
        y45.j(str3, "optOutUrl");
        y45.j(arrayList, "trackingUrls");
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = arrayList;
    }

    @Override
    public final String a() {
        return this.a;
    }

    @Override
    public final List<String> b() {
        return this.d;
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
        if (!(obj instanceof jb)) {
            return false;
        }
        jb jbVar = (jb) obj;
        return y45.e(this.a, jbVar.a) && y45.e(this.b, jbVar.b) && y45.e(this.c, jbVar.c) && y45.e(this.d, jbVar.d);
    }

    public final int hashCode() {
        return this.d.hashCode() + v3.a(this.c, v3.a(this.b, this.a.hashCode() * 31, 31), 31);
    }

    public final String toString() {
        return "AdtuneAction(actionType=" + this.a + ", adtuneUrl=" + this.b + ", optOutUrl=" + this.c + ", trackingUrls=" + this.d + ")";
    }
}
