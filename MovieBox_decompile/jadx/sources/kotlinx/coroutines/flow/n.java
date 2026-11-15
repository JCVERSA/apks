package kotlinx.coroutines.flow;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function2;

abstract class n {

    public static final class a implements kotlinx.coroutines.flow.a {

        final Object f64853a;

        public a(Object obj) {
            this.f64853a = obj;
        }

        @Override
        public Object a(b bVar, Continuation continuation) {
            Object objEmit = bVar.emit(this.f64853a, continuation);
            return objEmit == IntrinsicsKt.f() ? objEmit : Unit.f64096a;
        }
    }

    public static final kotlinx.coroutines.flow.a a(Function2 function2) {
        return new a1(function2);
    }

    public static final kotlinx.coroutines.flow.a b(Object obj) {
        return new a(obj);
    }
}
