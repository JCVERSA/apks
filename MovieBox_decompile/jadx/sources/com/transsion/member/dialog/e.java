package com.transsion.member.dialog;

import androidx.p009lifecycle.c0;
import kotlin.Function;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;

final class e implements c0, FunctionAdapter {

    private final Function1 f45077a;

    e(Function1 function) {
        Intrinsics.h(function, "function");
        this.f45077a = function;
    }

    @Override
    public final Function a() {
        return this.f45077a;
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
        this.f45077a.invoke(obj);
    }
}
