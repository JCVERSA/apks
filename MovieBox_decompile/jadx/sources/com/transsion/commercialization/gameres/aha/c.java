package com.transsion.commercialization.gameres.aha;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class c {

    private String f42609a;

    private String f42610b;

    private Double f42611c;

    private String f42612d;

    private String f42613e;

    private String f42614f;

    public c() {
        this(null, null, null, null, null, null, 63, null);
    }

    public final String a() {
        return this.f42614f;
    }

    public final String b() {
        return this.f42613e;
    }

    public final String c() {
        return this.f42610b;
    }

    public final String d() {
        return this.f42612d;
    }

    public final Double e() {
        return this.f42611c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return Intrinsics.c(this.f42609a, cVar.f42609a) && Intrinsics.c(this.f42610b, cVar.f42610b) && Intrinsics.c(this.f42611c, cVar.f42611c) && Intrinsics.c(this.f42612d, cVar.f42612d) && Intrinsics.c(this.f42613e, cVar.f42613e) && Intrinsics.c(this.f42614f, cVar.f42614f);
    }

    public final String f() {
        return this.f42609a;
    }

    public int hashCode() {
        String str = this.f42609a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f42610b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        Double d10 = this.f42611c;
        int iHashCode3 = (iHashCode2 + (d10 == null ? 0 : d10.hashCode())) * 31;
        String str3 = this.f42612d;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.f42613e;
        int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.f42614f;
        return iHashCode5 + (str5 != null ? str5.hashCode() : 0);
    }

    public String toString() {
        return "AHAGameResInfo(title=" + this.f42609a + ", icon=" + this.f42610b + ", star=" + this.f42611c + ", size=" + this.f42612d + ", category=" + this.f42613e + ", appLink=" + this.f42614f + ")";
    }

    public c(String str, String str2, Double d10, String str3, String str4, String str5) {
        this.f42609a = str;
        this.f42610b = str2;
        this.f42611c = d10;
        this.f42612d = str3;
        this.f42613e = str4;
        this.f42614f = str5;
    }

    public c(String str, String str2, Double d10, String str3, String str4, String str5, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : str, (i10 & 2) != 0 ? null : str2, (i10 & 4) != 0 ? null : d10, (i10 & 8) != 0 ? null : str3, (i10 & 16) != 0 ? null : str4, (i10 & 32) != 0 ? null : str5);
    }
}
