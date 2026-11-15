package com.google.firebase.concurrent;

import defpackage.wd8;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.logging.Logger;
import org.apache.commons.text.StringSubstitutor;

public final class SequentialExecutor implements Executor {
    public static final Logger g = Logger.getLogger(SequentialExecutor.class.getName());
    public final Executor b;
    public final Deque c = new ArrayDeque();
    public WorkerRunningState d = WorkerRunningState.IDLE;
    public long e = 0;
    public final QueueWorker f = new QueueWorker();

    public final class QueueWorker implements Runnable {
        Runnable task;

        private QueueWorker() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:19:0x0045, code lost:
        
            if (r1 == false) goto L51;
         */
        /* JADX WARN: Code restructure failed: missing block: B:20:0x0047, code lost:
        
            java.lang.Thread.currentThread().interrupt();
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x004e, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:24:0x0054, code lost:
        
            r1 = r1 | java.lang.Thread.interrupted();
         */
        /* JADX WARN: Code restructure failed: missing block: B:25:0x0056, code lost:
        
            r8.task.run();
         */
        /* JADX WARN: Code restructure failed: missing block: B:30:0x0060, code lost:
        
            r0 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x0062, code lost:
        
            r3 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:33:0x0063, code lost:
        
            com.google.firebase.concurrent.SequentialExecutor.g.log(java.util.logging.Level.SEVERE, "Exception while executing runnable " + r8.task, (java.lang.Throwable) r3);
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x0080, code lost:
        
            r8.task = null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x0082, code lost:
        
            throw r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:51:?, code lost:
        
            return;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private void workOnQueue() {
            boolean z = false;
            boolean zInterrupted = false;
            while (true) {
                try {
                    synchronized (SequentialExecutor.this.c) {
                        if (!z) {
                            WorkerRunningState workerRunningState = SequentialExecutor.this.d;
                            WorkerRunningState workerRunningState2 = WorkerRunningState.RUNNING;
                            if (workerRunningState != workerRunningState2) {
                                SequentialExecutor.d(SequentialExecutor.this);
                                SequentialExecutor.this.d = workerRunningState2;
                                z = true;
                            }
                        }
                        Runnable runnable = (Runnable) SequentialExecutor.this.c.poll();
                        this.task = runnable;
                        if (runnable == null) {
                            SequentialExecutor.this.d = WorkerRunningState.IDLE;
                        }
                    }
                    if (zInterrupted) {
                        Thread.currentThread().interrupt();
                        return;
                    }
                    return;
                    this.task = null;
                } catch (Throwable th) {
                    if (zInterrupted) {
                        Thread.currentThread().interrupt();
                    }
                    throw th;
                }
            }
        }

        @Override
        public void run() {
            try {
                workOnQueue();
            } catch (Error e) {
                synchronized (SequentialExecutor.this.c) {
                    SequentialExecutor.this.d = WorkerRunningState.IDLE;
                    throw e;
                }
            }
        }

        public String toString() {
            Runnable runnable = this.task;
            if (runnable != null) {
                return "SequentialExecutorWorker{running=" + runnable + StringSubstitutor.DEFAULT_VAR_END;
            }
            return "SequentialExecutorWorker{state=" + SequentialExecutor.this.d + StringSubstitutor.DEFAULT_VAR_END;
        }
    }

    public enum WorkerRunningState {
        IDLE,
        QUEUING,
        QUEUED,
        RUNNING
    }

    public SequentialExecutor(Executor executor) {
        this.b = (Executor) wd8.l(executor);
    }

    public static long d(SequentialExecutor sequentialExecutor) {
        long j = sequentialExecutor.e;
        sequentialExecutor.e = 1 + j;
        return j;
    }

    /* JADX WARN: Code duplicated, block: B:41:0x005f  */
    @Override
    public void execute(final Runnable runnable) {
        WorkerRunningState workerRunningState;
        boolean z;
        wd8.l(runnable);
        synchronized (this.c) {
            WorkerRunningState workerRunningState2 = this.d;
            if (workerRunningState2 != WorkerRunningState.RUNNING && workerRunningState2 != (workerRunningState = WorkerRunningState.QUEUED)) {
                long j = this.e;
                Runnable runnable2 = new Runnable() {
                    @Override
                    public void run() {
                        runnable.run();
                    }

                    public String toString() {
                        return runnable.toString();
                    }
                };
                this.c.add(runnable2);
                WorkerRunningState workerRunningState3 = WorkerRunningState.QUEUING;
                this.d = workerRunningState3;
                try {
                    this.b.execute(this.f);
                    if (this.d != workerRunningState3) {
                        return;
                    }
                    synchronized (this.c) {
                        try {
                            if (this.e == j && this.d == workerRunningState3) {
                                this.d = workerRunningState;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    return;
                } catch (Error | RuntimeException e) {
                    synchronized (this.c) {
                        try {
                            WorkerRunningState workerRunningState4 = this.d;
                            if (workerRunningState4 != WorkerRunningState.IDLE && workerRunningState4 != WorkerRunningState.QUEUING) {
                                z = false;
                            } else if (this.c.removeLastOccurrence(runnable2)) {
                                z = true;
                            } else {
                                z = false;
                            }
                            if (!(e instanceof RejectedExecutionException) || z) {
                                throw e;
                            }
                            return;
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    }
                }
            }
            this.c.add(runnable);
        }
    }

    public String toString() {
        return "SequentialExecutor@" + System.identityHashCode(this) + "{" + this.b + StringSubstitutor.DEFAULT_VAR_END;
    }
}
