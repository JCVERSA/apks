package bl;

import androidx.compose.foundation.e;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class a {

    private String f15840a;

    private String f15841b;

    private String f15842c;

    private boolean f15843d;

    private String f15844e;

    public a(String filterValue, String filterName, String filterType, boolean z10, String str) {
        Intrinsics.h(filterValue, "filterValue");
        Intrinsics.h(filterName, "filterName");
        Intrinsics.h(filterType, "filterType");
        this.f15840a = filterValue;
        this.f15841b = filterName;
        this.f15842c = filterType;
        this.f15843d = z10;
        this.f15844e = str;
    }

    public final String a() {
        return this.f15841b;
    }

    public final String b() {
        return this.f15842c;
    }

    public final String c() {
        return this.f15840a;
    }

    public final boolean d() {
        return this.f15843d;
    }

    public final void e(boolean z10) {
        this.f15843d = z10;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return Intrinsics.c(this.f15840a, aVar.f15840a) && Intrinsics.c(this.f15841b, aVar.f15841b) && Intrinsics.c(this.f15842c, aVar.f15842c) && this.f15843d == aVar.f15843d && Intrinsics.c(this.f15844e, aVar.f15844e);
    }

    public int hashCode() {
        int iHashCode = ((((((this.f15840a.hashCode() * 31) + this.f15841b.hashCode()) * 31) + this.f15842c.hashCode()) * 31) + e.a(this.f15843d)) * 31;
        String str = this.f15844e;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public String toString() {
        return "FilterItem(filterValue=" + this.f15840a + ", filterName=" + this.f15841b + ", filterType=" + this.f15842c + ", isSelected=" + this.f15843d + ", filterRangeValue=" + this.f15844e + ")";
    }

    public a(String str, String str2, String str3, boolean z10, String str4, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, z10, (i10 & 16) != 0 ? null : str4);
    }
}
