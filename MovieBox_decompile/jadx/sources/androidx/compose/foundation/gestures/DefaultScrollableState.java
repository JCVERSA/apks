package androidx.compose.foundation.gestures;

import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.MutatorMutex;
import androidx.compose.runtime.i1;
import androidx.compose.runtime.u2;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.o0;

final class DefaultScrollableState implements o {

    private final Function1 f2343a;

    private final k f2344b = new a();

    private final MutatorMutex f2345c = new MutatorMutex();

    private final i1 f2346d;

    private final i1 f2347e;

    private final i1 f2348f;

    public static final class a implements k {
        a() {
        }

        @Override
        public float a(float f10) {
            if (Float.isNaN(f10)) {
                return 0.0f;
            }
            float fFloatValue = ((Number) DefaultScrollableState.this.k().invoke(Float.valueOf(f10))).floatValue();
            DefaultScrollableState.this.f2347e.setValue(Boolean.valueOf(fFloatValue > 0.0f));
            DefaultScrollableState.this.f2348f.setValue(Boolean.valueOf(fFloatValue < 0.0f));
            return fFloatValue;
        }
    }

    public DefaultScrollableState(Function1 function1) {
        this.f2343a = function1;
        Boolean bool = Boolean.FALSE;
        this.f2346d = u2.c(bool, null, 2, null);
        this.f2347e = u2.c(bool, null, 2, null);
        this.f2348f = u2.c(bool, null, 2, null);
    }

    @Override
    public boolean a() {
        return ((Boolean) this.f2346d.getValue()).booleanValue();
    }

    @Override
    public boolean b() {
        return n.a(this);
    }

    @Override
    public Object c(MutatePriority mutatePriority, Function2 function2, Continuation continuation) {
        Object objE = o0.e(new DefaultScrollableState$scroll$2(this, mutatePriority, function2, null), continuation);
        return objE == IntrinsicsKt.f() ? objE : Unit.f64096a;
    }

    @Override
    public boolean d() {
        return n.b(this);
    }

    @Override
    public float e(float f10) {
        return ((Number) this.f2343a.invoke(Float.valueOf(f10))).floatValue();
    }

    public final Function1 k() {
        return this.f2343a;
    }
}
