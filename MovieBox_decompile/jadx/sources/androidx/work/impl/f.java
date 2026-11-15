package androidx.work.impl;

import kotlin.jvm.internal.Intrinsics;

public final class f extends x3.b {

    public static final f f15268c = new f();

    private f() {
        super(11, 12);
    }

    @Override
    public void b(z3.d db2) {
        Intrinsics.h(db2, "db");
        db2.E("ALTER TABLE workspec ADD COLUMN `out_of_quota_policy` INTEGER NOT NULL DEFAULT 0");
    }
}
