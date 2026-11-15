package jf;

import com.therouter.TheRouter;
import com.therouter.TheRouterKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class e extends d {

    private volatile boolean f63117f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(String taskName, String dependsOn) {
        super(true, taskName, dependsOn, null);
        Intrinsics.h(taskName, "taskName");
        Intrinsics.h(dependsOn, "dependsOn");
    }

    private final boolean i() {
        while (true) {
            boolean z10 = true;
            for (String str : b()) {
                if (!z10 || !TheRouter.f39736a.e().i(str).e()) {
                    z10 = false;
                }
            }
            return z10;
        }
    }

    @Override
    public void g() {
        this.f63117f = true;
        if (c() == 2 || !i()) {
            return;
        }
        TheRouterKt.d("FlowTask", "Virtual Flow Task " + d() + " done", null, 4, null);
        h(2);
        TheRouter theRouter = TheRouter.f39736a;
        theRouter.e().m();
        theRouter.e().l(d());
    }

    public final void j() {
        if (this.f63117f) {
            g();
        }
    }

    public e(String str, String str2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i10 & 2) != 0 ? "" : str2);
    }
}
