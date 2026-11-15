package androidx.room;

import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.internal.Intrinsics;

public abstract class e {
    protected abstract void a(y3.e eVar, Object obj);

    protected abstract String b();

    public final int c(y3.b connection, Object obj) throws Exception {
        Intrinsics.h(connection, "connection");
        if (obj == null) {
            return 0;
        }
        y3.e eVarF0 = connection.F0(b());
        try {
            a(eVarF0, obj);
            eVarF0.C0();
            AutoCloseableKt.a(eVarF0, null);
            return androidx.room.util.h.b(connection);
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
