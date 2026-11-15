package androidx.work.impl;

import androidx.room.RoomDatabase;
import kotlin.jvm.internal.Intrinsics;

public final class c extends RoomDatabase.b {

    public static final c f15247a = new c();

    private c() {
    }

    private final String h() {
        return "DELETE FROM workspec WHERE state IN (2, 3, 5) AND (last_enqueue_time + minimum_retention_duration) < " + g() + " AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))";
    }

    @Override
    public void f(z3.d db2) {
        Intrinsics.h(db2, "db");
        super.f(db2);
        db2.A();
        try {
            db2.E(h());
            db2.I();
        } finally {
            db2.L();
        }
    }

    public final long g() {
        return System.currentTimeMillis() - y.f15399a;
    }
}
