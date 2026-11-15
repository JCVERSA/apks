package rs;

import androidx.compose.foundation.e;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class c {

    private final String f71327a;

    private final int f71328b;

    private boolean f71329c;

    private boolean f71330d;

    private boolean f71331e;

    public c(String subjectId, int i10, boolean z10, boolean z11, boolean z12) {
        Intrinsics.h(subjectId, "subjectId");
        this.f71327a = subjectId;
        this.f71328b = i10;
        this.f71329c = z10;
        this.f71330d = z11;
        this.f71331e = z12;
    }

    public final int a() {
        return this.f71328b;
    }

    public final boolean b() {
        return this.f71331e;
    }

    public final boolean c() {
        return this.f71329c;
    }

    public final boolean d() {
        return this.f71330d;
    }

    public final void e(boolean z10) {
        this.f71329c = z10;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return Intrinsics.c(this.f71327a, cVar.f71327a) && this.f71328b == cVar.f71328b && this.f71329c == cVar.f71329c && this.f71330d == cVar.f71330d && this.f71331e == cVar.f71331e;
    }

    public final void f(boolean z10) {
        this.f71330d = z10;
    }

    public int hashCode() {
        return (((((((this.f71327a.hashCode() * 31) + this.f71328b) * 31) + e.a(this.f71329c)) * 31) + e.a(this.f71330d)) * 31) + e.a(this.f71331e);
    }

    public String toString() {
        return "ShortTvDownloadEpisodeSelectItem(subjectId=" + this.f71327a + ", position=" + this.f71328b + ", isFree=" + this.f71329c + ", isSelect=" + this.f71330d + ", isDownload=" + this.f71331e + ")";
    }

    public c(String str, int i10, boolean z10, boolean z11, boolean z12, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, i10, (i11 & 4) != 0 ? false : z10, (i11 & 8) != 0 ? false : z11, (i11 & 16) != 0 ? false : z12);
    }
}
