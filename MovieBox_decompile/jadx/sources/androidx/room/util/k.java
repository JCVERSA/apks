package androidx.room.util;

import android.os.Build;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

abstract class k {
    public static final int a(y3.e eVar, String name) {
        Intrinsics.h(eVar, "<this>");
        Intrinsics.h(name, "name");
        int iB = i.b(eVar, name);
        if (iB >= 0) {
            return iB;
        }
        int iB2 = i.b(eVar, '`' + name + '`');
        return iB2 >= 0 ? iB2 : b(eVar, name);
    }

    private static final int b(y3.e eVar, String str) {
        if (Build.VERSION.SDK_INT <= 25 && str.length() != 0) {
            int columnCount = eVar.getColumnCount();
            String str2 = '.' + str;
            String str3 = '.' + str + '`';
            for (int i10 = 0; i10 < columnCount; i10++) {
                String columnName = eVar.getColumnName(i10);
                if (columnName.length() >= str.length() + 2) {
                    if (StringsKt.G(columnName, str2, false, 2, null)) {
                        return i10;
                    }
                    if (columnName.charAt(0) == '`' && StringsKt.G(columnName, str3, false, 2, null)) {
                        return i10;
                    }
                }
            }
        }
        return -1;
    }
}
