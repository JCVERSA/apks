package p;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.c1;
import kotlinx.coroutines.flow.w0;

final class j implements i {

    private final w0 f68948a = c1.b(0, 16, BufferOverflow.DROP_OLDEST, 1, null);

    @Override
    public boolean a(f fVar) {
        return b().b(fVar);
    }

    @Override
    public Object c(f fVar, Continuation continuation) {
        Object objEmit = b().emit(fVar, continuation);
        return objEmit == IntrinsicsKt.f() ? objEmit : Unit.f64096a;
    }

    @Override
    public w0 b() {
        return this.f68948a;
    }
}
