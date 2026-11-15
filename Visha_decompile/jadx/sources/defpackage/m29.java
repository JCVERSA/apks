package defpackage;

import com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig;

public final class m29 implements al3 {
    public final oj8 a;

    public m29(oj8 oj8Var) {
        this.a = oj8Var;
    }

    public static SchedulerConfig a(hy0 hy0Var) {
        return (SchedulerConfig) vd8.c(l29.a(hy0Var), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static m29 b(oj8 oj8Var) {
        return new m29(oj8Var);
    }

    @Override
    public SchedulerConfig get() {
        return a((hy0) this.a.get());
    }
}
