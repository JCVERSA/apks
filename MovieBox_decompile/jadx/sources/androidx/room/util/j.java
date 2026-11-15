package androidx.room.util;

import java.util.ArrayList;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

abstract class j {
    public static final int a(y3.e eVar, String name) {
        Intrinsics.h(eVar, "<this>");
        Intrinsics.h(name, "name");
        int columnCount = eVar.getColumnCount();
        for (int i10 = 0; i10 < columnCount; i10++) {
            if (Intrinsics.c(name, eVar.getColumnName(i10))) {
                return i10;
            }
        }
        return -1;
    }

    public static final int b(y3.e stmt, String name) {
        Intrinsics.h(stmt, "stmt");
        Intrinsics.h(name, "name");
        int iA = i.a(stmt, name);
        if (iA >= 0) {
            return iA;
        }
        int columnCount = stmt.getColumnCount();
        ArrayList arrayList = new ArrayList(columnCount);
        for (int i10 = 0; i10 < columnCount; i10++) {
            arrayList.add(stmt.getColumnName(i10));
        }
        throw new IllegalArgumentException("Column '" + name + "' does not exist. Available columns: [" + CollectionsKt.s0(arrayList, null, null, null, 0, null, null, 63, null) + ']');
    }
}
