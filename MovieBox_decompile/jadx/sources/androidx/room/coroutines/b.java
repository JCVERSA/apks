package androidx.room.coroutines;

import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

public final class b implements ConnectionPool {

    private final y3.c f14304a;

    private final String f14305b;

    private final Lazy f14306c;

    public b(y3.c driver, String fileName) {
        Intrinsics.h(driver, "driver");
        Intrinsics.h(fileName, "fileName");
        this.f14304a = driver;
        this.f14305b = fileName;
        this.f14306c = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return b.d(this.f14303a);
            }
        });
    }

    public static final AndroidSQLiteDriverPooledConnection d(b bVar) {
        y3.b bVarOpen = bVar.f14304a.open(bVar.f14305b);
        Intrinsics.f(bVarOpen, "null cannot be cast to non-null type androidx.sqlite.driver.AndroidSQLiteConnection");
        return new AndroidSQLiteDriverPooledConnection((b4.a) bVarOpen);
    }

    private final AndroidSQLiteDriverPooledConnection h() {
        return (AndroidSQLiteDriverPooledConnection) this.f14306c.getValue();
    }

    @Override
    public void close() {
        h().f().close();
    }

    @Override
    public Object e(boolean z10, Function2 function2, Continuation continuation) {
        return function2.invoke(h(), continuation);
    }
}
