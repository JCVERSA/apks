package androidx.work.impl;

import kotlin.jvm.internal.Intrinsics;

public final class j extends x3.b {

    public static final j f15304c = new j();

    private j() {
        super(3, 4);
    }

    @Override
    public void b(z3.d db2) {
        Intrinsics.h(db2, "db");
        db2.E("\n    UPDATE workspec SET schedule_requested_at = 0\n    WHERE state NOT IN (2, 3, 5)\n        AND schedule_requested_at = -1\n        AND interval_duration <> 0\n    ");
    }
}
