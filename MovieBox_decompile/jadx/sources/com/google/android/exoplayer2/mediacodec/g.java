package com.google.android.exoplayer2.mediacodec;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.HandlerThread;
import com.google.android.exoplayer2.util.p0;
import java.util.ArrayDeque;

final class g extends MediaCodec.Callback {

    private final HandlerThread f24728b;

    private Handler f24729c;

    private MediaFormat f24734h;

    private MediaFormat f24735i;

    private MediaCodec.CodecException f24736j;

    private long f24737k;

    private boolean f24738l;

    private IllegalStateException f24739m;

    private final Object f24727a = new Object();

    private final k f24730d = new k();

    private final k f24731e = new k();

    private final ArrayDeque f24732f = new ArrayDeque();

    private final ArrayDeque f24733g = new ArrayDeque();

    g(HandlerThread handlerThread) {
        this.f24728b = handlerThread;
    }

    private void b(MediaFormat mediaFormat) {
        this.f24731e.a(-2);
        this.f24733g.add(mediaFormat);
    }

    private void f() {
        if (!this.f24733g.isEmpty()) {
            this.f24735i = (MediaFormat) this.f24733g.getLast();
        }
        this.f24730d.b();
        this.f24731e.b();
        this.f24732f.clear();
        this.f24733g.clear();
        this.f24736j = null;
    }

    private boolean i() {
        return this.f24737k > 0 || this.f24738l;
    }

    private void j() {
        k();
        l();
    }

    private void k() {
        IllegalStateException illegalStateException = this.f24739m;
        if (illegalStateException == null) {
            return;
        }
        this.f24739m = null;
        throw illegalStateException;
    }

    private void l() {
        MediaCodec.CodecException codecException = this.f24736j;
        if (codecException == null) {
            return;
        }
        this.f24736j = null;
        throw codecException;
    }

    public void m() {
        synchronized (this.f24727a) {
            try {
                if (this.f24738l) {
                    return;
                }
                long j10 = this.f24737k - 1;
                this.f24737k = j10;
                if (j10 > 0) {
                    return;
                }
                if (j10 < 0) {
                    n(new IllegalStateException());
                } else {
                    f();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private void n(IllegalStateException illegalStateException) {
        synchronized (this.f24727a) {
            this.f24739m = illegalStateException;
        }
    }

    public int c() {
        synchronized (this.f24727a) {
            try {
                int iE = -1;
                if (i()) {
                    return -1;
                }
                j();
                if (!this.f24730d.d()) {
                    iE = this.f24730d.e();
                }
                return iE;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public int d(MediaCodec.BufferInfo bufferInfo) {
        synchronized (this.f24727a) {
            try {
                if (i()) {
                    return -1;
                }
                j();
                if (this.f24731e.d()) {
                    return -1;
                }
                int iE = this.f24731e.e();
                if (iE >= 0) {
                    com.google.android.exoplayer2.util.a.i(this.f24734h);
                    MediaCodec.BufferInfo bufferInfo2 = (MediaCodec.BufferInfo) this.f24732f.remove();
                    bufferInfo.set(bufferInfo2.offset, bufferInfo2.size, bufferInfo2.presentationTimeUs, bufferInfo2.flags);
                } else if (iE == -2) {
                    this.f24734h = (MediaFormat) this.f24733g.remove();
                }
                return iE;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void e() {
        synchronized (this.f24727a) {
            this.f24737k++;
            ((Handler) p0.j(this.f24729c)).post(new Runnable() {
                @Override
                public final void run() {
                    this.f24726a.m();
                }
            });
        }
    }

    public MediaFormat g() {
        MediaFormat mediaFormat;
        synchronized (this.f24727a) {
            try {
                mediaFormat = this.f24734h;
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
        com.google.android.exoplayer2.util.a.g(this.f24729c == null);
        this.f24728b.start();
        Handler handler = new Handler(this.f24728b.getLooper());
        mediaCodec.setCallback(this, handler);
        this.f24729c = handler;
    }

    public void o() {
        synchronized (this.f24727a) {
            this.f24738l = true;
            this.f24728b.quit();
            f();
        }
    }

    @Override
    public void onError(MediaCodec mediaCodec, MediaCodec.CodecException codecException) {
        synchronized (this.f24727a) {
            this.f24736j = codecException;
        }
    }

    @Override
    public void onInputBufferAvailable(MediaCodec mediaCodec, int i10) {
        synchronized (this.f24727a) {
            this.f24730d.a(i10);
        }
    }

    @Override
    public void onOutputBufferAvailable(MediaCodec mediaCodec, int i10, MediaCodec.BufferInfo bufferInfo) {
        synchronized (this.f24727a) {
            try {
                MediaFormat mediaFormat = this.f24735i;
                if (mediaFormat != null) {
                    b(mediaFormat);
                    this.f24735i = null;
                }
                this.f24731e.a(i10);
                this.f24732f.add(bufferInfo);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public void onOutputFormatChanged(MediaCodec mediaCodec, MediaFormat mediaFormat) {
        synchronized (this.f24727a) {
            b(mediaFormat);
            this.f24735i = null;
        }
    }
}
