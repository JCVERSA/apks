package androidx.media3.exoplayer.mediacodec;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.HandlerThread;
import androidx.media3.common.util.a1;
import java.util.ArrayDeque;

final class i extends MediaCodec.Callback {

    private final HandlerThread f11902b;

    private Handler f11903c;

    private MediaFormat f11908h;

    private MediaFormat f11909i;

    private MediaCodec.CodecException f11910j;

    private MediaCodec.CryptoException f11911k;

    private long f11912l;

    private boolean f11913m;

    private IllegalStateException f11914n;

    private t.c f11915o;

    private final Object f11901a = new Object();

    private final androidx.collection.f f11904d = new androidx.collection.f();

    private final androidx.collection.f f11905e = new androidx.collection.f();

    private final ArrayDeque f11906f = new ArrayDeque();

    private final ArrayDeque f11907g = new ArrayDeque();

    i(HandlerThread handlerThread) {
        this.f11902b = handlerThread;
    }

    private void b(MediaFormat mediaFormat) {
        this.f11905e.a(-2);
        this.f11907g.add(mediaFormat);
    }

    private void f() {
        if (!this.f11907g.isEmpty()) {
            this.f11909i = (MediaFormat) this.f11907g.getLast();
        }
        this.f11904d.b();
        this.f11905e.b();
        this.f11906f.clear();
        this.f11907g.clear();
    }

    private boolean i() {
        return this.f11912l > 0 || this.f11913m;
    }

    private void j() {
        k();
        m();
        l();
    }

    private void k() {
        IllegalStateException illegalStateException = this.f11914n;
        if (illegalStateException == null) {
            return;
        }
        this.f11914n = null;
        throw illegalStateException;
    }

    private void l() {
        MediaCodec.CryptoException cryptoException = this.f11911k;
        if (cryptoException == null) {
            return;
        }
        this.f11911k = null;
        throw cryptoException;
    }

    private void m() {
        MediaCodec.CodecException codecException = this.f11910j;
        if (codecException == null) {
            return;
        }
        this.f11910j = null;
        throw codecException;
    }

    public void n() {
        synchronized (this.f11901a) {
            try {
                if (this.f11913m) {
                    return;
                }
                long j10 = this.f11912l - 1;
                this.f11912l = j10;
                if (j10 > 0) {
                    return;
                }
                if (j10 < 0) {
                    o(new IllegalStateException());
                } else {
                    f();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private void o(IllegalStateException illegalStateException) {
        synchronized (this.f11901a) {
            this.f11914n = illegalStateException;
        }
    }

    public int c() {
        synchronized (this.f11901a) {
            try {
                j();
                int iE = -1;
                if (i()) {
                    return -1;
                }
                if (!this.f11904d.d()) {
                    iE = this.f11904d.e();
                }
                return iE;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public int d(MediaCodec.BufferInfo bufferInfo) {
        synchronized (this.f11901a) {
            try {
                j();
                if (i()) {
                    return -1;
                }
                if (this.f11905e.d()) {
                    return -1;
                }
                int iE = this.f11905e.e();
                if (iE >= 0) {
                    androidx.media3.common.util.a.i(this.f11908h);
                    MediaCodec.BufferInfo bufferInfo2 = (MediaCodec.BufferInfo) this.f11906f.remove();
                    bufferInfo.set(bufferInfo2.offset, bufferInfo2.size, bufferInfo2.presentationTimeUs, bufferInfo2.flags);
                } else if (iE == -2) {
                    this.f11908h = (MediaFormat) this.f11907g.remove();
                }
                return iE;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void e() {
        synchronized (this.f11901a) {
            this.f11912l++;
            ((Handler) a1.i(this.f11903c)).post(new Runnable() {
                @Override
                public final void run() {
                    this.f11898a.n();
                }
            });
        }
    }

    public MediaFormat g() {
        MediaFormat mediaFormat;
        synchronized (this.f11901a) {
            try {
                mediaFormat = this.f11908h;
                if (mediaFormat == null) {
                    throw new IllegalStateException();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return mediaFormat;
    }

    public void h(MediaCodec mediaCodec) {
        androidx.media3.common.util.a.g(this.f11903c == null);
        this.f11902b.start();
        Handler handler = new Handler(this.f11902b.getLooper());
        mediaCodec.setCallback(this, handler);
        this.f11903c = handler;
    }

    @Override
    public void onCryptoError(MediaCodec mediaCodec, MediaCodec.CryptoException cryptoException) {
        synchronized (this.f11901a) {
            this.f11911k = cryptoException;
        }
    }

    @Override
    public void onError(MediaCodec mediaCodec, MediaCodec.CodecException codecException) {
        synchronized (this.f11901a) {
            this.f11910j = codecException;
        }
    }

    @Override
    public void onInputBufferAvailable(MediaCodec mediaCodec, int i10) {
        synchronized (this.f11901a) {
            try {
                this.f11904d.a(i10);
                t.c cVar = this.f11915o;
                if (cVar != null) {
                    cVar.a();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public void onOutputBufferAvailable(MediaCodec mediaCodec, int i10, MediaCodec.BufferInfo bufferInfo) {
        synchronized (this.f11901a) {
            try {
                MediaFormat mediaFormat = this.f11909i;
                if (mediaFormat != null) {
                    b(mediaFormat);
                    this.f11909i = null;
                }
                this.f11905e.a(i10);
                this.f11906f.add(bufferInfo);
                t.c cVar = this.f11915o;
                if (cVar != null) {
                    cVar.b();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public void onOutputFormatChanged(MediaCodec mediaCodec, MediaFormat mediaFormat) {
        synchronized (this.f11901a) {
            b(mediaFormat);
            this.f11909i = null;
        }
    }

    public void p(t.c cVar) {
        synchronized (this.f11901a) {
            this.f11915o = cVar;
        }
    }

    public void q() {
        synchronized (this.f11901a) {
            this.f11913m = true;
            this.f11902b.quit();
            f();
        }
    }
}
