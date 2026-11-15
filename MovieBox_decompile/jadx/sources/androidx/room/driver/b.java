package androidx.room.driver;

import androidx.room.coroutines.ConnectionPool;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

public final class b implements ConnectionPool {

    private final c f14326a;

    public b(c supportDriver) {
        Intrinsics.h(supportDriver, "supportDriver");
        this.f14326a = supportDriver;
    }

    private final SupportSQLitePooledConnection d() {
        String databaseName = this.f14326a.a().getDatabaseName();
        if (databaseName == null) {
            databaseName = ":memory:";
        }
        return new SupportSQLitePooledConnection(this.f14326a.open(databaseName));
    }

    @Override
    public void close() {
        this.f14326a.a().close();
    }

    @Override
    public Object e(boolean z10, Function2 function2, Continuation continuation) {
        return function2.invoke(d(), continuation);
    }

    public final c h() {
        return this.f14326a;
    }
}
