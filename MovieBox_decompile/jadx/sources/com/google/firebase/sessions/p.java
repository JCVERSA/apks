package com.google.firebase.sessions;

import kotlin.jvm.internal.Intrinsics;

public final class p {

    private final String f31862a;

    private final int f31863b;

    private final int f31864c;

    private final boolean f31865d;

    public p(String processName, int i10, int i11, boolean z10) {
        Intrinsics.h(processName, "processName");
        this.f31862a = processName;
        this.f31863b = i10;
        this.f31864c = i11;
        this.f31865d = z10;
    }

    public final int a() {
        return this.f31864c;
    }

    public final int b() {
        return this.f31863b;
    }

    public final String c() {
        return this.f31862a;
    }

    public final boolean d() {
        return this.f31865d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof p)) {
            return false;
        }
        p pVar = (p) obj;
        return Intrinsics.c(this.f31862a, pVar.f31862a) && this.f31863b == pVar.f31863b && this.f31864c == pVar.f31864c && this.f31865d == pVar.f31865d;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [int] */
    /* JADX WARN: Type inference failed for: r1v3, types: [int] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5 */
    public int hashCode() {
        int iHashCode = ((((this.f31862a.hashCode() * 31) + this.f31863b) * 31) + this.f31864c) * 31;
        boolean z10 = this.f31865d;
        ?? r10 = z10;
        if (z10) {
            r10 = 1;
        }
        return iHashCode + r10;
    }

    public String toString() {
        return "ProcessDetails(processName=" + this.f31862a + ", pid=" + this.f31863b + ", importance=" + this.f31864c + ", isDefaultProcess=" + this.f31865d + ')';
    }
}
