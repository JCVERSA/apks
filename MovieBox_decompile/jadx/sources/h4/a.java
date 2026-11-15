package h4;

import j4.u;
import kotlin.jvm.internal.Intrinsics;

public final class a extends c {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(i4.g tracker) {
        super(tracker);
        Intrinsics.h(tracker, "tracker");
    }

    @Override
    public boolean b(u workSpec) {
        Intrinsics.h(workSpec, "workSpec");
        return workSpec.f62996j.g();
    }

    @Override
    public boolean c(Object obj) {
        return i(((Boolean) obj).booleanValue());
    }

    public boolean i(boolean z10) {
        return !z10;
    }
}
