package h4;

import j4.u;
import kotlin.jvm.internal.Intrinsics;

public final class b extends c {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(i4.c tracker) {
        super(tracker);
        Intrinsics.h(tracker, "tracker");
    }

    @Override
    public boolean b(u workSpec) {
        Intrinsics.h(workSpec, "workSpec");
        return workSpec.f62996j.f();
    }

    @Override
    public boolean c(Object obj) {
        return i(((Boolean) obj).booleanValue());
    }

    public boolean i(boolean z10) {
        return !z10;
    }
}
