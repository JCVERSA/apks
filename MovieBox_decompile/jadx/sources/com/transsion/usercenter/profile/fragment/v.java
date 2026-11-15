package com.transsion.usercenter.profile.fragment;

import androidx.p009lifecycle.c0;
import kotlin.Function;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;

final class v implements c0, FunctionAdapter {

    private final Function1 f55074a;

    v(Function1 function) {
        Intrinsics.h(function, "function");
        this.f55074a = function;
    }

    @Override
    public final Function a() {
        return this.f55074a;
    }

    public final boolean equals(Object obj) {
        if ((obj instanceof c0) && (obj instanceof FunctionAdapter)) {
            return Intrinsics.c(a(), ((FunctionAdapter) obj).a());
        }
        return false;
    }

    public final int hashCode() {
        return a().hashCode();
    }

    @Override
    public final void onChanged(Object obj) {
        this.f55074a.invoke(obj);
    }
}
