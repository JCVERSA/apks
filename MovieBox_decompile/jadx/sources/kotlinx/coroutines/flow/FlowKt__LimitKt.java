package kotlinx.coroutines.flow;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;

abstract class FlowKt__LimitKt {

    public static final class a implements kotlinx.coroutines.flow.a {

        final kotlinx.coroutines.flow.a f64765a;

        final Function2 f64766b;

        public a(kotlinx.coroutines.flow.a aVar, Function2 function2) {
            this.f64765a = aVar;
            this.f64766b = function2;
        }

        @Override
        public Object a(b bVar, Continuation continuation) {
            Object objA = this.f64765a.a(new FlowKt__LimitKt$dropWhile$1$1(new Ref.BooleanRef(), bVar, this.f64766b), continuation);
            return objA == IntrinsicsKt.f() ? objA : Unit.f64096a;
        }
    }

    public static final kotlinx.coroutines.flow.a a(kotlinx.coroutines.flow.a aVar, Function2 function2) {
        return new a(aVar, function2);
    }

    public static final kotlinx.coroutines.flow.a b(kotlinx.coroutines.flow.a aVar, Function2 function2) {
        return new FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1(aVar, function2);
    }
}
