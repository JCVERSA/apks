package com.transsion.search_pugc.fragment.hot.adapter;

import kotlin.jvm.internal.Intrinsics;

public final class a {

    private final int f50349a;

    private final String f50350b;

    public a(int i10, String strVal) {
        Intrinsics.h(strVal, "strVal");
        this.f50349a = i10;
        this.f50350b = strVal;
    }

    public final String a() {
        return this.f50350b;
    }

    public final int b() {
        return this.f50349a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f50349a == aVar.f50349a && Intrinsics.c(this.f50350b, aVar.f50350b);
    }

    public int hashCode() {
        return (this.f50349a * 31) + this.f50350b.hashCode();
    }

    public String toString() {
        return "HistoryVal(type=" + this.f50349a + ", strVal=" + this.f50350b + ")";
    }
}
