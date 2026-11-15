package androidx.media3.exoplayer.mediacodec;

import android.media.MediaCodec;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import androidx.media3.common.util.a1;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReference;

class g implements v {

    private static final ArrayDeque f11883g = new ArrayDeque();

    private static final Object f11884h = new Object();

    private final MediaCodec f11885a;

    private final HandlerThread f11886b;

    private Handler f11887c;

    private final AtomicReference f11888d;

    private final androidx.media3.common.util.l f11889e;

    private boolean f11890f;

    class a extends Handler {
        a(Looper looper) {
            super(looper);
        }

        @Override
        public void handleMessage(Message message) {
            g.this.j(message);
        }
    }

    private static class b {

        public int f11892a;

        public int f11893b;

        public int f11894c;

        public final MediaCodec.CryptoInfo f11895d = new MediaCodec.CryptoInfo();

        public long f11896e;

        public int f11897f;

        b() {
        }

        public void a(int i10, int i11, int i12, long j10, int i13) {
            this.f11892a = i10;
            this.f11893b = i11;
            this.f11894c = i12;
            this.f11896e = j10;
            this.f11897f = i13;
        }
    }

    public g(MediaCodec mediaCodec, HandlerThread handlerThread) {
        this(mediaCodec, handlerThread, new androidx.media3.common.util.l());
    }

    private void e() {
        this.f11889e.d();
        ((Handler) androidx.media3.common.util.a.e(this.f11887c)).obtainMessage(3).sendToTarget();
        this.f11889e.a();
    }

    private static void g(androidx.media3.decoder.c cVar, MediaCodec.CryptoInfo cryptoInfo) {
        cryptoInfo.numSubSamples = cVar.f10640f;
        cryptoInfo.numBytesOfClearData = i(cVar.f10638d, cryptoInfo.numBytesOfClearData);
        cryptoInfo.numBytesOfEncryptedData = i(cVar.f10639e, cryptoInfo.numBytesOfEncryptedData);
        cryptoInfo.key = (byte[]) androidx.media3.common.util.a.e(h(cVar.f10636b, cryptoInfo.key));
        cryptoInfo.iv = (byte[]) androidx.media3.common.util.a.e(h(cVar.f10635a, cryptoInfo.iv));
        cryptoInfo.mode = cVar.f10637c;
        if (a1.f10038a >= 24) {
            f.a();
            cryptoInfo.setPattern(androidx.media3.decoder.d.a(cVar.f10641g, cVar.f10642h));
        }
    }

    private static byte[] h(byte[] bArr, byte[] bArr2) {
        if (bArr == null) {
            return bArr2;
        }
        if (bArr2 == null || bArr2.length < bArr.length) {
            return Arrays.copyOf(bArr, bArr.length);
        }
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    private static int[] i(int[] iArr, int[] iArr2) {
        if (iArr == null) {
            return iArr2;
        }
        if (iArr2 == null || iArr2.length < iArr.length) {
            return Arrays.copyOf(iArr, iArr.length);
        }
        System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
        return iArr2;
    }

    public void j(Message message) {
        b bVar;
        int i10 = message.what;
        if (i10 == 1) {
            bVar = (b) message.obj;
            k(bVar.f11892a, bVar.f11893b, bVar.f11894c, bVar.f11896e, bVar.f11897f);
        } else if (i10 != 2) {
            bVar = null;
            if (i10 == 3) {
                this.f11889e.f();
            } else if (i10 != 4) {
                androidx.compose.animation.core.j0.a(this.f11888d, null, new IllegalStateException(String.valueOf(message.what)));
            } else {
                m((Bundle) message.obj);
            }
        } else {
            bVar = (b) message.obj;
            l(bVar.f11892a, bVar.f11893b, bVar.f11895d, bVar.f11896e, bVar.f11897f);
        }
        if (bVar != null) {
            p(bVar);
        }
    }

    private void k(int i10, int i11, int i12, long j10, int i13) {
        try {
            this.f11885a.queueInputBuffer(i10, i11, i12, j10, i13);
        } catch (RuntimeException e10) {
            androidx.compose.animation.core.j0.a(this.f11888d, null, e10);
        }
    }

    private void l(int i10, int i11, MediaCodec.CryptoInfo cryptoInfo, long j10, int i12) {
        try {
            synchronized (f11884h) {
                this.f11885a.queueSecureInputBuffer(i10, i11, cryptoInfo, j10, i12);
            }
        } catch (RuntimeException e10) {
            androidx.compose.animation.core.j0.a(this.f11888d, null, e10);
        }
    }

    private void m(Bundle bundle) {
        try {
            this.f11885a.setParameters(bundle);
        } catch (RuntimeException e10) {
            androidx.compose.animation.core.j0.a(this.f11888d, null, e10);
        }
    }

    private void n() {
        ((Handler) androidx.media3.common.util.a.e(this.f11887c)).removeCallbacksAndMessages(null);
        e();
    }

    private static b o() {
        ArrayDeque arrayDeque = f11883g;
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

    private static void p(b bVar) {
        ArrayDeque arrayDeque = f11883g;
        synchronized (arrayDeque) {
            arrayDeque.add(bVar);
        }
    }

    @Override
    public void a(int i10, int i11, int i12, long j10, int i13) {
        c();
        b bVarO = o();
        bVarO.a(i10, i11, i12, j10, i13);
        ((Handler) a1.i(this.f11887c)).obtainMessage(1, bVarO).sendToTarget();
    }

    @Override
    public void b(Bundle bundle) {
        c();
        ((Handler) a1.i(this.f11887c)).obtainMessage(4, bundle).sendToTarget();
    }

    @Override
    public void c() {
        RuntimeException runtimeException = (RuntimeException) this.f11888d.getAndSet(null);
        if (runtimeException != null) {
            throw runtimeException;
        }
    }

    @Override
    public void f(int i10, int i11, androidx.media3.decoder.c cVar, long j10, int i12) {
        c();
        b bVarO = o();
        bVarO.a(i10, i11, 0, j10, i12);
        g(cVar, bVarO.f11895d);
        ((Handler) a1.i(this.f11887c)).obtainMessage(2, bVarO).sendToTarget();
    }

    @Override
    public void flush() {
        if (this.f11890f) {
            try {
                n();
            } catch (InterruptedException e10) {
                Thread.currentThread().interrupt();
                throw new IllegalStateException(e10);
            }
        }
    }

    @Override
    public void shutdown() {
        if (this.f11890f) {
            flush();
            this.f11886b.quit();
        }
        this.f11890f = false;
    }

    @Override
    public void start() {
        if (this.f11890f) {
            return;
        }
        this.f11886b.start();
        this.f11887c = new a(this.f11886b.getLooper());
        this.f11890f = true;
    }

    g(MediaCodec mediaCodec, HandlerThread handlerThread, androidx.media3.common.util.l lVar) {
        this.f11885a = mediaCodec;
        this.f11886b = handlerThread;
        this.f11889e = lVar;
        this.f11888d = new AtomicReference();
    }
}
