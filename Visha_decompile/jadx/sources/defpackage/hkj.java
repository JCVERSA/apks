package defpackage;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.HandlerThread;
import androidx.collection.CircularIntArray;
import defpackage.hkj;
import java.util.ArrayDeque;

public final class hkj extends MediaCodec.Callback {
    public final HandlerThread b;
    public Handler c;
    public MediaFormat h;
    public MediaFormat i;
    public MediaCodec.CodecException j;
    public MediaCodec.CryptoException k;
    public long l;
    public boolean m;
    public IllegalStateException n;
    public qkj o;
    public final Object a = new Object();
    public final CircularIntArray d = new CircularIntArray();
    public final CircularIntArray e = new CircularIntArray();
    public final ArrayDeque f = new ArrayDeque();
    public final ArrayDeque g = new ArrayDeque();

    public hkj(HandlerThread handlerThread) {
        this.b = handlerThread;
    }

    public static void d(hkj hkjVar) {
        Object obj = hkjVar.a;
        synchronized (obj) {
            try {
                if (hkjVar.m) {
                    return;
                }
                long j = hkjVar.l - 1;
                hkjVar.l = j;
                if (j > 0) {
                    return;
                }
                if (j >= 0) {
                    hkjVar.j();
                    return;
                }
                IllegalStateException illegalStateException = new IllegalStateException();
                synchronized (obj) {
                    hkjVar.n = illegalStateException;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final int a() {
        synchronized (this.a) {
            try {
                k();
                int iPopFirst = -1;
                if (l()) {
                    return -1;
                }
                CircularIntArray circularIntArray = this.d;
                if (!circularIntArray.isEmpty()) {
                    iPopFirst = circularIntArray.popFirst();
                }
                return iPopFirst;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final int b(MediaCodec.BufferInfo bufferInfo) {
        synchronized (this.a) {
            try {
                k();
                if (l()) {
                    return -1;
                }
                CircularIntArray circularIntArray = this.e;
                if (circularIntArray.isEmpty()) {
                    return -1;
                }
                int iPopFirst = circularIntArray.popFirst();
                if (iPopFirst >= 0) {
                    n7g.b(this.h);
                    MediaCodec.BufferInfo bufferInfo2 = (MediaCodec.BufferInfo) this.f.remove();
                    bufferInfo.set(bufferInfo2.offset, bufferInfo2.size, bufferInfo2.presentationTimeUs, bufferInfo2.flags);
                } else if (iPopFirst == -2) {
                    this.h = (MediaFormat) this.g.remove();
                    iPopFirst = -2;
                }
                return iPopFirst;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final MediaFormat c() {
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

    public final void e() {
        synchronized (this.a) {
            this.l++;
            Handler handler = this.c;
            int i = kfh.a;
            handler.post(new Runnable() {
                @Override
                public final void run() {
                    hkj.d(this.zza);
                }
            });
        }
    }

    public final void f(MediaCodec mediaCodec) {
        n7g.f(this.c == null);
        HandlerThread handlerThread = this.b;
        handlerThread.start();
        Handler handler = new Handler(handlerThread.getLooper());
        mediaCodec.setCallback(this, handler);
        this.c = handler;
    }

    public final void g(qkj qkjVar) {
        synchronized (this.a) {
            this.o = qkjVar;
        }
    }

    public final void h() {
        synchronized (this.a) {
            this.m = true;
            this.b.quit();
            j();
        }
    }

    public final void i(MediaFormat mediaFormat) {
        this.e.addLast(-2);
        this.g.add(mediaFormat);
    }

    public final void j() {
        ArrayDeque arrayDeque = this.g;
        if (!arrayDeque.isEmpty()) {
            this.i = (MediaFormat) arrayDeque.getLast();
        }
        this.d.clear();
        this.e.clear();
        this.f.clear();
        arrayDeque.clear();
    }

    public final void k() {
        IllegalStateException illegalStateException = this.n;
        if (illegalStateException != null) {
            this.n = null;
            throw illegalStateException;
        }
        MediaCodec.CodecException codecException = this.j;
        if (codecException != null) {
            this.j = null;
            throw codecException;
        }
        MediaCodec.CryptoException cryptoException = this.k;
        if (cryptoException == null) {
            return;
        }
        this.k = null;
        throw cryptoException;
    }

    public final boolean l() {
        return this.l > 0 || this.m;
    }

    @Override
    public final void onCryptoError(MediaCodec mediaCodec, MediaCodec.CryptoException cryptoException) {
        synchronized (this.a) {
            this.k = cryptoException;
        }
    }

    @Override
    public final void onError(MediaCodec mediaCodec, MediaCodec.CodecException codecException) {
        synchronized (this.a) {
            this.j = codecException;
        }
    }

    @Override
    public final void onInputBufferAvailable(MediaCodec mediaCodec, int i) {
        synchronized (this.a) {
            try {
                this.d.addLast(i);
                qkj qkjVar = this.o;
                if (qkjVar != null) {
                    flj fljVar = ((clj) qkjVar).a;
                    if (fljVar.E != null) {
                        fljVar.E.zza();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public final void onOutputBufferAvailable(MediaCodec mediaCodec, int i, MediaCodec.BufferInfo bufferInfo) {
        synchronized (this.a) {
            try {
                MediaFormat mediaFormat = this.i;
                if (mediaFormat != null) {
                    i(mediaFormat);
                    this.i = null;
                }
                this.e.addLast(i);
                this.f.add(bufferInfo);
                qkj qkjVar = this.o;
                if (qkjVar != null) {
                    flj fljVar = ((clj) qkjVar).a;
                    if (fljVar.E != null) {
                        fljVar.E.zza();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public final void onOutputFormatChanged(MediaCodec mediaCodec, MediaFormat mediaFormat) {
        synchronized (this.a) {
            i(mediaFormat);
            this.i = null;
        }
    }
}
