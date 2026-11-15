package com.google.common.util.concurrent;

import defpackage.af3;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;

public abstract class ExecutionSequencer {

    public enum RunningState {
        NOT_RUN,
        CANCELLED,
        STARTED
    }

    public static final class TaskNonReentrantExecutor extends AtomicReference<RunningState> implements Executor, Runnable {
        Executor delegate;
        ExecutionSequencer sequencer;
        Thread submitting;
        Runnable task;

        public TaskNonReentrantExecutor(Executor executor, ExecutionSequencer executionSequencer, af3 af3Var) {
            this(executor, executionSequencer);
        }

        public boolean trySetCancelled() {
            return compareAndSet(RunningState.NOT_RUN, RunningState.CANCELLED);
        }

        public boolean trySetStarted() {
            return compareAndSet(RunningState.NOT_RUN, RunningState.STARTED);
        }

        @Override
        public void execute(Runnable runnable) {
            if (get() == RunningState.CANCELLED) {
                this.delegate = null;
                return;
            }
            this.submitting = Thread.currentThread();
            try {
                throw null;
            } catch (Throwable th) {
                this.submitting = null;
                throw th;
            }
        }

        @Override
        public void run() {
            Thread threadCurrentThread = Thread.currentThread();
            af3 af3Var = null;
            if (threadCurrentThread == this.submitting) {
                new a(af3Var).a = threadCurrentThread;
                throw null;
            }
            Runnable runnable = this.task;
            Objects.requireNonNull(runnable);
            this.task = null;
            runnable.run();
        }

        private TaskNonReentrantExecutor(Executor executor, ExecutionSequencer executionSequencer) {
            super(RunningState.NOT_RUN);
            this.delegate = executor;
        }
    }

    public static final class a {
        public Thread a;

        public a() {
        }

        public a(af3 af3Var) {
            this();
        }
    }
}
