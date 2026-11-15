package com.transsion.moviedetail.fragment;

import kotlin.Function;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;

final class k2 implements androidx.p009lifecycle.c0, FunctionAdapter {

    private final Function1 f45465a;

    k2(Function1 function) {
        Intrinsics.h(function, "function");
        this.f45465a = function;
    }

    @Override
    public final Function a() {
        return this.f45465a;
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
        this.f45465a.invoke(obj);
    }
}
