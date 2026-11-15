package com.transsion.socket.internal;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Process;
import java.util.List;
import java.util.concurrent.AbstractExecutorService;
import java.util.concurrent.TimeUnit;

public class LooperExecutor extends AbstractExecutorService {
    private final Handler mHandler;

    public LooperExecutor(Looper looper) {
        this.mHandler = new Handler(looper);
    }

    @Override
    @Deprecated
    public boolean awaitTermination(long j, TimeUnit timeUnit) throws InterruptedException {
        throw new UnsupportedOperationException();
    }

    @Override
    public void execute(Runnable runnable) {
        if (this.mHandler.getLooper() == Looper.myLooper()) {
            runnable.run();
        } else {
            this.mHandler.post(runnable);
        }
    }

    public Handler getHandler() {
        return this.mHandler;
    }

    public Looper getLooper() {
        return getHandler().getLooper();
    }

    public Thread getThread() {
        return getHandler().getLooper().getThread();
    }

    public boolean isOnMyself() {
        return this.mHandler.getLooper() == Looper.myLooper();
    }

    @Override
    public boolean isShutdown() {
        return false;
    }

    @Override
    public boolean isTerminated() {
        return false;
    }

    public void post(Runnable runnable) {
        getHandler().post(runnable);
    }

    public void postDelayed(Runnable runnable, long j) {
        getHandler().postDelayed(runnable, j);
    }

    public void removeCallbacks(Runnable runnable) {
        getHandler().removeCallbacks(runnable);
    }

    public void setThreadPriority(int i) {
        Process.setThreadPriority(((HandlerThread) getThread()).getThreadId(), i);
    }

    @Override
    @Deprecated
    public void shutdown() {
        throw new UnsupportedOperationException();
    }

    @Override
    @Deprecated
    public List<Runnable> shutdownNow() {
        throw new UnsupportedOperationException();
    }
}
