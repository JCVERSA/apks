package com.bumptech.glide.request;

import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.request.target.SizeReadyCallback;
import com.bumptech.glide.request.target.Target;
import com.bumptech.glide.request.transition.Transition;
import com.bumptech.glide.util.Util;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public class RequestFutureTarget<R> implements FutureTarget<R>, RequestListener<R> {
    private static final Waiter DEFAULT_WAITER = new Waiter();
    private final boolean assertBackgroundThread;

    @Nullable
    private GlideException exception;
    private final int height;
    private boolean isCancelled;
    private boolean loadFailed;

    @Nullable
    private Request request;

    @Nullable
    private R resource;
    private boolean resultReceived;
    private final Waiter waiter;
    private final int width;

    static class Waiter {
        Waiter() {
        }

        void notifyAll(Object obj) {
            obj.notifyAll();
        }

        void waitForTimeout(Object obj, long j10) throws InterruptedException {
            obj.wait(j10);
        }
    }

    public RequestFutureTarget(int i10, int i11) {
        this(i10, i11, true, DEFAULT_WAITER);
    }

    private synchronized R doGet(Long l10) throws ExecutionException, InterruptedException, TimeoutException {
        try {
            if (this.assertBackgroundThread && !isDone()) {
                Util.assertBackgroundThread();
            }
            if (this.isCancelled) {
                throw new CancellationException();
            }
            if (this.loadFailed) {
                throw new ExecutionException(this.exception);
            }
            if (this.resultReceived) {
                return this.resource;
            }
            if (l10 == null) {
                this.waiter.waitForTimeout(this, 0L);
            } else if (l10.longValue() > 0) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                long jLongValue = l10.longValue() + jCurrentTimeMillis;
                while (!isDone() && jCurrentTimeMillis < jLongValue) {
                    this.waiter.waitForTimeout(this, jLongValue - jCurrentTimeMillis);
                    jCurrentTimeMillis = System.currentTimeMillis();
                }
            }
            if (Thread.interrupted()) {
                throw new InterruptedException();
            }
            if (this.loadFailed) {
                throw new ExecutionException(this.exception);
            }
            if (this.isCancelled) {
                throw new CancellationException();
            }
            if (!this.resultReceived) {
                throw new TimeoutException();
            }
            return this.resource;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override
    public boolean cancel(boolean z10) {
        synchronized (this) {
            try {
                if (isDone()) {
                    return false;
                }
                this.isCancelled = true;
                this.waiter.notifyAll(this);
                Request request = null;
                if (z10) {
                    Request request2 = this.request;
                    this.request = null;
                    request = request2;
                }
                if (request != null) {
                    request.clear();
                }
                return true;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public R get() throws ExecutionException, InterruptedException {
        try {
            return doGet(null);
        } catch (TimeoutException e10) {
            throw new AssertionError(e10);
        }
    }

    @Override
    @Nullable
    public synchronized Request getRequest() {
        return this.request;
    }

    @Override
    public void getSize(@NonNull SizeReadyCallback sizeReadyCallback) {
        sizeReadyCallback.onSizeReady(this.width, this.height);
    }

    @Override
    public synchronized boolean isCancelled() {
        return this.isCancelled;
    }

    @Override
    public synchronized boolean isDone() {
        return this.isCancelled || this.resultReceived || this.loadFailed;
    }

    @Override
    public synchronized void onLoadFailed(@Nullable Drawable drawable) {
    }

    @Override
    public synchronized void onResourceReady(@NonNull R r10, @Nullable Transition<? super R> transition) {
    }

    @Override
    public synchronized void setRequest(@Nullable Request request) {
        this.request = request;
    }

    public String toString() {
        Request request;
        String str;
        String str2 = super.toString() + "[status=";
        synchronized (this) {
            try {
                request = null;
                if (this.isCancelled) {
                    str = "CANCELLED";
                } else if (this.loadFailed) {
                    str = "FAILURE";
                } else if (this.resultReceived) {
                    str = "SUCCESS";
                } else {
                    str = "PENDING";
                    request = this.request;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (request == null) {
            return str2 + str + "]";
        }
        return str2 + str + ", request=[" + request + "]]";
    }

    RequestFutureTarget(int i10, int i11, boolean z10, Waiter waiter) {
        this.width = i10;
        this.height = i11;
        this.assertBackgroundThread = z10;
        this.waiter = waiter;
    }

    @Override
    public synchronized boolean onLoadFailed(@Nullable GlideException glideException, Object obj, @NonNull Target<R> target, boolean z10) {
        this.loadFailed = true;
        this.exception = glideException;
        this.waiter.notifyAll(this);
        return false;
    }

    @Override
    public synchronized boolean onResourceReady(@NonNull R r10, @NonNull Object obj, Target<R> target, @NonNull DataSource dataSource, boolean z10) {
        this.resultReceived = true;
        this.resource = r10;
        this.waiter.notifyAll(this);
        return false;
    }

    @Override
    public R get(long j10, @NonNull TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        return doGet(Long.valueOf(timeUnit.toMillis(j10)));
    }

    @Override
    public void onDestroy() {
    }

    @Override
    public void onStart() {
    }

    @Override
    public void onStop() {
    }

    @Override
    public void onLoadCleared(@Nullable Drawable drawable) {
    }

    @Override
    public void onLoadStarted(@Nullable Drawable drawable) {
    }

    @Override
    public void removeCallback(@NonNull SizeReadyCallback sizeReadyCallback) {
    }
}
