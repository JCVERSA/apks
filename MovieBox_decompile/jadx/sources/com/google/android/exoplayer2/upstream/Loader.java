package com.google.android.exoplayer2.upstream;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.m0;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;
import java.util.concurrent.ExecutorService;

public final class Loader implements a0 {

    public static final c f26472d;

    public static final c f26473e;

    public static final c f26474f;

    public static final c f26475g;

    private final ExecutorService f26476a;

    private LoadTask f26477b;

    private IOException f26478c;

    @SuppressLint({"HandlerLeak"})
    private final class LoadTask<T extends d> extends Handler implements Runnable {
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

        public LoadTask(Looper looper, T t10, b bVar, int i10, long j10) {
            super(looper);
            this.loadable = t10;
            this.callback = bVar;
            this.defaultMinRetryCount = i10;
            this.startTimeMs = j10;
        }

        private void execute() {
            this.currentError = null;
            Loader.this.f26476a.execute((Runnable) com.google.android.exoplayer2.util.a.e(Loader.this.f26477b));
        }

        private void finish() {
            Loader.this.f26477b = null;
        }

        private long getRetryDelayMillis() {
            return Math.min((this.errorCount - 1) * 1000, 5000);
        }

        public void cancel(boolean z10) {
            this.released = z10;
            this.currentError = null;
            if (hasMessages(0)) {
                this.canceled = true;
                removeMessages(0);
                if (!z10) {
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
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
            if (z10) {
                finish();
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                ((b) com.google.android.exoplayer2.util.a.e(this.callback)).j(this.loadable, jElapsedRealtime, jElapsedRealtime - this.startTimeMs, true);
                this.callback = null;
            }
        }

        @Override
        public void handleMessage(Message message) {
            if (this.released) {
                return;
            }
            int i10 = message.what;
            if (i10 == 0) {
                execute();
                return;
            }
            if (i10 == 3) {
                throw ((Error) message.obj);
            }
            finish();
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            long j10 = jElapsedRealtime - this.startTimeMs;
            b bVar = (b) com.google.android.exoplayer2.util.a.e(this.callback);
            if (this.canceled) {
                bVar.j(this.loadable, jElapsedRealtime, j10, false);
                return;
            }
            int i11 = message.what;
            if (i11 == 1) {
                try {
                    bVar.l(this.loadable, jElapsedRealtime, j10);
                    return;
                } catch (RuntimeException e10) {
                    com.google.android.exoplayer2.util.s.d(TAG, "Unexpected exception handling load completed", e10);
                    Loader.this.f26478c = new UnexpectedLoaderException(e10);
                    return;
                }
            }
            if (i11 != 2) {
                return;
            }
            IOException iOException = (IOException) message.obj;
            this.currentError = iOException;
            int i12 = this.errorCount + 1;
            this.errorCount = i12;
            c cVarN = bVar.n(this.loadable, jElapsedRealtime, j10, iOException, i12);
            if (cVarN.f26479a == 3) {
                Loader.this.f26478c = this.currentError;
            } else if (cVarN.f26479a != 2) {
                if (cVarN.f26479a == 1) {
                    this.errorCount = 1;
                }
                start(cVarN.f26480b != C.TIME_UNSET ? cVarN.f26480b : getRetryDelayMillis());
            }
        }

        public void maybeThrowError(int i10) throws IOException {
            IOException iOException = this.currentError;
            if (iOException != null && this.errorCount > i10) {
                throw iOException;
            }
        }

        @Override
        public void run() {
            boolean z10;
            try {
                synchronized (this) {
                    z10 = this.canceled;
                    this.executorThread = Thread.currentThread();
                }
                if (!z10) {
                    m0.a("load:" + this.loadable.getClass().getSimpleName());
                    try {
                        this.loadable.load();
                        m0.c();
                    } catch (Throwable th2) {
                        m0.c();
                        throw th2;
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
            } catch (IOException e10) {
                if (this.released) {
                    return;
                }
                obtainMessage(2, e10).sendToTarget();
            } catch (Error e11) {
                if (!this.released) {
                    com.google.android.exoplayer2.util.s.d(TAG, "Unexpected error loading stream", e11);
                    obtainMessage(3, e11).sendToTarget();
                }
                throw e11;
            } catch (Exception e12) {
                if (this.released) {
                    return;
                }
                com.google.android.exoplayer2.util.s.d(TAG, "Unexpected exception loading stream", e12);
                obtainMessage(2, new UnexpectedLoaderException(e12)).sendToTarget();
            } catch (OutOfMemoryError e13) {
                if (this.released) {
                    return;
                }
                com.google.android.exoplayer2.util.s.d(TAG, "OutOfMemory error loading stream", e13);
                obtainMessage(2, new UnexpectedLoaderException(e13)).sendToTarget();
            }
        }

        public void start(long j10) {
            com.google.android.exoplayer2.util.a.g(Loader.this.f26477b == null);
            Loader.this.f26477b = this;
            if (j10 > 0) {
                sendEmptyMessageDelayed(0, j10);
            } else {
                execute();
            }
        }
    }

    private static final class ReleaseTask implements Runnable {
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
        public UnexpectedLoaderException(Throwable th2) {
            super("Unexpected " + th2.getClass().getSimpleName() + ": " + th2.getMessage(), th2);
        }
    }

    public interface b {
        void j(d dVar, long j10, long j11, boolean z10);

        void l(d dVar, long j10, long j11);

        c n(d dVar, long j10, long j11, IOException iOException, int i10);
    }

    public static final class c {

        private final int f26479a;

        private final long f26480b;

        public boolean c() {
            int i10 = this.f26479a;
            return i10 == 0 || i10 == 1;
        }

        private c(int i10, long j10) {
            this.f26479a = i10;
            this.f26480b = j10;
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
        long j10 = C.TIME_UNSET;
        f26472d = g(false, C.TIME_UNSET);
        f26473e = g(true, C.TIME_UNSET);
        f26474f = new c(2, j10);
        f26475g = new c(3, j10);
    }

    public Loader(String str) {
        this.f26476a = p0.C0("ExoPlayer:Loader:" + str);
    }

    public static c g(boolean z10, long j10) {
        return new c(z10 ? 1 : 0, j10);
    }

    public void e() {
        ((LoadTask) com.google.android.exoplayer2.util.a.i(this.f26477b)).cancel(false);
    }

    public void f() {
        this.f26478c = null;
    }

    public boolean h() {
        return this.f26478c != null;
    }

    public boolean i() {
        return this.f26477b != null;
    }

    public void j(int i10) throws IOException {
        IOException iOException = this.f26478c;
        if (iOException != null) {
            throw iOException;
        }
        LoadTask loadTask = this.f26477b;
        if (loadTask != null) {
            if (i10 == Integer.MIN_VALUE) {
                i10 = loadTask.defaultMinRetryCount;
            }
            loadTask.maybeThrowError(i10);
        }
    }

    public void k() {
        l(null);
    }

    public void l(e eVar) {
        LoadTask loadTask = this.f26477b;
        if (loadTask != null) {
            loadTask.cancel(true);
        }
        if (eVar != null) {
            this.f26476a.execute(new ReleaseTask(eVar));
        }
        this.f26476a.shutdown();
    }

    public long m(d dVar, b bVar, int i10) {
        Looper looper = (Looper) com.google.android.exoplayer2.util.a.i(Looper.myLooper());
        this.f26478c = null;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        new LoadTask(looper, dVar, bVar, i10, jElapsedRealtime).start(0L);
        return jElapsedRealtime;
    }

    @Override
    public void maybeThrowError() throws IOException {
        j(Integer.MIN_VALUE);
    }
}
