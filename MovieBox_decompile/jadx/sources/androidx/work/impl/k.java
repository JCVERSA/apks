package androidx.work.impl;

import kotlin.jvm.internal.Intrinsics;

public final class k extends x3.b {

    public static final k f15305c = new k();

    private k() {
        super(4, 5);
    }

    @Override
    public void b(z3.d db2) {
        Intrinsics.h(db2, "db");
        db2.E("ALTER TABLE workspec ADD COLUMN `trigger_content_update_delay` INTEGER NOT NULL DEFAULT -1");
        db2.E("ALTER TABLE workspec ADD COLUMN `trigger_max_content_delay` INTEGER NOT NULL DEFAULT -1");
    }
}
