package defpackage;

import android.media.MediaCodec;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReference;

public class nj {
    public static final ArrayDeque g = new ArrayDeque();
    public static final Object h = new Object();
    public final MediaCodec a;
    public final HandlerThread b;
    public Handler c;
    public final AtomicReference d;
    public final le1 e;
    public boolean f;

    public class a extends Handler {
        public a(Looper looper) {
            super(looper);
        }

        @Override
        public void handleMessage(Message message) {
            nj.this.f(message);
        }
    }

    public static class b {
        public int a;
        public int b;
        public int c;
        public final MediaCodec.CryptoInfo d = new MediaCodec.CryptoInfo();
        public long e;
        public int f;

        public void a(int i, int i2, int i3, long j, int i4) {
            this.a = i;
            this.b = i2;
            this.c = i3;
            this.e = j;
            this.f = i4;
        }
    }

    public nj(MediaCodec mediaCodec, HandlerThread handlerThread) {
        this(mediaCodec, handlerThread, new le1());
    }

    public static void c(vl1 vl1Var, MediaCodec.CryptoInfo cryptoInfo) {
        cryptoInfo.numSubSamples = vl1Var.f;
        cryptoInfo.numBytesOfClearData = e(vl1Var.d, cryptoInfo.numBytesOfClearData);
        cryptoInfo.numBytesOfEncryptedData = e(vl1Var.e, cryptoInfo.numBytesOfEncryptedData);
        cryptoInfo.key = (byte[]) zi.e(d(vl1Var.b, cryptoInfo.key));
        cryptoInfo.iv = (byte[]) zi.e(d(vl1Var.a, cryptoInfo.iv));
        cryptoInfo.mode = vl1Var.c;
        if (blb.a >= 24) {
            cryptoInfo.setPattern(new MediaCodec.CryptoInfo.Pattern(vl1Var.g, vl1Var.h));
        }
    }

    public static byte[] d(byte[] bArr, byte[] bArr2) {
        if (bArr == null) {
            return bArr2;
        }
        if (bArr2 == null || bArr2.length < bArr.length) {
            return Arrays.copyOf(bArr, bArr.length);
        }
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    public static int[] e(int[] iArr, int[] iArr2) {
        if (iArr == null) {
            return iArr2;
        }
        if (iArr2 == null || iArr2.length < iArr.length) {
            return Arrays.copyOf(iArr, iArr.length);
        }
        System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
        return iArr2;
    }

    public static b k() {
        ArrayDeque arrayDeque = g;
        synchronized (arrayDeque) {
            try {
                if (arrayDeque.isEmpty()) {
                    return new b();
                }
                return (b) arrayDeque.removeFirst();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void o(b bVar) {
        ArrayDeque arrayDeque = g;
        synchronized (arrayDeque) {
            arrayDeque.add(bVar);
        }
    }

    public final void b() {
        this.e.d();
        ((Handler) zi.e(this.c)).obtainMessage(2).sendToTarget();
        this.e.a();
    }

    public final void f(Message message) {
        b bVar;
        int i = message.what;
        if (i == 0) {
            bVar = (b) message.obj;
            g(bVar.a, bVar.b, bVar.c, bVar.e, bVar.f);
        } else if (i != 1) {
            bVar = null;
            if (i != 2) {
                wk5.a(this.d, null, new IllegalStateException(String.valueOf(message.what)));
            } else {
                this.e.f();
            }
        } else {
            bVar = (b) message.obj;
            h(bVar.a, bVar.b, bVar.d, bVar.e, bVar.f);
        }
        if (bVar != null) {
            o(bVar);
        }
    }

    public final void g(int i, int i2, int i3, long j, int i4) {
        try {
            this.a.queueInputBuffer(i, i2, i3, j, i4);
        } catch (RuntimeException e) {
            wk5.a(this.d, null, e);
        }
    }

    public final void h(int i, int i2, MediaCodec.CryptoInfo cryptoInfo, long j, int i3) {
        try {
            synchronized (h) {
                this.a.queueSecureInputBuffer(i, i2, cryptoInfo, j, i3);
            }
        } catch (RuntimeException e) {
            wk5.a(this.d, null, e);
        }
    }

    public void i() {
        if (this.f) {
            try {
                j();
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                throw new IllegalStateException(e);
            }
        }
    }

    public final void j() {
        ((Handler) zi.e(this.c)).removeCallbacksAndMessages(null);
        b();
    }

    public final void l() {
        RuntimeException runtimeException = (RuntimeException) this.d.getAndSet(null);
        if (runtimeException != null) {
            throw runtimeException;
        }
    }

    public void m(int i, int i2, int i3, long j, int i4) {
        l();
        b bVarK = k();
        bVarK.a(i, i2, i3, j, i4);
        ((Handler) blb.j(this.c)).obtainMessage(0, bVarK).sendToTarget();
    }

    public void n(int i, int i2, vl1 vl1Var, long j, int i3) {
        l();
        b bVarK = k();
        bVarK.a(i, i2, 0, j, i3);
        c(vl1Var, bVarK.d);
        ((Handler) blb.j(this.c)).obtainMessage(1, bVarK).sendToTarget();
    }

    public void p() {
        if (this.f) {
            i();
            this.b.quit();
        }
        this.f = false;
    }

    public void q() {
        if (this.f) {
            return;
        }
        this.b.start();
        this.c = new a(this.b.getLooper());
        this.f = true;
    }

    public void r() {
        b();
    }

    public nj(MediaCodec mediaCodec, HandlerThread handlerThread, le1 le1Var) {
        this.a = mediaCodec;
        this.b = handlerThread;
        this.e = le1Var;
        this.d = new AtomicReference();
    }
}
