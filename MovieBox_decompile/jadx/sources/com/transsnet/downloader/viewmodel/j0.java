package com.transsnet.downloader.viewmodel;

import kotlin.jvm.internal.Intrinsics;

public final class j0 {

    private int f57868a;

    private String f57869b;

    private String f57870c;

    private String f57871d;

    private Long f57872e;

    private Long f57873f;

    private Long f57874g;

    private int f57875h;

    private int f57876i;

    public j0(int i10, String str, String str2, String str3, Long l10, Long l11, Long l12, int i11, int i12) {
        this.f57868a = i10;
        this.f57869b = str;
        this.f57870c = str2;
        this.f57871d = str3;
        this.f57872e = l10;
        this.f57873f = l11;
        this.f57874g = l12;
        this.f57875h = i11;
        this.f57876i = i12;
    }

    public final Long a() {
        return this.f57874g;
    }

    public final int b() {
        return this.f57876i;
    }

    public final int c() {
        return this.f57868a;
    }

    public final String d() {
        return this.f57870c;
    }

    public final String e() {
        return this.f57869b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof j0)) {
            return false;
        }
        j0 j0Var = (j0) obj;
        return this.f57868a == j0Var.f57868a && Intrinsics.c(this.f57869b, j0Var.f57869b) && Intrinsics.c(this.f57870c, j0Var.f57870c) && Intrinsics.c(this.f57871d, j0Var.f57871d) && Intrinsics.c(this.f57872e, j0Var.f57872e) && Intrinsics.c(this.f57873f, j0Var.f57873f) && Intrinsics.c(this.f57874g, j0Var.f57874g) && this.f57875h == j0Var.f57875h && this.f57876i == j0Var.f57876i;
    }

    public final int f() {
        return this.f57875h;
    }

    public int hashCode() {
        int i10 = this.f57868a * 31;
        String str = this.f57869b;
        int iHashCode = (i10 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f57870c;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f57871d;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Long l10 = this.f57872e;
        int iHashCode4 = (iHashCode3 + (l10 == null ? 0 : l10.hashCode())) * 31;
        Long l11 = this.f57873f;
        int iHashCode5 = (iHashCode4 + (l11 == null ? 0 : l11.hashCode())) * 31;
        Long l12 = this.f57874g;
        return ((((iHashCode5 + (l12 != null ? l12.hashCode() : 0)) * 31) + this.f57875h) * 31) + this.f57876i;
    }

    public String toString() {
        return "Video(id=" + this.f57868a + ", path=" + this.f57869b + ", name=" + this.f57870c + ", resolution=" + this.f57871d + ", size=" + this.f57872e + ", date=" + this.f57873f + ", duration=" + this.f57874g + ", width=" + this.f57875h + ", height=" + this.f57876i + ")";
    }
}
