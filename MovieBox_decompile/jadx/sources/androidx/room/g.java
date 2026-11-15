package androidx.room;

import kotlin.Unit;
import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.internal.Intrinsics;

public abstract class g {
    protected abstract void a(y3.e eVar, Object obj);

    protected abstract String b();

    public final void c(y3.b connection, Iterable iterable) throws Exception {
        Intrinsics.h(connection, "connection");
        if (iterable == null) {
            return;
        }
        y3.e eVarF0 = connection.F0(b());
        try {
            for (Object obj : iterable) {
                if (obj != null) {
                    a(eVarF0, obj);
                    eVarF0.C0();
                    eVarF0.reset();
                }
            }
            Unit unit = Unit.f64096a;
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

    public final void d(y3.b connection, Object obj) throws Exception {
        Intrinsics.h(connection, "connection");
        if (obj == null) {
            return;
        }
        y3.e eVarF0 = connection.F0(b());
        try {
            a(eVarF0, obj);
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

    public final long e(y3.b connection, Object obj) throws Exception {
        Intrinsics.h(connection, "connection");
        if (obj == null) {
            return -1L;
        }
        y3.e eVarF0 = connection.F0(b());
        try {
            a(eVarF0, obj);
            eVarF0.C0();
            AutoCloseableKt.a(eVarF0, null);
            return androidx.room.util.h.a(connection);
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
