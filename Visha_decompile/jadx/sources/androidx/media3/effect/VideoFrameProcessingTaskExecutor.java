package androidx.media3.effect;

import androidx.annotation.GuardedBy;
import androidx.media3.common.VideoFrameProcessingException;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.GlUtil;
import java.util.ArrayDeque;
import java.util.Queue;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

final class VideoFrameProcessingTaskExecutor {
    private static final long EXECUTOR_SERVICE_TIMEOUT_MS = 500;
    private final ErrorListener errorListener;

    @GuardedBy("lock")
    private boolean shouldCancelTasks;
    private final boolean shouldShutdownExecutorService;
    private final ExecutorService singleThreadExecutorService;
    private final Future<Thread> threadFuture;
    private final Object lock = new Object();

    @GuardedBy("lock")
    private final Queue<Task> highPriorityTasks = new ArrayDeque();

    public interface ErrorListener {
        void onError(VideoFrameProcessingException videoFrameProcessingException);
    }

    public interface Task {
        void run() throws VideoFrameProcessingException, GlUtil.GlException;
    }

    public VideoFrameProcessingTaskExecutor(ExecutorService executorService, boolean z, ErrorListener errorListener) {
        this.singleThreadExecutorService = executorService;
        this.threadFuture = executorService.submit(new Callable() {
            @Override
            public final Object call() {
                return Thread.currentThread();
            }
        });
        this.shouldShutdownExecutorService = z;
        this.errorListener = errorListener;
    }

    private void handleException(Exception exc) {
        synchronized (this.lock) {
            try {
                if (this.shouldCancelTasks) {
                    return;
                }
                this.shouldCancelTasks = true;
                this.errorListener.onError(VideoFrameProcessingException.from(exc));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private boolean isRunningOnVideoFrameProcessingThread() throws InterruptedException {
        try {
            return Thread.currentThread() == this.threadFuture.get(500L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            throw e;
        } catch (Exception e2) {
            handleException(e2);
            return false;
        }
    }

    public void lambda$flush$2(CountDownLatch countDownLatch) throws VideoFrameProcessingException, GlUtil.GlException {
        synchronized (this.lock) {
            this.shouldCancelTasks = false;
        }
        countDownLatch.countDown();
    }

    public void lambda$invoke$0(Task task) {
        try {
            task.run();
        } catch (Exception e) {
            handleException(e);
        }
    }

    public static void lambda$submitWithHighPriority$1() throws VideoFrameProcessingException, GlUtil.GlException {
    }

    public void lambda$wrapTaskAndSubmitToExecutorService$3(boolean z, Task task) {
        Task taskPoll;
        try {
            synchronized (this.lock) {
                try {
                    if (this.shouldCancelTasks && z) {
                        return;
                    }
                    while (true) {
                        synchronized (this.lock) {
                            taskPoll = this.highPriorityTasks.poll();
                        }
                        if (taskPoll == null) {
                            task.run();
                            return;
                        }
                        taskPoll.run();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (Exception e) {
            handleException(e);
        }
    }

    private Future<?> wrapTaskAndSubmitToExecutorService(final Task task, final boolean z) {
        return this.singleThreadExecutorService.submit(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$wrapTaskAndSubmitToExecutorService$3(z, task);
            }
        });
    }

    public void flush() throws InterruptedException {
        synchronized (this.lock) {
            this.shouldCancelTasks = true;
            this.highPriorityTasks.clear();
        }
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        wrapTaskAndSubmitToExecutorService(new Task() {
            @Override
            public final void run() throws VideoFrameProcessingException, GlUtil.GlException {
                this.a.lambda$flush$2(countDownLatch);
            }
        }, false);
        countDownLatch.await();
    }

    public void invoke(final Task task) throws InterruptedException {
        if (isRunningOnVideoFrameProcessingThread()) {
            try {
                task.run();
                return;
            } catch (Exception e) {
                handleException(e);
                return;
            }
        }
        try {
            this.singleThreadExecutorService.submit(new Runnable() {
                @Override
                public final void run() {
                    this.b.lambda$invoke$0(task);
                }
            }).get(500L, TimeUnit.MILLISECONDS);
        } catch (RuntimeException | ExecutionException | TimeoutException e2) {
            handleException(e2);
        }
    }

    public void release(Task task) throws InterruptedException {
        Assertions.checkState(!isRunningOnVideoFrameProcessingThread());
        synchronized (this.lock) {
            this.shouldCancelTasks = true;
            this.highPriorityTasks.clear();
        }
        wrapTaskAndSubmitToExecutorService(task, false);
        if (this.shouldShutdownExecutorService) {
            this.singleThreadExecutorService.shutdown();
            if (this.singleThreadExecutorService.awaitTermination(500L, TimeUnit.MILLISECONDS)) {
                return;
            }
            this.errorListener.onError(new VideoFrameProcessingException("Release timed out. OpenGL resources may not be cleaned up properly."));
        }
    }

    public void submit(Task task, boolean z) {
        synchronized (this.lock) {
            if (this.shouldCancelTasks && z) {
                return;
            }
            try {
                wrapTaskAndSubmitToExecutorService(task, z);
                e = null;
            } catch (RejectedExecutionException e) {
                e = e;
            }
            if (e != null) {
                handleException(e);
            }
        }
    }

    public void submitWithHighPriority(Task task) {
        synchronized (this.lock) {
            try {
                if (this.shouldCancelTasks) {
                    return;
                }
                this.highPriorityTasks.add(task);
                submit(new Task() {
                    @Override
                    public final void run() throws VideoFrameProcessingException, GlUtil.GlException {
                        VideoFrameProcessingTaskExecutor.lambda$submitWithHighPriority$1();
                    }
                });
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void verifyVideoFrameProcessingThread() {
        try {
            Assertions.checkState(isRunningOnVideoFrameProcessingThread());
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            handleException(e);
        }
    }

    public void submit(Task task) {
        submit(task, true);
    }
}
