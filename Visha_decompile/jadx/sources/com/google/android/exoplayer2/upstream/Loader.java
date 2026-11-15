package com.google.android.exoplayer2.upstream;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import androidx.media3.common.C;
import defpackage.blb;
import defpackage.op5;
import defpackage.sua;
import defpackage.zi;
import java.io.IOException;
import java.util.concurrent.ExecutorService;

public final class Loader {
    public static final c d;
    public static final c e;
    public static final c f;
    public static final c g;
    public final ExecutorService a;
    public LoadTask b;
    public IOException c;

    @SuppressLint({"HandlerLeak"})
    public final class LoadTask<T extends d> extends Handler implements Runnable {
        private static final int MSG_FATAL_ERROR = 3;
        private static final int MSG_FINISH = 1;
        private static final int MSG_IO_EXCEPTION = 2;
        private static final int MSG_START = 0;
        private static final String TAG = "LoadTask";

        @Nullable
        private b callback;
        private boolean canceled;

        @Nullable
        private IOException currentError;
        public final int defaultMinRetryCount;
        private int errorCount;

        @Nullable
        private Thread executorThread;
        private final T loadable;
        private volatile boolean released;
        private final long startTimeMs;

        public LoadTask(Looper looper, T t, b bVar, int i, long j) {
            super(looper);
            this.loadable = t;
            this.callback = bVar;
            this.defaultMinRetryCount = i;
            this.startTimeMs = j;
        }

        private void execute() {
            this.currentError = null;
            Loader.this.a.execute((Runnable) zi.e(Loader.this.b));
        }

        private void finish() {
            Loader.this.b = null;
        }

        private long getRetryDelayMillis() {
            return Math.min((this.errorCount - 1) * 1000, 5000);
        }

