package vx;

import androidx.collection.s;
import androidx.compose.animation.core.r;
import kotlin.jvm.internal.Intrinsics;

public final class d {

    private final int f73854a;

    private final String f73855b;

    private final String f73856c;

    private final String f73857d;

    private final int f73858e;

    private final long f73859f;

    private final double f73860g;

    private final int f73861h;

    private final int f73862i;

    private final int f73863j;

    public d(int i10, String str, String codecName, String str2, int i11, long j10, double d10, int i12, int i13, int i14) {
        Intrinsics.h(codecName, "codecName");
        this.f73854a = i10;
        this.f73855b = str;
        this.f73856c = codecName;
        this.f73857d = str2;
        this.f73858e = i11;
        this.f73859f = j10;
        this.f73860g = d10;
        this.f73861h = i12;
        this.f73862i = i13;
        this.f73863j = i14;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return this.f73854a == dVar.f73854a && Intrinsics.c(this.f73855b, dVar.f73855b) && Intrinsics.c(this.f73856c, dVar.f73856c) && Intrinsics.c(this.f73857d, dVar.f73857d) && this.f73858e == dVar.f73858e && this.f73859f == dVar.f73859f && Double.compare(this.f73860g, dVar.f73860g) == 0 && this.f73861h == dVar.f73861h && this.f73862i == dVar.f73862i && this.f73863j == dVar.f73863j;
    }

    public int hashCode() {
        int i10 = this.f73854a * 31;
        String str = this.f73855b;
        int iHashCode = (((i10 + (str == null ? 0 : str.hashCode())) * 31) + this.f73856c.hashCode()) * 31;
        String str2 = this.f73857d;
        return ((((((((((((iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31) + this.f73858e) * 31) + s.a(this.f73859f)) * 31) + r.a(this.f73860g)) * 31) + this.f73861h) * 31) + this.f73862i) * 31) + this.f73863j;
    }

    public String toString() {
        return "VideoStream(index=" + this.f73854a + ", title=" + this.f73855b + ", codecName=" + this.f73856c + ", language=" + this.f73857d + ", disposition=" + this.f73858e + ", bitRate=" + this.f73859f + ", frameRate=" + this.f73860g + ", frameWidth=" + this.f73861h + ", frameHeight=" + this.f73862i + ", rotation=" + this.f73863j + ")";
    }
}
