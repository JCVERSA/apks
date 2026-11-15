package androidx.work.impl;

import kotlin.jvm.internal.Intrinsics;

public final class m extends x3.b {

    public static final m f15307c = new m();

    private m() {
        super(7, 8);
    }

    @Override
    public void b(z3.d db2) {
        Intrinsics.h(db2, "db");
        db2.E("\n    CREATE INDEX IF NOT EXISTS `index_WorkSpec_period_start_time` ON `workspec`(`period_start_time`)\n    ");
    }
}
