package a4;

import android.database.sqlite.SQLiteStatement;
import kotlin.jvm.internal.Intrinsics;

public final class j extends i implements z3.h {

    private final SQLiteStatement f134b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(SQLiteStatement delegate) {
        super(delegate);
        Intrinsics.h(delegate, "delegate");
        this.f134b = delegate;
    }

    @Override
    public int F() {
        return this.f134b.executeUpdateDelete();
    }

    @Override
    public long R() {
        return this.f134b.executeInsert();
    }

    @Override
    public void execute() {
        this.f134b.execute();
    }
}
