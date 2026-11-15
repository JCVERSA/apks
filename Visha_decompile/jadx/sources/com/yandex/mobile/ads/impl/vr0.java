package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.List;

public final class vr0 {
    private final List<x> a;
    private final m80 b;
    private final List<String> c;
    private final String d;
    private final long e;

    /* JADX WARN: Multi-variable type inference failed */
    public vr0(List<? extends x> list, m80 m80Var, List<String> list2, String str, long j) {
        y45.j(list2, "trackingUrls");
        this.a = list;
        this.b = m80Var;
        this.c = list2;
        this.d = str;
        this.e = j;
    }

    public final List<x> a() {
        return this.a;
    }

    public final long b() {
        return this.e;
    }

    public final m80 c() {
        return this.b;
    }

    public final List<String> d() {
        return this.c;
    }

    public final String e() {
        return this.d;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof vr0)) {
            return false;
        }
        vr0 vr0Var = (vr0) obj;
        return y45.e(this.a, vr0Var.a) && y45.e(this.b, vr0Var.b) && y45.e(this.c, vr0Var.c) && y45.e(this.d, vr0Var.d) && this.e == vr0Var.e;
    }

    public final int hashCode() {
        List<x> list = this.a;
        int iHashCode = (list == null ? 0 : list.hashCode()) * 31;
        m80 m80Var = this.b;
        int iA = aa.a(this.c, (iHashCode + (m80Var == null ? 0 : m80Var.hashCode())) * 31, 31);
        String str = this.d;
        return Long.hashCode(this.e) + ((iA + (str != null ? str.hashCode() : 0)) * 31);
    }

    public final String toString() {
        return "Link(actions=" + this.a + ", falseClick=" + this.b + ", trackingUrls=" + this.c + ", url=" + this.d + ", clickableDelay=" + this.e + ")";
    }
}
