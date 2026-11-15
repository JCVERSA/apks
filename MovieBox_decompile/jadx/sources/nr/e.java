package nr;

import com.transsion.shorttv.bean.ShortTVItem;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class e extends k {

    private final String f67336a;

    private final int f67337b;

    private ShortTVItem f67338c;

    private int f67339d;

    public e(String str, int i10, ShortTVItem shortTVItem, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, i10, (i12 & 4) != 0 ? null : shortTVItem, (i12 & 8) != 0 ? 0 : i11);
    }

    public final String a() {
        return "shorttv_ad_" + this.f67336a + "_" + this.f67337b;
    }

    public final int b() {
        return this.f67339d;
    }

    public final int c() {
        return this.f67337b;
    }

    public final ShortTVItem d() {
        return this.f67338c;
    }

    public final String e() {
        return this.f67336a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!Intrinsics.c(e.class, obj != null ? obj.getClass() : null)) {
            return false;
        }
        Intrinsics.f(obj, "null cannot be cast to non-null type com.transsion.shorttv.bean.ShortTvEpisodeSelectItem");
        e eVar = (e) obj;
        return Intrinsics.c(this.f67336a, eVar.f67336a) && this.f67337b == eVar.f67337b;
    }

    public final String f() {
        return this.f67336a + "_" + this.f67337b + "short";
    }

    public final void g(int i10) {
        this.f67339d = i10;
    }

    public final void h(ShortTVItem shortTVItem) {
        this.f67338c = shortTVItem;
    }

    public int hashCode() {
        return (this.f67336a.hashCode() * 31) + this.f67337b;
    }

    public String toString() {
        return "ShortTvEpisodeSelectItem(subjectId=" + this.f67336a + ", ep=" + this.f67337b + ", item=" + this.f67338c + ", downloadStatus=" + this.f67339d + ")";
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(String subjectId, int i10, ShortTVItem shortTVItem, int i11) {
        super(null);
        Intrinsics.h(subjectId, "subjectId");
        this.f67336a = subjectId;
        this.f67337b = i10;
        this.f67338c = shortTVItem;
        this.f67339d = i11;
    }
}
