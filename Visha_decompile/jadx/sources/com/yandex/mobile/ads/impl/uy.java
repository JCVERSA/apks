package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.ArrayList;
import java.util.List;

public final class uy implements x {
    private final String a;
    private final String b;
    private final List<zj1> c;

    public uy(String str, String str2, ArrayList arrayList) {
        y45.j(str, "actionType");
        y45.j(str2, "fallbackUrl");
        y45.j(arrayList, "preferredPackages");
        this.a = str;
        this.b = str2;
        this.c = arrayList;
    }

    @Override
    public final String a() {
        return this.a;
    }

    public final String c() {
        return this.b;
    }

    public final List<zj1> d() {
        return this.c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof uy)) {
            return false;
        }
        uy uyVar = (uy) obj;
        return y45.e(this.a, uyVar.a) && y45.e(this.b, uyVar.b) && y45.e(this.c, uyVar.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + v3.a(this.b, this.a.hashCode() * 31, 31);
    }

    public final String toString() {
        return "DeeplinkAction(actionType=" + this.a + ", fallbackUrl=" + this.b + ", preferredPackages=" + this.c + ")";
    }
}
