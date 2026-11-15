package a4;

import androidx.sqlite.db.framework.FrameworkSQLiteOpenHelper;
import kotlin.jvm.internal.Intrinsics;

public final class h implements z3.e.c {
    @Override
    public z3.e a(z3.e.b configuration) {
        Intrinsics.h(configuration, "configuration");
        return new FrameworkSQLiteOpenHelper(configuration.f76616a, configuration.f76617b, configuration.f76618c, configuration.f76619d, configuration.f76620e);
    }
}
