package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.ArrayList;
import java.util.List;

public final class n90 extends ia0 {
    private final b02 a;
    private final o8<String> b;
    private final List<vk1> c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n90(b02 b02Var, o8 o8Var, ArrayList arrayList) {
        super(0);
        y45.j(b02Var, "sliderAd");
        y45.j(o8Var, "adResponse");
        y45.j(arrayList, "preloadedDivKitDesigns");
        this.a = b02Var;
        this.b = o8Var;
        this.c = arrayList;
    }

    public final o8<String> a() {
        return this.b;
    }

    public final List<vk1> b() {
        return this.c;
    }

    public final b02 c() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof n90)) {
            return false;
        }
        n90 n90Var = (n90) obj;
        return y45.e(this.a, n90Var.a) && y45.e(this.b, n90Var.b) && y45.e(this.c, n90Var.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "FeedItem(sliderAd=" + this.a + ", adResponse=" + this.b + ", preloadedDivKitDesigns=" + this.c + ")";
    }
}
