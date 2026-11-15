package io.reactivex.rxjava3.internal.schedulers;

public final class ScheduledDirectPeriodicTask extends AbstractDirectTask implements Runnable {
    private static final long serialVersionUID = 1811839108042568751L;

    public ScheduledDirectPeriodicTask(Runnable runnable, boolean z10) {
        super(runnable, z10);
    }

    @Override
    public Runnable getWrappedRunnable() {
        return super.getWrappedRunnable();
    }

    @Override
    public void run() {
        this.runner = Thread.currentThread();
        try {
            this.runnable.run();
            this.runner = null;
        } catch (Throwable th2) {
            dispose();
            this.runner = null;
            dy.a.r(th2);
            throw th2;
        }
    }

    @Override
    public String toString() {
        return super.toString();
    }
}
