package io.reactivex.internal.operators.observable;

import defpackage.mc7;
import defpackage.pd7;
import defpackage.rc2;
import io.reactivex.Scheduler;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.schedulers.TrampolineScheduler;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

public final class ObservableInterval extends mc7 {
    public final Scheduler b;
    public final long c;
    public final long d;
    public final TimeUnit e;

    public static final class IntervalObserver extends AtomicReference<rc2> implements rc2, Runnable {
        private static final long serialVersionUID = 346773832286157679L;
        long count;
        final pd7 downstream;

        public IntervalObserver(pd7 pd7Var) {
            this.downstream = pd7Var;
        }

        @Override
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override
        public boolean isDisposed() {
            return get() == DisposableHelper.DISPOSED;
        }

        @Override
        public void run() {
            if (get() != DisposableHelper.DISPOSED) {
                pd7 pd7Var = this.downstream;
                long j = this.count;
                this.count = 1 + j;
                pd7Var.onNext(Long.valueOf(j));
            }
        }

        public void setResource(rc2 rc2Var) {
            DisposableHelper.setOnce(this, rc2Var);
        }
    }

    public ObservableInterval(long j, long j2, TimeUnit timeUnit, Scheduler scheduler) {
        this.c = j;
        this.d = j2;
        this.e = timeUnit;
        this.b = scheduler;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override
    public void c0(pd7 pd7Var) {
        IntervalObserver intervalObserver = new IntervalObserver(pd7Var);
        pd7Var.onSubscribe(intervalObserver);
        Scheduler scheduler = this.b;
        if (!(scheduler instanceof TrampolineScheduler)) {
            intervalObserver.setResource(scheduler.e(intervalObserver, this.c, this.d, this.e));
            return;
        }
        Scheduler.Worker workerB = scheduler.b();
        intervalObserver.setResource(workerB);
        workerB.schedulePeriodically(intervalObserver, this.c, this.d, this.e);
    }
}
