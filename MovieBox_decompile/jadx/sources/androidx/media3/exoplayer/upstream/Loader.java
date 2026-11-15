package androidx.media3.exoplayer.upstream;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.q0;
import androidx.media3.common.util.u;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;
import java.util.concurrent.ExecutorService;

public final class Loader implements p {

    public static final c f12635d;

    public static final c f12636e;

    public static final c f12637f;

    public static final c f12638g;

    private final androidx.media3.exoplayer.util.c f12639a;

    private LoadTask f12640b;

    private IOException f12641c;

    @SuppressLint({"HandlerLeak"})
    private final class LoadTask<T extends d> extends Handler implements Runnable {
        private static final int MSG_FATAL_ERROR = 4;
        private static final int MSG_FINISH = 2;
        private static final int MSG_IO_EXCEPTION = 3;
        private static final int MSG_START = 1;
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
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            ((b) androidx.media3.common.util.a.e(this.callback)).o(this.loadable, jElapsedRealtime, jElapsedRealtime - this.startTimeMs, this.errorCount);
            this.currentError = null;
            Loader.this.f12639a.execute((Runnable) androidx.media3.common.util.a.e(Loader.this.f12640b));
        }

        private void finish() {
            Loader.this.f12640b = null;
        }

        private long getRetryDelayMillis() {
            return Math.min((this.errorCount - 1) * 1000, 5000);
        }

        public void cancel(boolean z10) {
            this.released = z10;
            this.currentError = null;
            if (hasMessages(1)) {
                this.canceled = true;
                removeMessages(1);
                if (!z10) {
                    sendEmptyMessage(2);
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
                ((b) androidx.media3.common.util.a.e(this.callback)).q(this.loadable, jElapsedRealtime, jElapsedRealtime - this.startTimeMs, true);
                this.callback = null;
            }
        }

        @Override
        public void handleMessage(Message message) {
            if (this.released) {
                return;
            }
            int i10 = message.what;
            if (i10 == 1) {
                execute();
                return;
            }
            if (i10 == 4) {
                throw ((Error) message.obj);
            }
            finish();
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            long j10 = jElapsedRealtime - this.startTimeMs;
            b bVar = (b) androidx.media3.common.util.a.e(this.callback);
            if (this.canceled) {
                bVar.q(this.loadable, jElapsedRealtime, j10, false);
                return;
            }
            int i11 = message.what;
            if (i11 == 2) {
                try {
                    bVar.p(this.loadable, jElapsedRealtime, j10);
                    return;
                } catch (RuntimeException e10) {
                    u.d(TAG, "Unexpected exception handling load completed", e10);
                    Loader.this.f12641c = new UnexpectedLoaderException(e10);
                    return;
                }
            }
            if (i11 != 3) {
                return;
            }
            IOException iOException = (IOException) message.obj;
            this.currentError = iOException;
            int i12 = this.errorCount + 1;
            this.errorCount = i12;
            c cVarK = bVar.k(this.loadable, jElapsedRealtime, j10, iOException, i12);
            if (cVarK.f12642a == 3) {
                Loader.this.f12641c = this.currentError;
            } else if (cVarK.f12642a != 2) {
                if (cVarK.f12642a == 1) {
                    this.errorCount = 1;
                }
                start(cVarK.f12643b != C.TIME_UNSET ? cVarK.f12643b : getRetryDelayMillis());
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
                    q0.a("load:" + this.loadable.getClass().getSimpleName());
                    try {
                        this.loadable.load();
                        q0.b();
                    } catch (Throwable th2) {
                        q0.b();
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
                sendEmptyMessage(2);
            } catch (IOException e10) {
                if (this.released) {
                    return;
                }
                obtainMessage(3, e10).sendToTarget();
            } catch (Error e11) {
                if (!this.released) {
                    u.d(TAG, "Unexpected error loading stream", e11);
                    obtainMessage(4, e11).sendToTarget();
                }
                throw e11;
            } catch (Exception e12) {
                if (this.released) {
                    return;
                }
                u.d(TAG, "Unexpected exception loading stream", e12);
                obtainMessage(3, new UnexpectedLoaderException(e12)).sendToTarget();
            } catch (OutOfMemoryError e13) {
                if (this.released) {
                    return;
                }
                u.d(TAG, "OutOfMemory error loading stream", e13);
                obtainMessage(3, new UnexpectedLoaderException(e13)).sendToTarget();
            }
        }

        public void start(long j10) {
            androidx.media3.common.util.a.g(Loader.this.f12640b == null);
            Loader.this.f12640b = this;
            if (j10 > 0) {
                sendEmptyMessageDelayed(1, j10);
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
            String str;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Unexpected ");
            sb2.append(th2.getClass().getSimpleName());
            if (th2.getMessage() != null) {
                str = ": " + th2.getMessage();
            } else {
                str = "";
            }
            sb2.append(str);
            super(sb2.toString(), th2);
        }
    }

    public interface b {
        c k(d dVar, long j10, long j11, IOException iOException, int i10);

        void o(d dVar, long j10, long j11, int i10);

        void p(d dVar, long j10, long j11);

        void q(d dVar, long j10, long j11, boolean z10);
    }

    public static final class c {

        private final int f12642a;

        private final long f12643b;

        public boolean c() {
            int i10 = this.f12642a;
            return i10 == 0 || i10 == 1;
        }

        private c(int i10, long j10) {
            this.f12642a = i10;
            this.f12643b = j10;
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
        f12635d = g(false, C.TIME_UNSET);
        f12636e = g(true, C.TIME_UNSET);
        f12637f = new c(2, j10);
        f12638g = new c(3, j10);
    }

    public Loader(String str) {
        this(androidx.media3.exoplayer.util.b.a(a1.S0("ExoPlayer:Loader:" + str), new androidx.media3.common.util.m() {
            @Override
            public final void accept(Object obj) {
                ((ExecutorService) obj).shutdown();
            }
        }));
    }

    public static c g(boolean z10, long j10) {
        return new c(z10 ? 1 : 0, j10);
    }

    public void e() {
        ((LoadTask) androidx.media3.common.util.a.i(this.f12640b)).cancel(false);
    }

    public void f() {
        this.f12641c = null;
    }

    public boolean h() {
        return this.f12641c != null;
    }

    public boolean i() {
        return this.f12640b != null;
    }

    public void j(int i10) throws IOException {
        IOException iOException = this.f12641c;
        if (iOException != null) {
            throw iOException;
        }
        LoadTask loadTask = this.f12640b;
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
        LoadTask loadTask = this.f12640b;
        if (loadTask != null) {
            loadTask.cancel(true);
        }
        if (eVar != null) {
            this.f12639a.execute(new ReleaseTask(eVar));
        }
        this.f12639a.release();
    }

    public long m(d dVar, b bVar, int i10) {
        Looper looper = (Looper) androidx.media3.common.util.a.i(Looper.myLooper());
        this.f12641c = null;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        new LoadTask(looper, dVar, bVar, i10, jElapsedRealtime).start(0L);
        return jElapsedRealtime;
    }

    @Override
    public void maybeThrowError() throws IOException {
        j(Integer.MIN_VALUE);
    }

    public Loader(androidx.media3.exoplayer.util.c cVar) {
        this.f12639a = cVar;
    }
}
