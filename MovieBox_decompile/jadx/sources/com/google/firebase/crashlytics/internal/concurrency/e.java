package com.google.firebase.crashlytics.internal.concurrency;

import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;

public class e implements Executor {

    private final ExecutorService f30482a;

    private final Object f30483b = new Object();

    private Task f30484c = Tasks.forResult(null);

    e(ExecutorService executorService) {
        this.f30482a = executorService;
    }

    public static Task d(Runnable runnable, Task task) {
        runnable.run();
        return Tasks.forResult(null);
    }

    public static Task e(Callable callable, Task task) {
        return (Task) callable.call();
    }

    public ExecutorService c() {
        return this.f30482a;
    }

    @Override
    public void execute(Runnable runnable) {
        this.f30482a.execute(runnable);
    }

    public Task f(final Runnable runnable) {
        Task taskContinueWithTask;
        synchronized (this.f30483b) {
            taskContinueWithTask = this.f30484c.continueWithTask(this.f30482a, new Continuation() {
                @Override
                public final Object then(Task task) {
                    return e.d(runnable, task);
                }
            });
            this.f30484c = taskContinueWithTask;
        }
        return taskContinueWithTask;
    }

    public Task g(final Callable callable) {
        Task taskContinueWithTask;
        synchronized (this.f30483b) {
            taskContinueWithTask = this.f30484c.continueWithTask(this.f30482a, new Continuation() {
                @Override
                public final Object then(Task task) {
                    return e.e(callable, task);
                }
            });
            this.f30484c = taskContinueWithTask;
        }
        return taskContinueWithTask;
    }
}
