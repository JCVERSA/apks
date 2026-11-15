package io.reactivex.android.schedulers;

import android.os.Handler;
import android.os.Message;
import defpackage.rc2;
import defpackage.yw8;
import io.reactivex.Scheduler;
import java.util.concurrent.TimeUnit;

public final class HandlerScheduler extends Scheduler {
    public final Handler c;
    public final boolean d;

    public static final class ScheduledRunnable implements Runnable, rc2 {
        private final Runnable delegate;
        private volatile boolean disposed;
        private final Handler handler;

        public ScheduledRunnable(Handler handler, Runnable runnable) {
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
            } catch (Throwable th) {
                yw8.s(th);
            }
        }
    }

    public static final class a extends Scheduler.Worker {
        public final Handler b;
        public final boolean c;
        public volatile boolean d;

        public a(Handler handler, boolean z) {
            this.b = handler;
            this.c = z;
        }

        @Override
        public void dispose() {
            this.d = true;
            this.b.removeCallbacksAndMessages(this);
        }

        @Override
        public boolean isDisposed() {
            return this.d;
        }

        @Override
        public rc2 schedule(Runnable runnable, long j, TimeUnit timeUnit) {
            if (runnable == null) {
                throw new NullPointerException("run == null");
            }
            if (timeUnit == null) {
                throw new NullPointerException("unit == null");
            }
            if (this.d) {
                return io.reactivex.disposables.a.a();
            }
            ScheduledRunnable scheduledRunnable = new ScheduledRunnable(this.b, yw8.v(runnable));
            Message messageObtain = Message.obtain(this.b, scheduledRunnable);
            messageObtain.obj = this;
            if (this.c) {
                messageObtain.setAsynchronous(true);
            }
            this.b.sendMessageDelayed(messageObtain, timeUnit.toMillis(j));
            if (!this.d) {
                return scheduledRunnable;
            }
            this.b.removeCallbacks(scheduledRunnable);
            return io.reactivex.disposables.a.a();
        }
    }

    public HandlerScheduler(Handler handler, boolean z) {
        this.c = handler;
        this.d = z;
    }

    @Override
    public Scheduler.Worker b() {
        return new a(this.c, this.d);
    }

    @Override
    public rc2 d(Runnable runnable, long j, TimeUnit timeUnit) {
        if (runnable == null) {
            throw new NullPointerException("run == null");
        }
        if (timeUnit == null) {
            throw new NullPointerException("unit == null");
        }
        ScheduledRunnable scheduledRunnable = new ScheduledRunnable(this.c, yw8.v(runnable));
        Message messageObtain = Message.obtain(this.c, scheduledRunnable);
        if (this.d) {
            messageObtain.setAsynchronous(true);
        }
        this.c.sendMessageDelayed(messageObtain, timeUnit.toMillis(j));
        return scheduledRunnable;
    }
}
