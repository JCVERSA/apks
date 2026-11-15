package xr;

import kotlin.jvm.internal.Intrinsics;

public final class a {

    private final String f75381a;

    private final String f75382b;

    private final String f75383c;

    private final String f75384d;

    private final String f75385e;

    private final int f75386f;

    private final int f75387g;

    private final String f75388h;

    public a(String str, String subtitleResId, String str2, String str3, String str4, int i10, int i11, String str5) {
        Intrinsics.h(subtitleResId, "subtitleResId");
        this.f75381a = str;
        this.f75382b = subtitleResId;
        this.f75383c = str2;
        this.f75384d = str3;
        this.f75385e = str4;
        this.f75386f = i10;
        this.f75387g = i11;
        this.f75388h = str5;
    }

    public final int a() {
        return this.f75386f;
    }

    public final String b() {
        return this.f75388h;
    }

    public final int c() {
        return this.f75387g;
    }

    public final String d() {
        return this.f75385e;
    }

    public final String e() {
        return this.f75381a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return Intrinsics.c(this.f75381a, aVar.f75381a) && Intrinsics.c(this.f75382b, aVar.f75382b) && Intrinsics.c(this.f75383c, aVar.f75383c) && Intrinsics.c(this.f75384d, aVar.f75384d) && Intrinsics.c(this.f75385e, aVar.f75385e) && this.f75386f == aVar.f75386f && this.f75387g == aVar.f75387g && Intrinsics.c(this.f75388h, aVar.f75388h);
    }

    public final String f() {
        return this.f75383c;
    }

    public final String g() {
        return this.f75382b;
    }

    public final String h() {
        return this.f75384d;
    }

    public int hashCode() {
        String str = this.f75381a;
        int iHashCode = (((str == null ? 0 : str.hashCode()) * 31) + this.f75382b.hashCode()) * 31;
        String str2 = this.f75383c;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f75384d;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.f75385e;
        int iHashCode4 = (((((iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31) + this.f75386f) * 31) + this.f75387g) * 31;
        String str5 = this.f75388h;
        return iHashCode4 + (str5 != null ? str5.hashCode() : 0);
    }

    public String toString() {
        return "ShortTvSubDownloadBean(subjectId=" + this.f75381a + ", subtitleResId=" + this.f75382b + ", subjectName=" + this.f75383c + ", titleName=" + this.f75384d + ", shorTvId=" + this.f75385e + ", ep=" + this.f75386f + ", se=" + this.f75387g + ", ops=" + this.f75388h + ")";
    }
}
