package b4;

import android.database.sqlite.SQLiteDatabase;
import kotlin.KotlinNothingValueException;
import kotlin.jvm.internal.Intrinsics;
import y3.e;

public final class a implements y3.b {

    private final SQLiteDatabase f15507a;

    public a(SQLiteDatabase db2) {
        Intrinsics.h(db2, "db");
        this.f15507a = db2;
    }

    @Override
    public e F0(String sql) {
        Intrinsics.h(sql, "sql");
        if (this.f15507a.isOpen()) {
            return c.f15508d.a(this.f15507a, sql);
        }
        y3.a.b(21, "connection is closed");
        throw new KotlinNothingValueException();
    }

    @Override
    public void close() {
        this.f15507a.close();
    }

    public final SQLiteDatabase d() {
        return this.f15507a;
    }
}
