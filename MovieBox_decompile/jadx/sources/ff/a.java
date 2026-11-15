package ff;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class a {

    private final String f60158a;

    private final String f60159b;

    private final String f60160c;

    private final Integer f60161d;

    private final Integer f60162e;

    public a() {
        this(null, null, null, null, null, 31, null);
    }

    public final String a() {
        return this.f60160c;
    }

    public final Integer b() {
        return this.f60162e;
    }

    public final Integer c() {
        return this.f60161d;
    }

    public final String d() {
        return this.f60159b;
    }

    public final String e() {
        return this.f60158a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return Intrinsics.c(this.f60158a, aVar.f60158a) && Intrinsics.c(this.f60159b, aVar.f60159b) && Intrinsics.c(this.f60160c, aVar.f60160c) && Intrinsics.c(this.f60161d, aVar.f60161d) && Intrinsics.c(this.f60162e, aVar.f60162e);
    }

    public int hashCode() {
        String str = this.f60158a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f60159b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f60160c;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Integer num = this.f60161d;
        int iHashCode4 = (iHashCode3 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.f60162e;
        return iHashCode4 + (num2 != null ? num2.hashCode() : 0);
    }

    public String toString() {
        return "DialogInfo(title=" + this.f60158a + ", subtitle=" + this.f60159b + ", buttonText=" + this.f60160c + ", iconResId=" + this.f60161d + ", iconBgColorResId=" + this.f60162e + ")";
    }

    public a(String str, String str2, String str3, Integer num, Integer num2) {
        this.f60158a = str;
        this.f60159b = str2;
        this.f60160c = str3;
        this.f60161d = num;
        this.f60162e = num2;
    }

    public a(String str, String str2, String str3, Integer num, Integer num2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : str, (i10 & 2) != 0 ? null : str2, (i10 & 4) != 0 ? null : str3, (i10 & 8) != 0 ? null : num, (i10 & 16) != 0 ? null : num2);
    }
}
