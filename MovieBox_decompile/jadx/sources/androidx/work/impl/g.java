package androidx.work.impl;

import kotlin.jvm.internal.Intrinsics;

public final class g extends x3.b {

    public static final g f15287c = new g();

    private g() {
        super(12, 13);
    }

    @Override
    public void b(z3.d db2) {
        Intrinsics.h(db2, "db");
        db2.E("UPDATE workspec SET required_network_type = 0 WHERE required_network_type IS NULL ");
        db2.E("UPDATE workspec SET content_uri_triggers = x'' WHERE content_uri_triggers is NULL");
    }
}
