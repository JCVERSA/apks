package defpackage;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Result;
import kotlin.coroutines.d;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class w09 implements wh1, ok1 {
    public static final a c = new a(null);
    public static final AtomicReferenceFieldUpdater d = AtomicReferenceFieldUpdater.newUpdater(w09.class, Object.class, "result");
    public final wh1 b;
    private volatile Object result;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public w09(wh1 wh1Var, Object obj) {
        y45.j(wh1Var, "delegate");
        this.b = wh1Var;
        this.result = obj;
    }

    public final Object a() throws Throwable {
        Object obj = this.result;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.UNDECIDED;
        if (obj == coroutineSingletons) {
            if (u3.a(d, this, coroutineSingletons, z45.f())) {
                return z45.f();
            }
            obj = this.result;
        }
        if (obj == CoroutineSingletons.RESUMED) {
            return z45.f();
        }
        if (obj instanceof Result.Failure) {
            throw ((Result.Failure) obj).exception;
        }
        return obj;
    }

    @Override
    public ok1 getCallerFrame() {
        wh1 wh1Var = this.b;
        if (wh1Var instanceof ok1) {
            return (ok1) wh1Var;
        }
        return null;
    }

    @Override
    public d getContext() {
        return this.b.getContext();
    }

    @Override
    public void resumeWith(Object obj) {
        while (true) {
            Object obj2 = this.result;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.UNDECIDED;
            if (obj2 == coroutineSingletons) {
                if (u3.a(d, this, coroutineSingletons, obj)) {
                    return;
                }
            } else {
                if (obj2 != z45.f()) {
                    throw new IllegalStateException("Already resumed");
                }
                if (u3.a(d, this, z45.f(), CoroutineSingletons.RESUMED)) {
                    this.b.resumeWith(obj);
                    return;
                }
            }
        }
    }

    public String toString() {
        return "SafeContinuation for " + this.b;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public w09(wh1 wh1Var) {
        this(wh1Var, CoroutineSingletons.UNDECIDED);
        y45.j(wh1Var, "delegate");
    }
}
