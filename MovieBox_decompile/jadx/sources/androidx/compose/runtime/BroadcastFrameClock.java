package androidx.compose.runtime;

import java.util.ArrayList;
import java.util.List;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.CancellableContinuationImpl;

public final class BroadcastFrameClock implements u0 {

    private final Function0 f3242a;

    private final Object f3243b;

    private Throwable f3244c;

    private List f3245d;

    private List f3246e;

    private final AtomicInt f3247f;

    static final class a {

        private final Function1 f3248a;

        private final Continuation f3249b;

        public a(Function1 function1, Continuation continuation) {
            this.f3248a = function1;
            this.f3249b = continuation;
        }

        public final Continuation a() {
            return this.f3249b;
        }

        public final void b(long j10) {
            Object objM453constructorimpl;
            Continuation continuation = this.f3249b;
            try {
                Result.Companion companion = Result.INSTANCE;
                objM453constructorimpl = Result.m453constructorimpl(this.f3248a.invoke(Long.valueOf(j10)));
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
            }
            continuation.resumeWith(objM453constructorimpl);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public BroadcastFrameClock() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public final void p(Throwable th2) {
        synchronized (this.f3243b) {
            try {
                if (this.f3244c != null) {
                    return;
                }
                this.f3244c = th2;
                List list = this.f3245d;
                int size = list.size();
                for (int i10 = 0; i10 < size; i10++) {
                    Continuation continuationA = ((a) list.get(i10)).a();
                    Result.Companion companion = Result.INSTANCE;
                    continuationA.resumeWith(Result.m453constructorimpl(ResultKt.a(th2)));
                }
                this.f3245d.clear();
                this.f3247f.set(0);
                Unit unit = Unit.f64096a;
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    @Override
    public Object fold(Object obj, Function2 function2) {
        return u0.a.a(this, obj, function2);
    }

    @Override
    public CoroutineContext.Element get(CoroutineContext.Key key) {
        return u0.a.b(this, key);
    }

    @Override
    public CoroutineContext.Key getKey() {
        return t0.a(this);
    }

    @Override
    public Object j(Function1 function1, Continuation continuation) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.c(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        final a aVar = new a(function1, cancellableContinuationImpl);
        synchronized (this.f3243b) {
            Throwable th2 = this.f3244c;
            if (th2 != null) {
                Result.Companion companion = Result.INSTANCE;
                cancellableContinuationImpl.resumeWith(Result.m453constructorimpl(ResultKt.a(th2)));
            } else {
                boolean zIsEmpty = this.f3245d.isEmpty();
                this.f3245d.add(aVar);
                if (zIsEmpty) {
                    this.f3247f.set(1);
                }
                cancellableContinuationImpl.invokeOnCancellation(new Function1<Throwable, Unit>() {
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override
                    public Object invoke(Object obj) {
                        invoke((Throwable) obj);
                        return Unit.f64096a;
                    }

                    public final void invoke(Throwable th3) {
                        Object obj = this.this$0.f3243b;
                        BroadcastFrameClock broadcastFrameClock = this.this$0;
                        BroadcastFrameClock.a aVar2 = aVar;
                        synchronized (obj) {
                            try {
                                broadcastFrameClock.f3245d.remove(aVar2);
                                if (broadcastFrameClock.f3245d.isEmpty()) {
                                    broadcastFrameClock.f3247f.set(0);
                                }
                                Unit unit = Unit.f64096a;
                            } catch (Throwable th4) {
                                throw th4;
                            }
                        }
                    }
                });
                if (zIsEmpty && this.f3242a != null) {
                    try {
                        this.f3242a.invoke();
                    } catch (Throwable th3) {
                        p(th3);
                    }
                }
            }
        }
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.f()) {
            DebugProbesKt.c(continuation);
        }
        return result;
    }

    @Override
    public CoroutineContext minusKey(CoroutineContext.Key key) {
        return u0.a.c(this, key);
    }

    @Override
    public CoroutineContext plus(CoroutineContext coroutineContext) {
        return u0.a.d(this, coroutineContext);
    }

    public final boolean q() {
        return this.f3247f.get() != 0;
    }

    public final void r(long j10) {
        synchronized (this.f3243b) {
            try {
                List list = this.f3245d;
                this.f3245d = this.f3246e;
                this.f3246e = list;
                this.f3247f.set(0);
                int size = list.size();
                for (int i10 = 0; i10 < size; i10++) {
                    ((a) list.get(i10)).b(j10);
                }
                list.clear();
                Unit unit = Unit.f64096a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public BroadcastFrameClock(Function0 function0) {
        this.f3242a = function0;
        this.f3243b = new Object();
        this.f3245d = new ArrayList();
        this.f3246e = new ArrayList();
        this.f3247f = new AtomicInt(0);
    }

    public BroadcastFrameClock(Function0 function0, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : function0);
    }
}
