package io.reactivex.rxjava3.android.schedulers;

import android.os.Handler;
import android.os.Message;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.disposables.c;
import java.util.concurrent.TimeUnit;

final class HandlerScheduler extends Scheduler {

    private final Handler f62306c;

    private final boolean f62307d;

    private static final class ScheduledRunnable implements Runnable, c {
        private final Runnable delegate;
        private volatile boolean disposed;
        private final Handler handler;

        ScheduledRunnable(Handler handler, Runnable runnable) {
            this.handler = handler;
            this.delegate = runnable;
        }

        @Override
        public void dispose() {
            this.handler.removeCallbacks(this);
            this.disposed = true;
        }

        @Override
        public boolean isDisposed() {
            return this.disposed;
        }

        @Override
        public void run() {
            try {
                this.delegate.run();
            } catch (Throwable th2) {
                dy.a.r(th2);
            }
        }
    }

    private static final class a extends Scheduler.Worker {

        private final Handler f62308a;

        private final boolean f62309b;

        private volatile boolean f62310c;

        a(Handler handler, boolean z10) {
            this.f62308a = handler;
            this.f62309b = z10;
        }

        @Override
        public void dispose() {
            this.f62310c = true;
            this.f62308a.removeCallbacksAndMessages(this);
        }

        @Override
        public boolean isDisposed() {
            return this.f62310c;
        }

        @Override
        public c schedule(Runnable runnable, long j10, TimeUnit timeUnit) {
            if (runnable == null) {
                throw new NullPointerException("run == null");
            }
            if (timeUnit == null) {
                throw new NullPointerException("unit == null");
            }
            if (this.f62310c) {
                return io.reactivex.rxjava3.disposables.b.a();
            }
            ScheduledRunnable scheduledRunnable = new ScheduledRunnable(this.f62308a, dy.a.t(runnable));
            Message messageObtain = Message.obtain(this.f62308a, scheduledRunnable);
            messageObtain.obj = this;
            if (this.f62309b) {
                messageObtain.setAsynchronous(true);
            }
            this.f62308a.sendMessageDelayed(messageObtain, timeUnit.toMillis(j10));
            if (!this.f62310c) {
                return scheduledRunnable;
            }
            this.f62308a.removeCallbacks(scheduledRunnable);
            return io.reactivex.rxjava3.disposables.b.a();
        }
    }

    HandlerScheduler(Handler handler, boolean z10) {
        this.f62306c = handler;
        this.f62307d = z10;
    }

    @Override
    public Scheduler.Worker c() {
        return new a(this.f62306c, this.f62307d);
    }

    @Override
    public c e(Runnable runnable, long j10, TimeUnit timeUnit) {
        if (runnable == null) {
            throw new NullPointerException("run == null");
        }
        if (timeUnit == null) {
            throw new NullPointerException("unit == null");
        }
        ScheduledRunnable scheduledRunnable = new ScheduledRunnable(this.f62306c, dy.a.t(runnable));
        Message messageObtain = Message.obtain(this.f62306c, scheduledRunnable);
        if (this.f62307d) {
            messageObtain.setAsynchronous(true);
        }
        this.f62306c.sendMessageDelayed(messageObtain, timeUnit.toMillis(j10));
        return scheduledRunnable;
    }
}
