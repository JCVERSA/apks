package androidx.work.impl;

import android.content.ContentValues;
import kotlin.jvm.internal.Intrinsics;

public final class b implements x3.a {
    @Override
    public void a(z3.d db2) {
        Intrinsics.h(db2, "db");
        db2.E("UPDATE workspec SET period_count = 1 WHERE last_enqueue_time <> 0 AND interval_duration <> 0");
        ContentValues contentValues = new ContentValues(1);
        contentValues.put("last_enqueue_time", Long.valueOf(System.currentTimeMillis()));
        db2.i0("WorkSpec", 3, contentValues, "last_enqueue_time = 0 AND interval_duration <> 0 ", new Object[0]);
    }
}
