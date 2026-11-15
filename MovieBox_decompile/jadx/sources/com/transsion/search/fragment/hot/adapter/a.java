package com.transsion.search.fragment.hot.adapter;

import kotlin.jvm.internal.Intrinsics;

public final class a {

    private final int f50061a;

    private final String f50062b;

    public a(int i10, String strVal) {
        Intrinsics.h(strVal, "strVal");
        this.f50061a = i10;
        this.f50062b = strVal;
    }

    public final String a() {
        return this.f50062b;
    }

    public final int b() {
        return this.f50061a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f50061a == aVar.f50061a && Intrinsics.c(this.f50062b, aVar.f50062b);
    }

    public int hashCode() {
        return (this.f50061a * 31) + this.f50062b.hashCode();
    }

    public String toString() {
        return "HistoryVal(type=" + this.f50061a + ", strVal=" + this.f50062b + ")";
    }
}
