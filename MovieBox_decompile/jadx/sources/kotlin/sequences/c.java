package kotlin.sequences;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

final class c extends SequenceScope implements Iterator, Continuation, KMappedMarker {

    private int f64509a;

    private Object f64510b;

    private Iterator f64511c;

    private Continuation f64512d;

    private final Throwable f() {
        int i10 = this.f64509a;
        if (i10 == 4) {
            return new NoSuchElementException();
        }
        if (i10 == 5) {
            return new IllegalStateException("Iterator has failed.");
        }
        return new IllegalStateException("Unexpected state of the iterator: " + this.f64509a);
    }

    private final Object h() {
        if (hasNext()) {
            return next();
        }
        throw new NoSuchElementException();
    }

    @Override
    public Object a(Object obj, Continuation continuation) {
        this.f64510b = obj;
        this.f64509a = 3;
        this.f64512d = continuation;
        Object objF = IntrinsicsKt.f();
        if (objF == IntrinsicsKt.f()) {
            DebugProbesKt.c(continuation);
        }
        return objF == IntrinsicsKt.f() ? objF : Unit.f64096a;
    }

    @Override
    public Object c(Iterator it, Continuation continuation) {
        if (!it.hasNext()) {
            return Unit.f64096a;
        }
        this.f64511c = it;
        this.f64509a = 2;
        this.f64512d = continuation;
        Object objF = IntrinsicsKt.f();
        if (objF == IntrinsicsKt.f()) {
            DebugProbesKt.c(continuation);
        }
        return objF == IntrinsicsKt.f() ? objF : Unit.f64096a;
    }

    @Override
    public CoroutineContext getContext() {
        return EmptyCoroutineContext.INSTANCE;
    }

    @Override
    public boolean hasNext() throws Throwable {
        while (true) {
            int i10 = this.f64509a;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 == 2 || i10 == 3) {
                        return true;
                    }
                    if (i10 == 4) {
                        return false;
                    }
                    throw f();
                }
                Iterator it = this.f64511c;
                Intrinsics.e(it);
                if (it.hasNext()) {
                    this.f64509a = 2;
                    return true;
                }
                this.f64511c = null;
            }
            this.f64509a = 5;
            Continuation continuation = this.f64512d;
            Intrinsics.e(continuation);
            this.f64512d = null;
            Result.Companion companion = Result.INSTANCE;
            continuation.resumeWith(Result.m453constructorimpl(Unit.f64096a));
        }
    }

    public final void i(Continuation continuation) {
        this.f64512d = continuation;
    }

    @Override
    public Object next() throws Throwable {
        int i10 = this.f64509a;
        if (i10 == 0 || i10 == 1) {
            return h();
        }
        if (i10 == 2) {
            this.f64509a = 1;
            Iterator it = this.f64511c;
            Intrinsics.e(it);
            return it.next();
        }
        if (i10 != 3) {
            throw f();
        }
        this.f64509a = 0;
        Object obj = this.f64510b;
        this.f64510b = null;
        return obj;
    }

    @Override
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public void resumeWith(Object obj) {
        ResultKt.b(obj);
        this.f64509a = 4;
    }
}
