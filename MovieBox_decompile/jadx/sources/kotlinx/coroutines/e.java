package kotlinx.coroutines;

import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.internal.Intrinsics;

final class e {

    private static final AtomicIntegerFieldUpdater f64737b = AtomicIntegerFieldUpdater.newUpdater(e.class, "notCompletedCount$volatile");

    private final r0[] f64738a;
    private volatile int notCompletedCount$volatile;

    private final class a extends w1 {

        private static final AtomicReferenceFieldUpdater f64739h = AtomicReferenceFieldUpdater.newUpdater(a.class, Object.class, "_disposer$volatile");
        private volatile Object _disposer$volatile;

        private final n f64740e;

        public a1 f64741f;

        public a(n nVar) {
            this.f64740e = nVar;
        }

        public final void A(b bVar) {
            f64739h.set(this, bVar);
        }

        public final void B(a1 a1Var) {
            this.f64741f = a1Var;
        }

        @Override
        public boolean u() {
            return false;
        }

        @Override
        public void v(Throwable th2) {
            if (th2 != null) {
                Object objTryResumeWithException = this.f64740e.tryResumeWithException(th2);
                if (objTryResumeWithException != null) {
                    this.f64740e.completeResume(objTryResumeWithException);
                    b bVarX = x();
                    if (bVarX != null) {
                        bVarX.b();
                        return;
                    }
                    return;
                }
                return;
            }
            if (e.d().decrementAndGet(e.this) == 0) {
                n nVar = this.f64740e;
                r0[] r0VarArr = e.this.f64738a;
                ArrayList arrayList = new ArrayList(r0VarArr.length);
                for (r0 r0Var : r0VarArr) {
                    arrayList.add(r0Var.d());
                }
                nVar.resumeWith(Result.m453constructorimpl(arrayList));
            }
        }

        public final b x() {
            return (b) f64739h.get(this);
        }

        public final a1 y() {
            a1 a1Var = this.f64741f;
            if (a1Var != null) {
                return a1Var;
            }
            Intrinsics.y("handle");
            return null;
        }
    }

    private final class b implements m {

        private final a[] f64743a;

        public b(a[] aVarArr) {
            this.f64743a = aVarArr;
        }

        @Override
        public void a(Throwable th2) {
            b();
        }

        public final void b() {
            for (a aVar : this.f64743a) {
                aVar.y().dispose();
            }
        }

        public String toString() {
            return "DisposeHandlersOnCancel[" + this.f64743a + ']';
        }
    }

    public e(r0[] r0VarArr) {
        this.f64738a = r0VarArr;
        this.notCompletedCount$volatile = r0VarArr.length;
    }

    public static final AtomicIntegerFieldUpdater d() {
        return f64737b;
    }

    public final Object c(Continuation continuation) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.c(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        int length = this.f64738a.length;
        a[] aVarArr = new a[length];
        for (int i10 = 0; i10 < length; i10++) {
            r0 r0Var = this.f64738a[i10];
            r0Var.start();
            a aVar = new a(cancellableContinuationImpl);
            aVar.B(JobKt__JobKt.m(r0Var, false, aVar, 1, null));
            Unit unit = Unit.f64096a;
            aVarArr[i10] = aVar;
        }
        b bVar = new b(aVarArr);
        for (int i11 = 0; i11 < length; i11++) {
            aVarArr[i11].A(bVar);
        }
        if (cancellableContinuationImpl.isCompleted()) {
            bVar.b();
        } else {
            q.c(cancellableContinuationImpl, bVar);
        }
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.f()) {
            DebugProbesKt.c(continuation);
        }
        return result;
    }
}
