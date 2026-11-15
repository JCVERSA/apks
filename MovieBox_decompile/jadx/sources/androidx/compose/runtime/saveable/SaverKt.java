package androidx.compose.runtime.saveable;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

public abstract class SaverKt {

    private static final d f3598a = a(new Function2<e, Object, Object>() {
        @Override
        public final Object invoke(e eVar, Object obj) {
            return obj;
        }
    }, new Function1<Object, Object>() {
        @Override
        public final Object invoke(Object obj) {
            return obj;
        }
    });

    public static final class a implements d {

        final Function2 f3599a;

        final Function1 f3600b;

        a(Function2 function2, Function1 function1) {
            this.f3599a = function2;
            this.f3600b = function1;
        }

        @Override
        public Object a(e eVar, Object obj) {
            return this.f3599a.invoke(eVar, obj);
        }

        @Override
        public Object b(Object obj) {
            return this.f3600b.invoke(obj);
        }
    }

    public static final d a(Function2 function2, Function1 function1) {
        return new a(function2, function1);
    }

    public static final d b() {
        d dVar = f3598a;
        Intrinsics.f(dVar, "null cannot be cast to non-null type androidx.compose.runtime.saveable.Saver<T of androidx.compose.runtime.saveable.SaverKt.autoSaver, kotlin.Any>");
        return dVar;
    }
}
