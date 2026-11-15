package androidx.room.util;

import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

abstract class c {
    public static final void a(y3.b connection) {
        Intrinsics.h(connection, "connection");
        List listC = CollectionsKt.c();
        y3.e eVarF0 = connection.F0("SELECT name FROM sqlite_master WHERE type = 'trigger'");
        while (eVarF0.C0()) {
            try {
                listC.add(eVarF0.q0(0));
            } catch (Throwable th2) {
                try {
                    throw th2;
                } catch (Throwable th3) {
                    AutoCloseableKt.a(eVarF0, th2);
                    throw th3;
                }
            }
        }
        Unit unit = Unit.f64096a;
        AutoCloseableKt.a(eVarF0, null);
        for (String str : CollectionsKt.a(listC)) {
            if (StringsKt.W(str, "room_fts_content_sync_", false, 2, null)) {
                y3.a.a(connection, "DROP TRIGGER IF EXISTS " + str);
            }
        }
    }
}
