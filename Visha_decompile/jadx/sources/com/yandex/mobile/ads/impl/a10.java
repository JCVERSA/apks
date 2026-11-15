package com.yandex.mobile.ads.impl;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.y45;
import java.util.ArrayList;
import java.util.List;

public final class a10 {
    private final String a;
    private final String b;
    private final String c;
    private final List<xj0> d;

    public a10(String str, String str2, String str3, ArrayList arrayList) {
        y45.j(str, "type");
        y45.j(str2, TypedValues.AttributesType.S_TARGET);
        y45.j(str3, TtmlNode.TAG_LAYOUT);
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = arrayList;
    }

    public final List<xj0> a() {
        return this.d;
    }

    public final String b() {
        return this.c;
    }

    public final String c() {
        return this.b;
    }

    public final String d() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a10)) {
            return false;
        }
        a10 a10Var = (a10) obj;
        return y45.e(this.a, a10Var.a) && y45.e(this.b, a10Var.b) && y45.e(this.c, a10Var.c) && y45.e(this.d, a10Var.d);
    }

    public final int hashCode() {
        int iA = v3.a(this.c, v3.a(this.b, this.a.hashCode() * 31, 31), 31);
        List<xj0> list = this.d;
        return iA + (list == null ? 0 : list.hashCode());
    }

    public final String toString() {
        return "Design(type=" + this.a + ", target=" + this.b + ", layout=" + this.c + ", images=" + this.d + ")";
    }
}
