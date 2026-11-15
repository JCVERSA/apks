package androidx.room.coroutines;

import kotlin.jvm.internal.Intrinsics;

public abstract class h {
    public static final ConnectionPool a(y3.c driver, String fileName, int i10, int i11) {
        Intrinsics.h(driver, "driver");
        Intrinsics.h(fileName, "fileName");
        return new ConnectionPoolImpl(driver, fileName, i10, i11);
    }

    public static final ConnectionPool b(y3.c driver, String fileName) {
        Intrinsics.h(driver, "driver");
        Intrinsics.h(fileName, "fileName");
        return new ConnectionPoolImpl(driver, fileName);
    }
}
