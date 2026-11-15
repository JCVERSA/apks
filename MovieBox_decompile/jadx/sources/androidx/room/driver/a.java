package androidx.room.driver;

import java.io.IOException;
import kotlin.jvm.internal.Intrinsics;

public final class a implements y3.b {

    private final z3.d f14325a;

    public a(z3.d db2) {
        Intrinsics.h(db2, "db");
        this.f14325a = db2;
    }

    @Override
    public void close() throws IOException {
        this.f14325a.close();
    }

    public final z3.d d() {
        return this.f14325a;
    }

    @Override
    public d F0(String sql) {
        Intrinsics.h(sql, "sql");
        return d.f14328d.a(this.f14325a, sql);
    }
}
