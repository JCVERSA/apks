package androidx.room.util;

import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.internal.Intrinsics;

public abstract class h {
    public static final long a(y3.b connection) throws Exception {
        Intrinsics.h(connection, "connection");
        if (b(connection) == 0) {
            return -1L;
        }
        y3.e eVarF0 = connection.F0("SELECT last_insert_rowid()");
        try {
            eVarF0.C0();
            long j10 = eVarF0.getLong(0);
            AutoCloseableKt.a(eVarF0, null);
            return j10;
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                AutoCloseableKt.a(eVarF0, th2);
                throw th3;
            }
        }
    }

    public static final int b(y3.b connection) throws Exception {
        Intrinsics.h(connection, "connection");
        y3.e eVarF0 = connection.F0("SELECT changes()");
        try {
            eVarF0.C0();
            int i10 = (int) eVarF0.getLong(0);
            AutoCloseableKt.a(eVarF0, null);
            return i10;
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                AutoCloseableKt.a(eVarF0, th2);
                throw th3;
            }
        }
    }
}
