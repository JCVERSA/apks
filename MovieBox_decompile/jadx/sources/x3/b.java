package x3;

import kotlin.NotImplementedError;
import kotlin.jvm.internal.Intrinsics;
import z3.d;

public abstract class b {

    public final int f75069a;

    public final int f75070b;

    public b(int i10, int i11) {
        this.f75069a = i10;
        this.f75070b = i11;
    }

    public void a(y3.b connection) {
        Intrinsics.h(connection, "connection");
        if (!(connection instanceof androidx.room.driver.a)) {
            throw new NotImplementedError("Migration functionality with a provided SQLiteDriver requires overriding the migrate(SQLiteConnection) function.");
        }
        b(((androidx.room.driver.a) connection).d());
    }

    public abstract void b(d dVar);
}
