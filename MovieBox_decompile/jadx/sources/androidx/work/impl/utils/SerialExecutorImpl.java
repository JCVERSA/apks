package androidx.work.impl.utils;

import androidx.annotation.NonNull;
import java.util.ArrayDeque;
import java.util.concurrent.Executor;

public class SerialExecutorImpl implements k4.a {

    private final Executor f15327b;

    private Runnable f15328c;

    private final ArrayDeque f15326a = new ArrayDeque();

    final Object f15329d = new Object();

    static class Task implements Runnable {
        final Runnable mRunnable;
        final SerialExecutorImpl mSerialExecutor;

        Task(@NonNull SerialExecutorImpl serialExecutorImpl, @NonNull Runnable runnable) {
            this.mSerialExecutor = serialExecutorImpl;
            this.mRunnable = runnable;
        }

        @Override
        public void run() {
            try {
                this.mRunnable.run();
                synchronized (this.mSerialExecutor.f15329d) {
                    this.mSerialExecutor.a();
                }
            } catch (Throwable th2) {
                synchronized (this.mSerialExecutor.f15329d) {
                    this.mSerialExecutor.a();
                    throw th2;
                }
            }
        }
    }

    public SerialExecutorImpl(Executor executor) {
        this.f15327b = executor;
    }

    void a() {
        Runnable runnable = (Runnable) this.f15326a.poll();
        this.f15328c = runnable;
        if (runnable != null) {
            this.f15327b.execute(runnable);
        }
    }

    @Override
    public void execute(Runnable runnable) {
        synchronized (this.f15329d) {
            try {
                this.f15326a.add(new Task(this, runnable));
                if (this.f15328c == null) {
                    a();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public boolean n() {
        boolean z10;
        synchronized (this.f15329d) {
            z10 = !this.f15326a.isEmpty();
        }
        return z10;
    }
}
