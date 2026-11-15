package com.transsion.home.fragment.filter;

import kotlin.Function;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;

final class c0 implements androidx.p009lifecycle.c0, FunctionAdapter {

    private final Function1 f43833a;

    c0(Function1 function) {
        Intrinsics.h(function, "function");
        this.f43833a = function;
    }

    @Override
    public final Function a() {
        return this.f43833a;
    }

    public final boolean equals(Object obj) {
        if ((obj instanceof androidx.p009lifecycle.c0) && (obj instanceof FunctionAdapter)) {
            return Intrinsics.c(a(), ((FunctionAdapter) obj).a());
        }
        return false;
    }

    public final int hashCode() {
        return a().hashCode();
    }

    @Override
    public final void onChanged(Object obj) {
        this.f43833a.invoke(obj);
    }
}
