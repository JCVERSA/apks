package com.therouter.router;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public final class g {

    private final Navigator f39823a;

    private final Function0 f39824b;

    public g(Navigator navigator, Function0 action) {
        Intrinsics.h(navigator, "navigator");
        Intrinsics.h(action, "action");
        this.f39823a = navigator;
        this.f39824b = action;
    }

    public final Function0 a() {
        return this.f39824b;
    }

    public boolean equals(Object obj) {
        return obj instanceof g ? Intrinsics.c(((g) obj).f39823a, this.f39823a) : super.equals(obj);
    }

    public int hashCode() {
        return this.f39823a.hashCode() + 1;
    }
}
