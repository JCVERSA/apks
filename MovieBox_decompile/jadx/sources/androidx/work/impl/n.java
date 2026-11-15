package androidx.work.impl;

import kotlin.jvm.internal.Intrinsics;

public final class n extends x3.b {

    public static final n f15308c = new n();

    private n() {
        super(8, 9);
    }

    @Override
    public void b(z3.d db2) {
        Intrinsics.h(db2, "db");
        db2.E("ALTER TABLE workspec ADD COLUMN `run_in_foreground` INTEGER NOT NULL DEFAULT 0");
    }
}
