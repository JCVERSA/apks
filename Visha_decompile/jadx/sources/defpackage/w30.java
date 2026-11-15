package defpackage;

import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Result;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.JobKt__JobKt;

public final class w30 {
    public static final AtomicIntegerFieldUpdater b = AtomicIntegerFieldUpdater.newUpdater(w30.class, "notCompletedCount$volatile");
    public final d72[] a;
    private volatile int notCompletedCount$volatile;

    public final class a extends o95 {
        public static final AtomicReferenceFieldUpdater i = AtomicReferenceFieldUpdater.newUpdater(a.class, Object.class, "_disposer$volatile");
        private volatile Object _disposer$volatile;
        public final cr0 f;
        public uc2 g;

        public a(cr0 cr0Var) {
            this.f = cr0Var;
        }

        public final void A(b bVar) {
            i.set(this, bVar);
        }

        public final void B(uc2 uc2Var) {
            this.g = uc2Var;
        }

        @Override
        public boolean u() {
            return false;
        }

        @Override
        public void v(Throwable th) {
            if (th != null) {
                Object objTryResumeWithException = this.f.tryResumeWithException(th);
                if (objTryResumeWithException != null) {
                    this.f.completeResume(objTryResumeWithException);
                    b bVarX = x();
                    if (bVarX != null) {
                        bVarX.b();
                        return;
                    }
                    return;
                }
                return;
            }
            if (w30.d().decrementAndGet(w30.this) == 0) {
                cr0 cr0Var = this.f;
                d72[] d72VarArr = w30.this.a;
                ArrayList arrayList = new ArrayList(d72VarArr.length);
                for (d72 d72Var : d72VarArr) {
                    arrayList.add(d72Var.d());
                }
                cr0Var.resumeWith(Result.m279constructorimpl(arrayList));
            }
        }

        public final b x() {
            return (b) i.get(this);
        }

        public final uc2 y() {
            uc2 uc2Var = this.g;
            if (uc2Var != null) {
                return uc2Var;
            }
            y45.B("handle");
            return null;
        }
    }

    public final class b implements kotlinx.coroutines.b {
        public final a[] b;

        public b(a[] aVarArr) {
            this.b = aVarArr;
        }

        @Override
        public void a(Throwable th) {
            b();
        }

        public final void b() {
            for (a aVar : this.b) {
                aVar.y().dispose();
            }
        }

        public String toString() {
            return "DisposeHandlersOnCancel[" + this.b + ']';
        }
    }

    public w30(d72[] d72VarArr) {
        this.a = d72VarArr;
        this.notCompletedCount$volatile = d72VarArr.length;
    }

    public static final AtomicIntegerFieldUpdater d() {
        return b;
    }

    public final Object c(wh1 wh1Var) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.c(wh1Var), 1);
        cancellableContinuationImpl.initCancellability();
        int length = this.a.length;
        a[] aVarArr = new a[length];
        for (int i = 0; i < length; i++) {
            d72 d72Var = this.a[i];
            d72Var.start();
            a aVar = new a(cancellableContinuationImpl);
            aVar.B(JobKt__JobKt.k(d72Var, false, aVar, 1, null));
            zfb zfbVar = zfb.a;
            aVarArr[i] = aVar;
        }
        b bVar = new b(aVarArr);
        for (int i2 = 0; i2 < length; i2++) {
            aVarArr[i2].A(bVar);
        }
        if (cancellableContinuationImpl.isCompleted()) {
            bVar.b();
        } else {
            fr0.c(cancellableContinuationImpl, bVar);
        }
        Object result = cancellableContinuationImpl.getResult();
        if (result == z45.f()) {
            pt1.c(wh1Var);
        }
        return result;
    }
}
