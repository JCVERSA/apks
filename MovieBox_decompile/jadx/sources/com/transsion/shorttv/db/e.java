package com.transsion.shorttv.db;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

public final class e {

    private String f51014a;

    private String f51015b;

    /* JADX WARN: Multi-variable type inference failed */
    public e() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public final String a() {
        return this.f51014a;
    }

    public final String b() {
        return this.f51015b;
    }

    public final Set c() {
        if (StringsKt.q0(this.f51015b)) {
            return new LinkedHashSet();
        }
        List listS0 = StringsKt.S0(this.f51015b, new String[]{","}, false, 0, 6, null);
        ArrayList arrayList = new ArrayList();
        Iterator it = listS0.iterator();
        while (it.hasNext()) {
            Integer numV = StringsKt.v(StringsKt.n1((String) it.next()).toString());
            if (numV != null) {
                arrayList.add(numV);
            }
        }
        return CollectionsKt.V0(arrayList);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return Intrinsics.c(this.f51014a, eVar.f51014a) && Intrinsics.c(this.f51015b, eVar.f51015b);
    }

    public int hashCode() {
        return (this.f51014a.hashCode() * 31) + this.f51015b.hashCode();
    }

    public String toString() {
        return "ShortTvAdUnlockStateBean(subjectId=" + this.f51014a + ", unlockedEps=" + this.f51015b + ")";
    }

    public e(String subjectId, String unlockedEps) {
        Intrinsics.h(subjectId, "subjectId");
        Intrinsics.h(unlockedEps, "unlockedEps");
        this.f51014a = subjectId;
        this.f51015b = unlockedEps;
    }

    public e(String str, String str2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? "" : str, (i10 & 2) != 0 ? "" : str2);
    }
}
