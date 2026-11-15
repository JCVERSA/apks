package com.google.common.util.concurrent;

import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;

public abstract class ExecutionSequencer {

    enum RunningState {
        NOT_RUN,
        CANCELLED,
        STARTED
    }

    private static final class TaskNonReentrantExecutor extends AtomicReference<RunningState> implements Executor, Runnable {
        Executor delegate;
        ExecutionSequencer sequencer;
        Thread submitting;
        Runnable task;

        TaskNonReentrantExecutor(Executor executor, ExecutionSequencer executionSequencer, h hVar) {
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
            } catch (Throwable th2) {
                this.submitting = null;
                throw th2;
            }
        }

        @Override
        public void run() {
            Thread threadCurrentThread = Thread.currentThread();
            h hVar = null;
            if (threadCurrentThread == this.submitting) {
                new a(hVar).f30175a = threadCurrentThread;
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

    private static final class a {

        Thread f30175a;

        private a() {
        }

        a(h hVar) {
            this();
        }
    }
}
