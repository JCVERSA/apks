package y3;

import android.database.SQLException;
import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.internal.Intrinsics;

public abstract class a {
    public static final void a(b bVar, String sql) throws Exception {
        Intrinsics.h(bVar, "<this>");
        Intrinsics.h(sql, "sql");
        e eVarF0 = bVar.F0(sql);
        try {
            eVarF0.C0();
            AutoCloseableKt.a(eVarF0, null);
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                AutoCloseableKt.a(eVarF0, th2);
                throw th3;
            }
        }
    }

    public static final Void b(int i10, String str) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Error code: " + i10);
        if (str != null) {
            sb2.append(", message: " + str);
        }
        throw new SQLException(sb2.toString());
    }
}
