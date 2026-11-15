package yw;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class c {

    private final String f76410a;

    private final int f76411b;

    private boolean f76412c;

    private boolean f76413d;

    private boolean f76414e;

    public c(String subjectId, int i10, boolean z10, boolean z11, boolean z12) {
        Intrinsics.h(subjectId, "subjectId");
        this.f76410a = subjectId;
        this.f76411b = i10;
        this.f76412c = z10;
        this.f76413d = z11;
        this.f76414e = z12;
    }

    public final int a() {
        return this.f76411b;
    }

    public final boolean b() {
        return this.f76414e;
    }

    public final boolean c() {
        return this.f76412c;
    }

    public final boolean d() {
        return this.f76413d;
    }

    public final void e(boolean z10) {
        this.f76414e = z10;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return Intrinsics.c(this.f76410a, cVar.f76410a) && this.f76411b == cVar.f76411b && this.f76412c == cVar.f76412c && this.f76413d == cVar.f76413d && this.f76414e == cVar.f76414e;
    }

    public final void f(boolean z10) {
        this.f76412c = z10;
    }

    public final void g(boolean z10) {
        this.f76413d = z10;
    }

    public int hashCode() {
        return (((((((this.f76410a.hashCode() * 31) + this.f76411b) * 31) + androidx.compose.foundation.e.a(this.f76412c)) * 31) + androidx.compose.foundation.e.a(this.f76413d)) * 31) + androidx.compose.foundation.e.a(this.f76414e);
    }

    public String toString() {
        return "DownloadShortTVEpisodeSelectItem(subjectId=" + this.f76410a + ", position=" + this.f76411b + ", isFree=" + this.f76412c + ", isSelect=" + this.f76413d + ", isDownload=" + this.f76414e + ")";
    }

    public c(String str, int i10, boolean z10, boolean z11, boolean z12, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, i10, (i11 & 4) != 0 ? false : z10, (i11 & 8) != 0 ? false : z11, (i11 & 16) != 0 ? false : z12);
    }
}
