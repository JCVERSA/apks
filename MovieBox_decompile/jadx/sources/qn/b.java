package qn;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class b {

    private final String f69900a;

    private final String f69901b;

    private final String f69902c;

    private final int f69903d;

    private final int f69904e;

    private final int f69905f;

    private final int f69906g;

    private final String f69907h;

    private final int f69908i;

    private final int f69909j;

    private final float f69910k;

    private final int f69911l;

    private final float f69912m;

    public b() {
        this(null, null, null, 0, 0, 0, 0, null, 0, 0, 0.0f, 0, 0.0f, 8191, null);
    }

    public final int a() {
        return this.f69906g;
    }

    public final String b() {
        return this.f69907h;
    }

    public final int c() {
        return this.f69909j;
    }

    public final String d() {
        return this.f69900a;
    }

    public final int e() {
        return this.f69905f;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return Intrinsics.c(this.f69900a, bVar.f69900a) && Intrinsics.c(this.f69901b, bVar.f69901b) && Intrinsics.c(this.f69902c, bVar.f69902c) && this.f69903d == bVar.f69903d && this.f69904e == bVar.f69904e && this.f69905f == bVar.f69905f && this.f69906g == bVar.f69906g && Intrinsics.c(this.f69907h, bVar.f69907h) && this.f69908i == bVar.f69908i && this.f69909j == bVar.f69909j && Float.compare(this.f69910k, bVar.f69910k) == 0 && this.f69911l == bVar.f69911l && Float.compare(this.f69912m, bVar.f69912m) == 0;
    }

    public final int f() {
        return this.f69908i;
    }

    public int hashCode() {
        String str = this.f69900a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f69901b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f69902c;
        int iHashCode3 = (((((((((iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31) + this.f69903d) * 31) + this.f69904e) * 31) + this.f69905f) * 31) + this.f69906g) * 31;
        String str4 = this.f69907h;
        return ((((((((((iHashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31) + this.f69908i) * 31) + this.f69909j) * 31) + Float.floatToIntBits(this.f69910k)) * 31) + this.f69911l) * 31) + Float.floatToIntBits(this.f69912m);
    }

    public String toString() {
        return "TnFormat(id=" + this.f69900a + ", label=" + this.f69901b + ", language=" + this.f69902c + ", selectionFlags=" + this.f69903d + ", averageBitrate=" + this.f69904e + ", peakBitrate=" + this.f69905f + ", bitrate=" + this.f69906g + ", codecs=" + this.f69907h + ", width=" + this.f69908i + ", height=" + this.f69909j + ", frameRate=" + this.f69910k + ", rotationDegrees=" + this.f69911l + ", pixelWidthHeightRatio=" + this.f69912m + ")";
    }

    public b(String str, String str2, String str3, int i10, int i11, int i12, int i13, String str4, int i14, int i15, float f10, int i16, float f11) {
        this.f69900a = str;
        this.f69901b = str2;
        this.f69902c = str3;
        this.f69903d = i10;
        this.f69904e = i11;
        this.f69905f = i12;
        this.f69906g = i13;
        this.f69907h = str4;
        this.f69908i = i14;
        this.f69909j = i15;
        this.f69910k = f10;
        this.f69911l = i16;
        this.f69912m = f11;
    }

    public b(String str, String str2, String str3, int i10, int i11, int i12, int i13, String str4, int i14, int i15, float f10, int i16, float f11, int i17, DefaultConstructorMarker defaultConstructorMarker) {
        this((i17 & 1) != 0 ? null : str, (i17 & 2) != 0 ? null : str2, (i17 & 4) != 0 ? null : str3, (i17 & 8) != 0 ? 0 : i10, (i17 & 16) != 0 ? 0 : i11, (i17 & 32) != 0 ? 0 : i12, (i17 & 64) != 0 ? 0 : i13, (i17 & 128) == 0 ? str4 : null, (i17 & 256) != 0 ? 0 : i14, (i17 & 512) != 0 ? 0 : i15, (i17 & 1024) != 0 ? 0.0f : f10, (i17 & 2048) == 0 ? i16 : 0, (i17 & 4096) == 0 ? f11 : 0.0f);
    }
}
