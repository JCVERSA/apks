package defpackage;

import android.content.Context;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig;

public final class o29 implements al3 {
    public final oj8 a;
    public final oj8 b;
    public final oj8 c;
    public final oj8 d;

    public o29(oj8 oj8Var, oj8 oj8Var2, oj8 oj8Var3, oj8 oj8Var4) {
        this.a = oj8Var;
        this.b = oj8Var2;
        this.c = oj8Var3;
        this.d = oj8Var4;
    }

    public static o29 a(oj8 oj8Var, oj8 oj8Var2, oj8 oj8Var3, oj8 oj8Var4) {
        return new o29(oj8Var, oj8Var2, oj8Var3, oj8Var4);
    }

    public static fpc c(Context context, ge3 ge3Var, SchedulerConfig schedulerConfig, hy0 hy0Var) {
        return (fpc) vd8.c(n29.a(context, ge3Var, schedulerConfig, hy0Var), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override
    public fpc get() {
        return c((Context) this.a.get(), (ge3) this.b.get(), (SchedulerConfig) this.c.get(), (hy0) this.d.get());
    }
}
