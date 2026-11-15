package a4;

import android.database.sqlite.SQLiteProgram;
import kotlin.jvm.internal.Intrinsics;

public class i implements z3.f {

    private final SQLiteProgram f133a;

    public i(SQLiteProgram delegate) {
        Intrinsics.h(delegate, "delegate");
        this.f133a = delegate;
    }

    @Override
    public void V(int i10, String value) {
        Intrinsics.h(value, "value");
        this.f133a.bindString(i10, value);
    }

    @Override
    public void a(int i10, double d10) {
        this.f133a.bindDouble(i10, d10);
    }

    @Override
    public void c(int i10, long j10) {
        this.f133a.bindLong(i10, j10);
    }

    @Override
    public void close() {
        this.f133a.close();
    }

    @Override
    public void g(int i10) {
        this.f133a.bindNull(i10);
    }

    @Override
    public void k0(int i10, byte[] value) {
        Intrinsics.h(value, "value");
        this.f133a.bindBlob(i10, value);
    }
}
