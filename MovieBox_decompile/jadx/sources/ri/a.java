package ri;

import android.database.Cursor;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import z3.d;

public abstract class a {
    public static final boolean b(d dVar, String str, String str2) {
        Cursor cursorM0 = dVar.m0("PRAGMA table_info(" + str + ")");
        try {
            int columnIndex = cursorM0.getColumnIndex("name");
            if (columnIndex < 0) {
                CloseableKt.a(cursorM0, null);
                return false;
            }
            while (cursorM0.moveToNext()) {
                if (Intrinsics.c(cursorM0.getString(columnIndex), str2)) {
                    CloseableKt.a(cursorM0, null);
                    return true;
                }
            }
            Unit unit = Unit.f64096a;
            CloseableKt.a(cursorM0, null);
            return false;
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                CloseableKt.a(cursorM0, th2);
                throw th3;
            }
        }
    }
}
