package com.transsion.player.longvideo.helper;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.apache.tools.zip.UnixStat;

public final class b {

    private final String f46081a;

    private final String f46082b;

    private final String f46083c;

    private final String f46084d;

    private final String f46085e;

    private final String f46086f;

    private final String f46087g;

    private final String f46088h;

    private final int f46089i;

    private final int f46090j;

    private final int f46091k;

    private final int f46092l;

    public b() {
        this(null, null, null, null, null, null, null, null, 0, 0, 0, 0, UnixStat.PERM_MASK, null);
    }

    public final String a() {
        return this.f46086f;
    }

    public final String b() {
        return this.f46087g;
    }

    public final int c() {
        return this.f46091k;
    }

    public final int d() {
        return this.f46090j;
    }

    public final String e() {
        return this.f46083c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return Intrinsics.c(this.f46081a, bVar.f46081a) && Intrinsics.c(this.f46082b, bVar.f46082b) && Intrinsics.c(this.f46083c, bVar.f46083c) && Intrinsics.c(this.f46084d, bVar.f46084d) && Intrinsics.c(this.f46085e, bVar.f46085e) && Intrinsics.c(this.f46086f, bVar.f46086f) && Intrinsics.c(this.f46087g, bVar.f46087g) && Intrinsics.c(this.f46088h, bVar.f46088h) && this.f46089i == bVar.f46089i && this.f46090j == bVar.f46090j && this.f46091k == bVar.f46091k && this.f46092l == bVar.f46092l;
    }

    public final String f() {
        return this.f46082b;
    }

    public final String g() {
        return this.f46081a;
    }

    public final String h() {
        return this.f46088h;
    }

    public int hashCode() {
        String str = this.f46081a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f46082b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f46083c;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.f46084d;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.f46085e;
        int iHashCode5 = (iHashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.f46086f;
        int iHashCode6 = (iHashCode5 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.f46087g;
        int iHashCode7 = (iHashCode6 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.f46088h;
        return ((((((((iHashCode7 + (str8 != null ? str8.hashCode() : 0)) * 31) + this.f46089i) * 31) + this.f46090j) * 31) + this.f46091k) * 31) + this.f46092l;
    }

    public final int i() {
        return this.f46089i;
    }

    public final int j() {
        return this.f46092l;
    }

    public final String k() {
        return this.f46085e;
    }

    public final String l() {
        return this.f46084d;
    }

    public String toString() {
        return "DataOperator(layoutTitle=" + this.f46081a + ", layoutTips=" + this.f46082b + ", layoutButton=" + this.f46083c + ", title=" + this.f46084d + ", tips=" + this.f46085e + ", button=" + this.f46086f + ", buttonIcon=" + this.f46087g + ", link=" + this.f46088h + ", normalDelay=" + this.f46089i + ", fullscreenDelay=" + this.f46090j + ", displayInterval=" + this.f46091k + ", showDuration=" + this.f46092l + ")";
    }

    public b(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, int i10, int i11, int i12, int i13) {
        this.f46081a = str;
        this.f46082b = str2;
        this.f46083c = str3;
        this.f46084d = str4;
        this.f46085e = str5;
        this.f46086f = str6;
        this.f46087g = str7;
        this.f46088h = str8;
        this.f46089i = i10;
        this.f46090j = i11;
        this.f46091k = i12;
        this.f46092l = i13;
    }

    public b(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, int i10, int i11, int i12, int i13, int i14, DefaultConstructorMarker defaultConstructorMarker) {
        this((i14 & 1) != 0 ? null : str, (i14 & 2) != 0 ? null : str2, (i14 & 4) != 0 ? null : str3, (i14 & 8) != 0 ? null : str4, (i14 & 16) != 0 ? null : str5, (i14 & 32) != 0 ? null : str6, (i14 & 64) != 0 ? null : str7, (i14 & 128) == 0 ? str8 : null, (i14 & 256) != 0 ? 3 : i10, (i14 & 512) == 0 ? i11 : 3, (i14 & 1024) != 0 ? 24 : i12, (i14 & 2048) != 0 ? 10 : i13);
    }
}