        public void cancel(boolean z) {
            this.released = z;
            this.currentError = null;
            if (hasMessages(0)) {
                this.canceled = true;
                removeMessages(0);
                if (!z) {
                    sendEmptyMessage(1);
                }
            } else {
                synchronized (this) {
                    try {
                        this.canceled = true;
                        this.loadable.cancelLoad();
                        Thread thread = this.executorThread;
                        if (thread != null) {
                            thread.interrupt();
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            if (z) {
                finish();
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                ((b) zi.e(this.callback)).e(this.loadable, jElapsedRealtime, jElapsedRealtime - this.startTimeMs, true);
                this.callback = null;
            }
        }

        @Override
        public void handleMessage(Message message) {
            if (this.released) {
                return;
            }
            int i = message.what;
            if (i == 0) {
                execute();
                return;
            }
            if (i == 3) {
                throw ((Error) message.obj);
            }
            finish();
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            long j = jElapsedRealtime - this.startTimeMs;
            b bVar = (b) zi.e(this.callback);
            if (this.canceled) {
                bVar.e(this.loadable, jElapsedRealtime, j, false);
                return;
            }
            int i2 = message.what;
            if (i2 == 1) {
                try {
                    bVar.f(this.loadable, jElapsedRealtime, j);
                    return;
                } catch (RuntimeException e) {
                    op5.d(TAG, "Unexpected exception handling load completed", e);
                    Loader.this.c = new UnexpectedLoaderException(e);
                    return;
                }
            }
            if (i2 != 2) {
                return;
            }
            IOException iOException = (IOException) message.obj;
            this.currentError = iOException;
            int i3 = this.errorCount + 1;
            this.errorCount = i3;
            c cVarH = bVar.h(this.loadable, jElapsedRealtime, j, iOException, i3);
            if (cVarH.a == 3) {
                Loader.this.c = this.currentError;
            } else if (cVarH.a != 2) {
                if (cVarH.a == 1) {
                    this.errorCount = 1;
                }
                start(cVarH.b != C.TIME_UNSET ? cVarH.b : getRetryDelayMillis());
            }
        }

        public void maybeThrowError(int i) throws IOException {
            IOException iOException = this.currentError;
            if (iOException != null && this.errorCount > i) {
                throw iOException;
            }
        }

        @Override
        public void run() {
            boolean z;
            try {
                synchronized (this) {
                    z = this.canceled;
                    this.executorThread = Thread.currentThread();
                }
                if (!z) {
                    sua.a("load:" + this.loadable.getClass().getSimpleName());
                    try {
                        this.loadable.load();
                        sua.c();
                    } catch (Throwable th) {
                        sua.c();
                        throw th;
                    }
                }
                synchronized (this) {
                    this.executorThread = null;
                    Thread.interrupted();
                }
                if (this.released) {
                    return;
                }
                sendEmptyMessage(1);
            } catch (IOException e) {
                if (this.released) {
                    return;
                }
                obtainMessage(2, e).sendToTarget();
            } catch (Error e2) {
                if (!this.released) {
                    op5.d(TAG, "Unexpected error loading stream", e2);
                    obtainMessage(3, e2).sendToTarget();
                }
                throw e2;
            } catch (Exception e3) {
                if (this.released) {
                    return;
                }
                op5.d(TAG, "Unexpected exception loading stream", e3);
                obtainMessage(2, new UnexpectedLoaderException(e3)).sendToTarget();
            } catch (OutOfMemoryError e4) {
                if (this.released) {
                    return;
                }
                op5.d(TAG, "OutOfMemory error loading stream", e4);
                obtainMessage(2, new UnexpectedLoaderException(e4)).sendToTarget();
            }
        }

        public void start(long j) {
            zi.g(Loader.this.b == null);
            Loader.this.b = this;
            if (j > 0) {
                sendEmptyMessageDelayed(0, j);
            } else {
                execute();
            }
        }
    }

    public static final class ReleaseTask implements Runnable {
        private final e callback;

        public ReleaseTask(e eVar) {
            this.callback = eVar;
        }

        @Override
        public void run() {
            this.callback.onLoaderReleased();
        }
    }

    public static final class UnexpectedLoaderException extends IOException {
        public UnexpectedLoaderException(Throwable th) {
            super("Unexpected " + th.getClass().getSimpleName() + ": " + th.getMessage(), th);
        }
    }

    public interface b {
        void e(d dVar, long j, long j2, boolean z);

        void f(d dVar, long j, long j2);

        c h(d dVar, long j, long j2, IOException iOException, int i);
    }

    public static final class c {
        public final int a;
        public final long b;

        public boolean c() {
            int i = this.a;
            return i == 0 || i == 1;
        }

        public c(int i, long j) {
            this.a = i;
            this.b = j;
        }
    }

    public interface d {
        void cancelLoad();

        void load();
    }

    public interface e {
        void onLoaderReleased();
    }

    static {
        long j = C.TIME_UNSET;
        d = g(false, C.TIME_UNSET);
        e = g(true, C.TIME_UNSET);
        f = new c(2, j);
        g = new c(3, j);
    }

    public Loader(String str) {
        this.a = blb.u0("ExoPlayer:Loader:" + str);
    }

    public static c g(boolean z, long j) {
        return new c(z ? 1 : 0, j);
    }

    public void e() {
        ((LoadTask) zi.i(this.b)).cancel(false);
    }

    public void f() {
        this.c = null;
    }

    public boolean h() {
        return this.c != null;
    }

    public boolean i() {
        return this.b != null;
    }

    public void j() throws IOException {
        k(Integer.MIN_VALUE);
    }

    public void k(int i) throws IOException {
        IOException iOException = this.c;
        if (iOException != null) {
            throw iOException;
        }
        LoadTask loadTask = this.b;
        if (loadTask != null) {
            if (i == Integer.MIN_VALUE) {
                i = loadTask.defaultMinRetryCount;
            }
            loadTask.maybeThrowError(i);
        }
    }

    public void l() {
        m(null);
    }

    public void m(e eVar) {
        LoadTask loadTask = this.b;
        if (loadTask != null) {
            loadTask.cancel(true);
        }
        if (eVar != null) {
            this.a.execute(new ReleaseTask(eVar));
        }
        this.a.shutdown();
    }

    public long n(d dVar, b bVar, int i) {
        Looper looper = (Looper) zi.i(Looper.myLooper());
        this.c = null;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        new LoadTask(looper, dVar, bVar, i, jElapsedRealtime).start(0L);
        return jElapsedRealtime;
    }
}
