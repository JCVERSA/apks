package com.google.common.util.concurrent;

import defpackage.im5;
import defpackage.xd8;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public final class TimeoutFuture extends d.a {
    public im5 b;
    public ScheduledFuture c;

    public static final class Fire<V> implements Runnable {
        TimeoutFuture timeoutFutureRef;

        public Fire(TimeoutFuture timeoutFuture) {
            this.timeoutFutureRef = timeoutFuture;
        }

        @Override
        public void run() {
            im5 im5Var;
            TimeoutFuture timeoutFuture = this.timeoutFutureRef;
            if (timeoutFuture == null || (im5Var = timeoutFuture.b) == null) {
                return;
            }
            this.timeoutFutureRef = null;
            if (im5Var.isDone()) {
                timeoutFuture.setFuture(im5Var);
                return;
            }
            try {
                ScheduledFuture scheduledFuture = timeoutFuture.c;
                timeoutFuture.c = null;
                String str = "Timed out";
                if (scheduledFuture != null) {
                    try {
                        long jAbs = Math.abs(scheduledFuture.getDelay(TimeUnit.MILLISECONDS));
                        if (jAbs > 10) {
                            str = "Timed out (timeout delayed by " + jAbs + " ms after scheduled time)";
                        }
                    } catch (Throwable th) {
                        timeoutFuture.setException(new TimeoutFutureException(str));
                        throw th;
                    }
                }
                timeoutFuture.setException(new TimeoutFutureException(str + ": " + im5Var));
                im5Var.cancel(true);
            } catch (Throwable th2) {
                im5Var.cancel(true);
                throw th2;
            }
        }
    }

    public static final class TimeoutFutureException extends TimeoutException {
        @Override
        public synchronized Throwable fillInStackTrace() {
            setStackTrace(new StackTraceElement[0]);
            return this;
        }

        private TimeoutFutureException(String str) {
            super(str);
        }
    }

    public TimeoutFuture(im5 im5Var) {
        this.b = (im5) xd8.o(im5Var);
    }

    public static im5 r(im5 im5Var, long j, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        TimeoutFuture timeoutFuture = new TimeoutFuture(im5Var);
        Fire fire = new Fire(timeoutFuture);
        timeoutFuture.c = scheduledExecutorService.schedule(fire, j, timeUnit);
        im5Var.addListener(fire, MoreExecutors.a());
        return timeoutFuture;
    }

    @Override
    public void afterDone() {
        maybePropagateCancellationTo(this.b);
        ScheduledFuture scheduledFuture = this.c;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
        this.b = null;
        this.c = null;
    }

    @Override
    public String pendingToString() {
        im5 im5Var = this.b;
        ScheduledFuture scheduledFuture = this.c;
        if (im5Var == null) {
            return null;
        }
        String str = "inputFuture=[" + im5Var + "]";
        if (scheduledFuture == null) {
            return str;
        }
        long delay = scheduledFuture.getDelay(TimeUnit.MILLISECONDS);
        if (delay <= 0) {
            return str;
        }
        return str + ", remaining delay=[" + delay + " ms]";
    }
}
