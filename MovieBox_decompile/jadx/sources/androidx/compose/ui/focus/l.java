package androidx.compose.ui.focus;

import kotlin.Function;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;

public abstract class l {

    static final class a implements p, FunctionAdapter {

        private final Function1 f3942a;

        a(Function1 function1) {
            this.f3942a = function1;
        }

        @Override
        public final Function a() {
            return this.f3942a;
        }

        @Override
        public final void b(k kVar) {
            this.f3942a.invoke(kVar);
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof p) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.c(a(), ((FunctionAdapter) obj).a());
            }
            return false;
        }

        public final int hashCode() {
            return a().hashCode();
        }
    }

    public static final androidx.compose.ui.f a(androidx.compose.ui.f fVar, Function1 function1) {
        return fVar.e(new FocusPropertiesElement(new a(function1)));
    }
}
