package com.google.firebase.concurrent;

import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.logging.Logger;

final class SequentialExecutor implements Executor {

    private static final Logger f30249f = Logger.getLogger(SequentialExecutor.class.getName());

    private final Executor f30250a;

    private final Deque f30251b = new ArrayDeque();

    private WorkerRunningState f30252c = WorkerRunningState.IDLE;

    private long f30253d = 0;

    private final QueueWorker f30254e = new QueueWorker();

    private final class QueueWorker implements Runnable {
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
        
            com.google.firebase.concurrent.SequentialExecutor.f30249f.log(java.util.logging.Level.SEVERE, "Exception while executing runnable " + r8.task, (java.lang.Throwable) r3);
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
            boolean z10 = false;
            boolean zInterrupted = false;
            while (true) {
                try {
                    synchronized (SequentialExecutor.this.f30251b) {
                        if (!z10) {
                            WorkerRunningState workerRunningState = SequentialExecutor.this.f30252c;
                            WorkerRunningState workerRunningState2 = WorkerRunningState.RUNNING;
                            if (workerRunningState != workerRunningState2) {
                                SequentialExecutor.d(SequentialExecutor.this);
                                SequentialExecutor.this.f30252c = workerRunningState2;
                                z10 = true;
                            }
                        }
                        Runnable runnable = (Runnable) SequentialExecutor.this.f30251b.poll();
                        this.task = runnable;
                        if (runnable == null) {
                            SequentialExecutor.this.f30252c = WorkerRunningState.IDLE;
                        }
                    }
                    if (zInterrupted) {
                        Thread.currentThread().interrupt();
                        return;
                    }
                    return;
                    this.task = null;
                } catch (Throwable th2) {
                    if (zInterrupted) {
                        Thread.currentThread().interrupt();
                    }
                    throw th2;
                }
            }
        }

        @Override
        public void run() {
            try {
                workOnQueue();
            } catch (Error e10) {
                synchronized (SequentialExecutor.this.f30251b) {
                    SequentialExecutor.this.f30252c = WorkerRunningState.IDLE;
                    throw e10;
                }
            }
        }

        public String toString() {
            Runnable runnable = this.task;
            if (runnable != null) {
                return "SequentialExecutorWorker{running=" + runnable + "}";
            }
            return "SequentialExecutorWorker{state=" + SequentialExecutor.this.f30252c + "}";
        }
    }

    enum WorkerRunningState {
        IDLE,
        QUEUING,
        QUEUED,
        RUNNING
    }

    SequentialExecutor(Executor executor) {
        this.f30250a = (Executor) Preconditions.checkNotNull(executor);
    }

    static long d(SequentialExecutor sequentialExecutor) {
        long j10 = sequentialExecutor.f30253d;
        sequentialExecutor.f30253d = 1 + j10;
        return j10;
    }

    /* JADX WARN: Code duplicated, block: B:43:0x0061  */
    @Override
    public void execute(final Runnable runnable) {
        WorkerRunningState workerRunningState;
        boolean z10;
        Preconditions.checkNotNull(runnable);
        synchronized (this.f30251b) {
            WorkerRunningState workerRunningState2 = this.f30252c;
            if (workerRunningState2 != WorkerRunningState.RUNNING && workerRunningState2 != (workerRunningState = WorkerRunningState.QUEUED)) {
                long j10 = this.f30253d;
                Runnable runnable2 = new Runnable() {
                    @Override
                    public void run() {
                        runnable.run();
                    }

                    public String toString() {
                        return runnable.toString();
                    }
                };
                this.f30251b.add(runnable2);
                WorkerRunningState workerRunningState3 = WorkerRunningState.QUEUING;
                this.f30252c = workerRunningState3;
                try {
                    this.f30250a.execute(this.f30254e);
                    if (this.f30252c != workerRunningState3) {
                        return;
                    }
                    synchronized (this.f30251b) {
                        try {
                            if (this.f30253d == j10 && this.f30252c == workerRunningState3) {
                                this.f30252c = workerRunningState;
                            }
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    }
                    return;
                } catch (Error | RuntimeException e10) {
                    synchronized (this.f30251b) {
                        try {
                            WorkerRunningState workerRunningState4 = this.f30252c;
                            if (workerRunningState4 != WorkerRunningState.IDLE && workerRunningState4 != WorkerRunningState.QUEUING) {
                                z10 = false;
                            } else if (this.f30251b.removeLastOccurrence(runnable2)) {
                                z10 = true;
                            } else {
                                z10 = false;
                            }
                            if (!(e10 instanceof RejectedExecutionException) || z10) {
                                throw e10;
                            }
                        } catch (Throwable th3) {
                            throw th3;
                        }
                    }
                    return;
                }
            }
            this.f30251b.add(runnable);
        }
    }

    public String toString() {
        return "SequentialExecutor@" + System.identityHashCode(this) + "{" + this.f30250a + "}";
    }
}
