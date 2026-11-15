package androidx.p009lifecycle;

import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

public abstract class Transformations {

    static final class a implements c0, FunctionAdapter {

        private final Function1 f9255a;

        a(Function1 function) {
            Intrinsics.h(function, "function");
            this.f9255a = function;
        }

        @Override
        public final Function a() {
            return this.f9255a;
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
            this.f9255a.invoke(obj);
        }
    }

    public static final LiveData a(LiveData liveData) {
        final z zVar;
        Intrinsics.h(liveData, "<this>");
        final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        booleanRef.element = true;
        if (liveData.i()) {
            booleanRef.element = false;
            zVar = new z(liveData.f());
        } else {
            zVar = new z();
        }
        zVar.r(liveData, new a(new Function1<Object, Unit>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                m193invoke(obj);
                return Unit.f64096a;
            }

            public final void m193invoke(Object obj) {
                Object objF = zVar.f();
                if (booleanRef.element || ((objF == null && obj != null) || !(objF == null || Intrinsics.c(objF, obj)))) {
                    booleanRef.element = false;
                    zVar.q(obj);
                }
            }
        }));
        return zVar;
    }
}
