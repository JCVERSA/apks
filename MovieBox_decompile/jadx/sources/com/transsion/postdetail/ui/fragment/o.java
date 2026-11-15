package com.transsion.postdetail.ui.fragment;

import kotlin.Function;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;

final class o implements androidx.p009lifecycle.c0, FunctionAdapter {

    private final Function1 f47691a;

    o(Function1 function) {
        Intrinsics.h(function, "function");
        this.f47691a = function;
    }

    @Override
    public final Function a() {
        return this.f47691a;
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
        this.f47691a.invoke(obj);
    }
}
