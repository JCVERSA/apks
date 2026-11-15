package androidx.work.impl;

import android.content.Context;
import kotlin.jvm.internal.Intrinsics;

public final class f0 extends x3.b {

    private final Context f15269c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f0(Context context) {
        super(9, 10);
        Intrinsics.h(context, "context");
        this.f15269c = context;
    }

    @Override
    public void b(z3.d db2) {
        Intrinsics.h(db2, "db");
        db2.E("CREATE TABLE IF NOT EXISTS `Preference` (`key` TEXT NOT NULL, `long_value` INTEGER, PRIMARY KEY(`key`))");
        androidx.work.impl.utils.o.d(this.f15269c, db2);
        androidx.work.impl.utils.j.c(this.f15269c, db2);
    }
}
