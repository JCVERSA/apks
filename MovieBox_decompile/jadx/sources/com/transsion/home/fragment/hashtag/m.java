package com.transsion.home.fragment.hashtag;

import androidx.p009lifecycle.c0;
import kotlin.Function;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;

public abstract class m {

    private static rk.b f43915a;

    static final class a implements c0, FunctionAdapter {

        private final Function1 f43916a;

        a(Function1 function) {
            Intrinsics.h(function, "function");
            this.f43916a = function;
        }

        @Override
        public final Function a() {
            return this.f43916a;
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
            this.f43916a.invoke(obj);
        }
    }
}
