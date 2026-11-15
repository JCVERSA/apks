package com.google.common.util.concurrent;

import defpackage.kj5;
import java.util.Deque;
import java.util.concurrent.Executor;
import org.apache.commons.text.StringSubstitutor;

public abstract class SequentialExecutor implements Executor {
    public static final kj5 b = new kj5(SequentialExecutor.class);

    class AnonymousClass1 implements Runnable {
        final SequentialExecutor this$0;
        final Runnable val$task;

        public AnonymousClass1(SequentialExecutor sequentialExecutor, Runnable runnable) {
            this.val$task = runnable;
        }

        @Override
        public void run() {
            this.val$task.run();
        }

        public String toString() {
            return this.val$task.toString();
        }
    }

    public final class QueueWorker implements Runnable {
        Runnable task;
        final SequentialExecutor this$0;

        private QueueWorker(SequentialExecutor sequentialExecutor) {
        }

        /* JADX WARN: Code restructure failed: missing block: B:20:0x003a, code lost:
        
            if (r1 == false) goto L52;
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x003c, code lost:
        
            java.lang.Thread.currentThread().interrupt();
         */
        /* JADX WARN: Code restructure failed: missing block: B:22:0x0043, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:25:0x0049, code lost:
        
            r1 = r1 | java.lang.Thread.interrupted();
         */
        /* JADX WARN: Code restructure failed: missing block: B:26:0x004a, code lost:
        
            r8.task.run();
         */
        /* JADX WARN: Code restructure failed: missing block: B:31:0x0054, code lost:
        
            r0 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:33:0x0056, code lost:
        
            r3 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:34:0x0057, code lost:
        
            com.google.common.util.concurrent.SequentialExecutor.b.a().log(java.util.logging.Level.SEVERE, "Exception while executing runnable " + r8.task, (java.lang.Throwable) r3);
         */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x0078, code lost:
        
            r8.task = null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:37:0x007a, code lost:
        
            throw r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:52:?, code lost:
        
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
                    synchronized (SequentialExecutor.a(null)) {
                        if (!z) {
                            WorkerRunningState workerRunningStateB = SequentialExecutor.b(null);
                            WorkerRunningState workerRunningState = WorkerRunningState.RUNNING;
                            if (workerRunningStateB != workerRunningState) {
                                SequentialExecutor.d(null);
                                SequentialExecutor.c(null, workerRunningState);
                                z = true;
                            }
                        }
                        Runnable runnable = (Runnable) SequentialExecutor.a(null).poll();
                        this.task = runnable;
                        if (runnable == null) {
                            SequentialExecutor.c(null, WorkerRunningState.IDLE);
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
                synchronized (SequentialExecutor.a(null)) {
                    SequentialExecutor.c(null, WorkerRunningState.IDLE);
                    throw e;
                }
            }
        }

        public String toString() {
            Runnable runnable = this.task;
            if (runnable != null) {
                return "SequentialExecutorWorker{running=" + runnable + StringSubstitutor.DEFAULT_VAR_END;
            }
            return "SequentialExecutorWorker{state=" + SequentialExecutor.b(null) + StringSubstitutor.DEFAULT_VAR_END;
        }

        public QueueWorker(SequentialExecutor sequentialExecutor, AnonymousClass1 anonymousClass1) {
            this(sequentialExecutor);
        }
    }

    public enum WorkerRunningState {
        IDLE,
        QUEUING,
        QUEUED,
        RUNNING
    }

    public static Deque a(SequentialExecutor sequentialExecutor) {
        throw null;
    }

    public static WorkerRunningState b(SequentialExecutor sequentialExecutor) {
        throw null;
    }

    public static WorkerRunningState c(SequentialExecutor sequentialExecutor, WorkerRunningState workerRunningState) {
        throw null;
    }

    public static long d(SequentialExecutor sequentialExecutor) {
        throw null;
    }
}
