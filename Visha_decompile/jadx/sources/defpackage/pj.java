package defpackage;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.HandlerThread;
import java.util.ArrayDeque;

public final class pj extends MediaCodec.Callback {
    public final HandlerThread b;
    public Handler c;
    public MediaFormat h;
    public MediaFormat i;
    public MediaCodec.CodecException j;
    public long k;
    public boolean l;
    public IllegalStateException m;
    public final Object a = new Object();
    public final n15 d = new n15();
    public final n15 e = new n15();
    public final ArrayDeque f = new ArrayDeque();
    public final ArrayDeque g = new ArrayDeque();

    public pj(HandlerThread handlerThread) {
        this.b = handlerThread;
    }

    public final void b(MediaFormat mediaFormat) {
        this.e.a(-2);
        this.g.add(mediaFormat);
    }

    public int c() {
        synchronized (this.a) {
            try {
                int iE = -1;
                if (i()) {
                    return -1;
                }
                j();
                if (!this.d.d()) {
                    iE = this.d.e();
                }
                return iE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public int d(MediaCodec.BufferInfo bufferInfo) {
        synchronized (this.a) {
            try {
                if (i()) {
                    return -1;
                }
                j();
                if (this.e.d()) {
                    return -1;
                }
                int iE = this.e.e();
                if (iE >= 0) {
                    zi.i(this.h);
                    MediaCodec.BufferInfo bufferInfo2 = (MediaCodec.BufferInfo) this.f.remove();
                    bufferInfo.set(bufferInfo2.offset, bufferInfo2.size, bufferInfo2.presentationTimeUs, bufferInfo2.flags);
                } else if (iE == -2) {
                    this.h = (MediaFormat) this.g.remove();
                }
                return iE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void e() {
        synchronized (this.a) {
            this.k++;
            ((Handler) blb.j(this.c)).post(new Runnable() {
                @Override
                public final void run() {
                    this.b.m();
                }
            });
        }
    }

    public final void f() {
        if (!this.g.isEmpty()) {
            this.i = (MediaFormat) this.g.getLast();
        }
        this.d.b();
        this.e.b();
        this.f.clear();
        this.g.clear();
        this.j = null;
    }

    public MediaFormat g() {
        MediaFormat mediaFormat;
        synchronized (this.a) {
            try {
                mediaFormat = this.h;
                if (mediaFormat == null) {
                    throw new IllegalStateException();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return mediaFormat;
    }

    public void h(MediaCodec mediaCodec) {
        zi.g(this.c == null);
        this.b.start();
        Handler handler = new Handler(this.b.getLooper());
        mediaCodec.setCallback(this, handler);
        this.c = handler;
    }

    public final boolean i() {
        return this.k > 0 || this.l;
    }

    public final void j() {
        k();
        l();
    }

    public final void k() {
        IllegalStateException illegalStateException = this.m;
        if (illegalStateException == null) {
            return;
        }
        this.m = null;
        throw illegalStateException;
    }

    public final void l() {
        MediaCodec.CodecException codecException = this.j;
        if (codecException == null) {
            return;
        }
        this.j = null;
        throw codecException;
    }

    public final void m() {
        synchronized (this.a) {
            try {
                if (this.l) {
                    return;
                }
                long j = this.k - 1;
                this.k = j;
                if (j > 0) {
                    return;
                }
                if (j < 0) {
                    n(new IllegalStateException());
                } else {
                    f();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void n(IllegalStateException illegalStateException) {
        synchronized (this.a) {
            this.m = illegalStateException;
        }
    }

    public void o() {
        synchronized (this.a) {
            this.l = true;
            this.b.quit();
            f();
        }
    }

    @Override
    public void onError(MediaCodec mediaCodec, MediaCodec.CodecException codecException) {
        synchronized (this.a) {
            this.j = codecException;
        }
    }

    @Override
    public void onInputBufferAvailable(MediaCodec mediaCodec, int i) {
        synchronized (this.a) {
            this.d.a(i);
        }
    }

    @Override
    public void onOutputBufferAvailable(MediaCodec mediaCodec, int i, MediaCodec.BufferInfo bufferInfo) {
        synchronized (this.a) {
            try {
                MediaFormat mediaFormat = this.i;
                if (mediaFormat != null) {
                    b(mediaFormat);
                    this.i = null;
                }
                this.e.a(i);
                this.f.add(bufferInfo);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public void onOutputFormatChanged(MediaCodec mediaCodec, MediaFormat mediaFormat) {
        synchronized (this.a) {
            b(mediaFormat);
            this.i = null;
        }
    }
}
