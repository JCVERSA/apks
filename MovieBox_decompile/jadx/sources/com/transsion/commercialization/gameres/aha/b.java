package com.transsion.commercialization.gameres.aha;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class b {

    private Integer f42605a;

    private String f42606b;

    private Long f42607c;

    private c f42608d;

    public b() {
        this(null, null, null, null, 15, null);
    }

    public final Integer a() {
        return this.f42605a;
    }

    public final c b() {
        return this.f42608d;
    }

    public final String c() {
        return this.f42606b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return Intrinsics.c(this.f42605a, bVar.f42605a) && Intrinsics.c(this.f42606b, bVar.f42606b) && Intrinsics.c(this.f42607c, bVar.f42607c) && Intrinsics.c(this.f42608d, bVar.f42608d);
    }

    public int hashCode() {
        Integer num = this.f42605a;
        int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
        String str = this.f42606b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        Long l10 = this.f42607c;
        int iHashCode3 = (iHashCode2 + (l10 == null ? 0 : l10.hashCode())) * 31;
        c cVar = this.f42608d;
        return iHashCode3 + (cVar != null ? cVar.hashCode() : 0);
    }

    public String toString() {
        return "AHAGameResDto(code=" + this.f42605a + ", message=" + this.f42606b + ", timestamp=" + this.f42607c + ", data=" + this.f42608d + ")";
    }

    public b(Integer num, String str, Long l10, c cVar) {
        this.f42605a = num;
        this.f42606b = str;
        this.f42607c = l10;
        this.f42608d = cVar;
    }

    public b(Integer num, String str, Long l10, c cVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : num, (i10 & 2) != 0 ? null : str, (i10 & 4) != 0 ? null : l10, (i10 & 8) != 0 ? null : cVar);
    }
}
