package io.reactivex.rxjava3.internal.schedulers;

import java.util.concurrent.Callable;

public final class ScheduledDirectTask extends AbstractDirectTask implements Callable<Void> {
    private static final long serialVersionUID = 1811839108042568751L;

    public ScheduledDirectTask(Runnable runnable, boolean z10) {
        super(runnable, z10);
    }

    @Override
    public Runnable getWrappedRunnable() {
        return super.getWrappedRunnable();
    }

    @Override
    public String toString() {
        return super.toString();
    }

    @Override
    public Void call() {
        this.runner = Thread.currentThread();
        try {
            try {
                this.runnable.run();
                return null;
            } finally {
                lazySet(AbstractDirectTask.FINISHED);
                this.runner = null;
            }
        } catch (Throwable th2) {
            dy.a.r(th2);
            throw th2;
        }
    }
}
