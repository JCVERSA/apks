package nr;

import com.transsion.shorttv.bean.ShortTVItem;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class d {

    private final String f67331a;

    private final int f67332b;

    private boolean f67333c;

    private boolean f67334d;

    private ShortTVItem f67335e;

    public d(String subjectId, int i10, boolean z10, boolean z11, ShortTVItem shortTVItem) {
        Intrinsics.h(subjectId, "subjectId");
        this.f67331a = subjectId;
        this.f67332b = i10;
        this.f67333c = z10;
        this.f67334d = z11;
        this.f67335e = shortTVItem;
    }

    public final ShortTVItem a() {
        return this.f67335e;
    }

    public final int b() {
        return this.f67332b;
    }

    public final boolean c() {
        return this.f67334d;
    }

    public final boolean d() {
        return this.f67333c;
    }

    public final void e(boolean z10) {
        this.f67334d = z10;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return Intrinsics.c(this.f67331a, dVar.f67331a) && this.f67332b == dVar.f67332b && this.f67333c == dVar.f67333c && this.f67334d == dVar.f67334d && Intrinsics.c(this.f67335e, dVar.f67335e);
    }

    public final void f(ShortTVItem shortTVItem) {
        this.f67335e = shortTVItem;
    }

    public final void g(boolean z10) {
        this.f67333c = z10;
    }

    public int hashCode() {
        int iHashCode = ((((((this.f67331a.hashCode() * 31) + this.f67332b) * 31) + androidx.compose.foundation.e.a(this.f67333c)) * 31) + androidx.compose.foundation.e.a(this.f67334d)) * 31;
        ShortTVItem shortTVItem = this.f67335e;
        return iHashCode + (shortTVItem == null ? 0 : shortTVItem.hashCode());
    }

    public String toString() {
        return "ShortTvDownloadEpisodeSelectItem(subjectId=" + this.f67331a + ", position=" + this.f67332b + ", isSelect=" + this.f67333c + ", isDownload=" + this.f67334d + ", episodeItem=" + this.f67335e + ")";
    }

    public d(String str, int i10, boolean z10, boolean z11, ShortTVItem shortTVItem, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, i10, (i11 & 4) != 0 ? false : z10, (i11 & 8) != 0 ? false : z11, (i11 & 16) != 0 ? null : shortTVItem);
    }
}
