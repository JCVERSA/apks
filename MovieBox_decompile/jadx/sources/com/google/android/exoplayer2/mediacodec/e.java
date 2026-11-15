package com.google.android.exoplayer2.mediacodec;

import android.media.MediaCodec;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import androidx.compose.animation.core.j0;
import com.google.android.exoplayer2.util.p0;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReference;

class e {

    private static final ArrayDeque f24711g = new ArrayDeque();

    private static final Object f24712h = new Object();

    private final MediaCodec f24713a;

    private final HandlerThread f24714b;

    private Handler f24715c;

    private final AtomicReference f24716d;

    private final com.google.android.exoplayer2.util.h f24717e;

    private boolean f24718f;

    class a extends Handler {
        a(Looper looper) {
            super(looper);
        }

        @Override
        public void handleMessage(Message message) {
            e.this.f(message);
        }
    }

    private static class b {

        public int f24720a;

        public int f24721b;

        public int f24722c;

        public final MediaCodec.CryptoInfo f24723d = new MediaCodec.CryptoInfo();

        public long f24724e;

        public int f24725f;

        b() {
        }

        public void a(int i10, int i11, int i12, long j10, int i13) {
            this.f24720a = i10;
            this.f24721b = i11;
            this.f24722c = i12;
            this.f24724e = j10;
            this.f24725f = i13;
        }
    }

    public e(MediaCodec mediaCodec, HandlerThread handlerThread) {
        this(mediaCodec, handlerThread, new com.google.android.exoplayer2.util.h());
    }

    private void b() {
        this.f24717e.d();
        ((Handler) com.google.android.exoplayer2.util.a.e(this.f24715c)).obtainMessage(2).sendToTarget();
        this.f24717e.a();
    }

    private static void c(com.google.android.exoplayer2.decoder.c cVar, MediaCodec.CryptoInfo cryptoInfo) {
        cryptoInfo.numSubSamples = cVar.f24227f;
        cryptoInfo.numBytesOfClearData = e(cVar.f24225d, cryptoInfo.numBytesOfClearData);
        cryptoInfo.numBytesOfEncryptedData = e(cVar.f24226e, cryptoInfo.numBytesOfEncryptedData);
        cryptoInfo.key = (byte[]) com.google.android.exoplayer2.util.a.e(d(cVar.f24223b, cryptoInfo.key));
        cryptoInfo.iv = (byte[]) com.google.android.exoplayer2.util.a.e(d(cVar.f24222a, cryptoInfo.iv));
        cryptoInfo.mode = cVar.f24224c;
        if (p0.f26854a >= 24) {
            androidx.media3.exoplayer.mediacodec.f.a();
            cryptoInfo.setPattern(androidx.media3.decoder.d.a(cVar.f24228g, cVar.f24229h));
        }
    }

    private static byte[] d(byte[] bArr, byte[] bArr2) {
        if (bArr == null) {
            return bArr2;
        }
        if (bArr2 == null || bArr2.length < bArr.length) {
            return Arrays.copyOf(bArr, bArr.length);
        }
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    private static int[] e(int[] iArr, int[] iArr2) {
        if (iArr == null) {
            return iArr2;
        }
        if (iArr2 == null || iArr2.length < iArr.length) {
            return Arrays.copyOf(iArr, iArr.length);
        }
        System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
        return iArr2;
    }

    public void f(Message message) {
        b bVar;
        int i10 = message.what;
        if (i10 == 0) {
            bVar = (b) message.obj;
            g(bVar.f24720a, bVar.f24721b, bVar.f24722c, bVar.f24724e, bVar.f24725f);
        } else if (i10 != 1) {
            bVar = null;
            if (i10 != 2) {
                j0.a(this.f24716d, null, new IllegalStateException(String.valueOf(message.what)));
            } else {
                this.f24717e.f();
            }
        } else {
            bVar = (b) message.obj;
            h(bVar.f24720a, bVar.f24721b, bVar.f24723d, bVar.f24724e, bVar.f24725f);
        }
        if (bVar != null) {
            o(bVar);
        }
    }

    private void g(int i10, int i11, int i12, long j10, int i13) {
        try {
            this.f24713a.queueInputBuffer(i10, i11, i12, j10, i13);
        } catch (RuntimeException e10) {
            j0.a(this.f24716d, null, e10);
        }
    }

    private void h(int i10, int i11, MediaCodec.CryptoInfo cryptoInfo, long j10, int i12) {
        try {
            synchronized (f24712h) {
                this.f24713a.queueSecureInputBuffer(i10, i11, cryptoInfo, j10, i12);
            }
        } catch (RuntimeException e10) {
            j0.a(this.f24716d, null, e10);
        }
    }

    private void j() {
        ((Handler) com.google.android.exoplayer2.util.a.e(this.f24715c)).removeCallbacksAndMessages(null);
        b();
    }

    private static b k() {
        ArrayDeque arrayDeque = f24711g;
        synchronized (arrayDeque) {
            try {
                if (arrayDeque.isEmpty()) {
                    return new b();
                }
                return (b) arrayDeque.removeFirst();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private void l() {
        RuntimeException runtimeException = (RuntimeException) this.f24716d.getAndSet(null);
        if (runtimeException != null) {
            throw runtimeException;
        }
    }

    private static void o(b bVar) {
        ArrayDeque arrayDeque = f24711g;
        synchronized (arrayDeque) {
            arrayDeque.add(bVar);
        }
    }

    public void i() {
        if (this.f24718f) {
            try {
                j();
            } catch (InterruptedException e10) {
                Thread.currentThread().interrupt();
                throw new IllegalStateException(e10);
            }
        }
    }

    public void m(int i10, int i11, int i12, long j10, int i13) {
        l();
        b bVarK = k();
        bVarK.a(i10, i11, i12, j10, i13);
        ((Handler) p0.j(this.f24715c)).obtainMessage(0, bVarK).sendToTarget();
    }

    public void n(int i10, int i11, com.google.android.exoplayer2.decoder.c cVar, long j10, int i12) {
        l();
        b bVarK = k();
        bVarK.a(i10, i11, 0, j10, i12);
        c(cVar, bVarK.f24723d);
        ((Handler) p0.j(this.f24715c)).obtainMessage(1, bVarK).sendToTarget();
    }

    public void p() {
        if (this.f24718f) {
            i();
            this.f24714b.quit();
        }
        this.f24718f = false;
    }

    public void q() {
        if (this.f24718f) {
            return;
        }
        this.f24714b.start();
        this.f24715c = new a(this.f24714b.getLooper());
        this.f24718f = true;
    }

    public void r() {
        b();
    }

    e(MediaCodec mediaCodec, HandlerThread handlerThread, com.google.android.exoplayer2.util.h hVar) {
        this.f24713a = mediaCodec;
        this.f24714b = handlerThread;
        this.f24717e = hVar;
        this.f24716d = new AtomicReference();
    }
}
