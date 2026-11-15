package com.google.common.util.concurrent;

import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

final class TimeoutFuture extends i.a {

    private r f30183a;

    private ScheduledFuture f30184b;

    private static final class Fire<V> implements Runnable {
        TimeoutFuture timeoutFutureRef;

        Fire(TimeoutFuture timeoutFuture) {
            this.timeoutFutureRef = timeoutFuture;
        }

        @Override
        public void run() {
            r rVar;
            TimeoutFuture timeoutFuture = this.timeoutFutureRef;
            if (timeoutFuture == null || (rVar = timeoutFuture.f30183a) == null) {
                return;
            }
            this.timeoutFutureRef = null;
            if (rVar.isDone()) {
                timeoutFuture.setFuture(rVar);
                return;
            }
            try {
                ScheduledFuture scheduledFuture = timeoutFuture.f30184b;
                timeoutFuture.f30184b = null;
                String str = "Timed out";
                if (scheduledFuture != null) {
                    try {
                        long jAbs = Math.abs(scheduledFuture.getDelay(TimeUnit.MILLISECONDS));
                        if (jAbs > 10) {
                            str = "Timed out (timeout delayed by " + jAbs + " ms after scheduled time)";
                        }
                    } catch (Throwable th2) {
                        timeoutFuture.setException(new TimeoutFutureException(str));
                        throw th2;
                    }
                }
                timeoutFuture.setException(new TimeoutFutureException(str + ": " + rVar));
                rVar.cancel(true);
            } catch (Throwable th3) {
                rVar.cancel(true);
                throw th3;
            }
        }
    }

    private static final class TimeoutFutureException extends TimeoutException {
        @Override
        public synchronized Throwable fillInStackTrace() {
            setStackTrace(new StackTraceElement[0]);
            return this;
        }

        private TimeoutFutureException(String str) {
            super(str);
        }
    }

    private TimeoutFuture(r rVar) {
        this.f30183a = (r) com.google.common.base.m.o(rVar);
    }

    static r v(r rVar, long j10, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        TimeoutFuture timeoutFuture = new TimeoutFuture(rVar);
        Fire fire = new Fire(timeoutFuture);
        timeoutFuture.f30184b = scheduledExecutorService.schedule(fire, j10, timeUnit);
        rVar.addListener(fire, MoreExecutors.a());
        return timeoutFuture;
    }

    @Override
    protected void afterDone() {
        maybePropagateCancellationTo(this.f30183a);
        ScheduledFuture scheduledFuture = this.f30184b;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
        this.f30183a = null;
        this.f30184b = null;
    }

    @Override
    protected String pendingToString() {
        r rVar = this.f30183a;
        ScheduledFuture scheduledFuture = this.f30184b;
        if (rVar == null) {
            return null;
        }
        String str = "inputFuture=[" + rVar + "]";
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
