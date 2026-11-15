package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.ArrayList;
import java.util.List;

public final class zh2 {
    private final List<String> a;

    public zh2(ArrayList arrayList) {
        y45.j(arrayList, "viewableUrls");
        this.a = arrayList;
    }

    public final List<String> a() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof zh2) && y45.e(this.a, ((zh2) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "ViewableImpression(viewableUrls=" + this.a + ")";
    }
}
