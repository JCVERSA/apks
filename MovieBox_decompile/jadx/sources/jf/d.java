package jf;

import java.util.HashSet;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

public abstract class d {

    private final boolean f63112a;

    private final String f63113b;

    private final Runnable f63114c;

    private volatile int f63115d;

    private final HashSet f63116e;

    public d(boolean z10, String taskName, String dependsOn, Runnable runnable) {
        Intrinsics.h(taskName, "taskName");
        Intrinsics.h(dependsOn, "dependsOn");
        this.f63112a = z10;
        this.f63113b = taskName;
        this.f63114c = runnable;
        this.f63116e = new HashSet();
        for (String str : StringsKt.S0(dependsOn, new String[]{","}, false, 0, 6, null)) {
            if (!StringsKt.q0(str)) {
                this.f63116e.add(StringsKt.n1(str).toString());
            }
        }
        if (this.f63116e.contains(this.f63113b)) {
            throw new IllegalArgumentException("TheRouter::Task::The task cannot depend on himself : " + this.f63113b);
        }
        if (!this.f63116e.isEmpty() || Intrinsics.c(this.f63113b, "TheRouter_Initialization") || Intrinsics.c(this.f63113b, "TheRouter_Before_Initialization")) {
            return;
        }
        this.f63116e.add("TheRouter_Initialization");
    }

    public final boolean a() {
        return this.f63112a;
    }

    public final HashSet b() {
        return this.f63116e;
    }

    protected final int c() {
        return this.f63115d;
    }

    public final String d() {
        return this.f63113b;
    }

    public final boolean e() {
        return this.f63115d == 2;
    }

    public final boolean f() {
        return this.f63115d == 0;
    }

    public abstract void g();

    protected final void h(int i10) {
        this.f63115d = i10;
    }
}
