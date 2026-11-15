package kotlinx.coroutines.channels;

import kotlin.ExceptionsKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.internal.UndeliveredElementException;

public class m extends BufferedChannel {

    private final int f64730m;

    private final BufferOverflow f64731n;

    public m(int i10, BufferOverflow bufferOverflow, Function1 function1) {
        super(i10, function1);
        this.f64730m = i10;
        this.f64731n = bufferOverflow;
        if (bufferOverflow == BufferOverflow.SUSPEND) {
            throw new IllegalArgumentException(("This implementation does not support suspension for senders, use " + Reflection.b(BufferedChannel.class).g() + " instead").toString());
        }
        if (i10 >= 1) {
            return;
        }
        throw new IllegalArgumentException(("Buffered channel capacity must be at least 1, but " + i10 + " was specified").toString());
    }

    static Object l1(m mVar, Object obj, Continuation continuation) throws Throwable {
        UndeliveredElementException undeliveredElementExceptionC;
        Object objN1 = mVar.n1(obj, true);
        if (!(objN1 instanceof h.a)) {
            return Unit.f64096a;
        }
        h.e(objN1);
        Function1 function1 = mVar.f64691b;
        if (function1 == null || (undeliveredElementExceptionC = kotlinx.coroutines.internal.s.c(function1, obj, null, 2, null)) == null) {
            throw mVar.f0();
        }
        ExceptionsKt.a(undeliveredElementExceptionC, mVar.f0());
        throw undeliveredElementExceptionC;
    }

    private final Object m1(Object obj, boolean z10) {
        Function1 function1;
        UndeliveredElementException undeliveredElementExceptionC;
        Object objA = super.a(obj);
        if (h.i(objA) || h.h(objA)) {
            return objA;
        }
        if (!z10 || (function1 = this.f64691b) == null || (undeliveredElementExceptionC = kotlinx.coroutines.internal.s.c(function1, obj, null, 2, null)) == null) {
            return h.f64724b.c(Unit.f64096a);
        }
        throw undeliveredElementExceptionC;
    }

    private final Object n1(Object obj, boolean z10) {
        return this.f64731n == BufferOverflow.DROP_LATEST ? m1(obj, z10) : b1(obj);
    }

    @Override
    public Object a(Object obj) {
        return n1(obj, false);
    }

    @Override
    public Object n(Object obj, Continuation continuation) {
        return l1(this, obj, continuation);
    }

    @Override
    protected boolean u0() {
        return this.f64731n == BufferOverflow.DROP_OLDEST;
    }
}
