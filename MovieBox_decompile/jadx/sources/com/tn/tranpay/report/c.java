package com.tn.tranpay.report;

import java.util.HashMap;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class c {

    private final String f40665a;

    private final boolean f40666b;

    private final HashMap f40667c;

    private String f40668d;

    private boolean f40669e;

    private boolean f40670f;

    private long f40671g;

    private boolean f40672h;

    private String f40673i;

    public c(String pageName, boolean z10) {
        Intrinsics.h(pageName, "pageName");
        this.f40665a = pageName;
        this.f40666b = z10;
        this.f40667c = new HashMap();
        this.f40670f = true;
        this.f40671g = -1L;
    }

    public final String a() {
        return this.f40668d;
    }

    public final boolean b() {
        return this.f40666b;
    }

    public final boolean c() {
        return this.f40669e;
    }

    public final boolean d() {
        return this.f40670f;
    }

    public final String e() {
        return this.f40673i;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return Intrinsics.c(this.f40665a, cVar.f40665a) && this.f40666b == cVar.f40666b;
    }

    public final String f() {
        return this.f40665a;
    }

    public final HashMap g() {
        return this.f40667c;
    }

    public final long h() {
        return this.f40671g;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [int] */
    /* JADX WARN: Type inference failed for: r1v1, types: [int] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3 */
    public int hashCode() {
        int iHashCode = this.f40665a.hashCode() * 31;
        boolean z10 = this.f40666b;
        ?? r10 = z10;
        if (z10) {
            r10 = 1;
        }
        return iHashCode + r10;
    }

    public final boolean i() {
        return this.f40672h;
    }

    public final void j(boolean z10) {
        this.f40672h = z10;
    }

    public final void k(long j10) {
        this.f40671g = j10;
    }

    public String toString() {
        return "LogViewConfig(pageName=" + this.f40665a + ", needAddToPageFrom=" + this.f40666b + ")";
    }

    public c(String str, boolean z10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i10 & 2) != 0 ? true : z10);
    }
}
