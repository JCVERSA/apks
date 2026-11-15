package defpackage;

import android.media.MediaCodec;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReference;

public final class gkj implements skj {
    public static final ArrayDeque g = new ArrayDeque();
    public static final Object h = new Object();
    public final MediaCodec a;
    public final HandlerThread b;
    public Handler c;
    public final AtomicReference d;
    public final oeg e;
    public boolean f;

    public gkj(MediaCodec mediaCodec, HandlerThread handlerThread) {
        oeg oegVar = new oeg(tbg.a);
        this.a = mediaCodec;
        this.b = handlerThread;
        this.e = oegVar;
        this.d = new AtomicReference();
    }

    /* JADX WARN: Code duplicated, block: B:35:0x0075  */
    /* JADX WARN: Code duplicated, block: B:43:0x0080 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:47:0x0078 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static void d(gkj gkjVar, Message message) {
        fkj fkjVar;
        ArrayDeque arrayDeque;
        int i = message.what;
        fkj fkjVar2 = null;
        if (i != 1) {
            if (i == 2) {
                fkjVar = (fkj) message.obj;
                int i2 = fkjVar.a;
                MediaCodec.CryptoInfo cryptoInfo = fkjVar.d;
                long j = fkjVar.e;
                int i3 = fkjVar.f;
                try {
                    synchronized (h) {
                        gkjVar.a.queueSecureInputBuffer(i2, 0, cryptoInfo, j, i3);
                    }
                } catch (RuntimeException e) {
                    dkj.a(gkjVar.d, null, e);
                }
            } else if (i == 3) {
                gkjVar.e.e();
            } else if (i != 4) {
                dkj.a(gkjVar.d, null, new IllegalStateException(String.valueOf(message.what)));
            } else {
                try {
                    gkjVar.a.setParameters((Bundle) message.obj);
                } catch (RuntimeException e2) {
                    dkj.a(gkjVar.d, null, e2);
                }
            }
            if (fkjVar2 != null) {
                arrayDeque = g;
                synchronized (arrayDeque) {
                    arrayDeque.add(fkjVar2);
                }
            }
        }
        fkjVar = (fkj) message.obj;
        try {
            gkjVar.a.queueInputBuffer(fkjVar.a, 0, fkjVar.c, fkjVar.e, fkjVar.f);
        } catch (RuntimeException e3) {
            dkj.a(gkjVar.d, null, e3);
        }
        fkjVar2 = fkjVar;
        if (fkjVar2 != null) {
            arrayDeque = g;
            synchronized (arrayDeque) {
                arrayDeque.add(fkjVar2);
            }
        }
    }

    public static fkj e() {
        ArrayDeque arrayDeque = g;
        synchronized (arrayDeque) {
            try {
                if (arrayDeque.isEmpty()) {
                    return new fkj();
                }
                return (fkj) arrayDeque.removeFirst();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static byte[] f(byte[] bArr, byte[] bArr2) {
        int length;
        if (bArr == null) {
            return bArr2;
        }
        if (bArr2 == null || bArr2.length < (length = bArr.length)) {
            return Arrays.copyOf(bArr, bArr.length);
        }
        System.arraycopy(bArr, 0, bArr2, 0, length);
        return bArr2;
    }

    public static int[] g(int[] iArr, int[] iArr2) {
        int length;
        if (iArr == null) {
            return iArr2;
        }
        if (iArr2 == null || iArr2.length < (length = iArr.length)) {
            return Arrays.copyOf(iArr, iArr.length);
        }
        System.arraycopy(iArr, 0, iArr2, 0, length);
        return iArr2;
    }

    @Override
    public final void a(Bundle bundle) {
        zzc();
        Handler handler = this.c;
        int i = kfh.a;
        handler.obtainMessage(4, bundle).sendToTarget();
    }

    @Override
    public final void b(int i, int i2, pzi pziVar, long j, int i3) {
        zzc();
        fkj fkjVarE = e();
        fkjVarE.a(i, 0, 0, j, 0);
        MediaCodec.CryptoInfo cryptoInfo = fkjVarE.d;
        cryptoInfo.numSubSamples = pziVar.f;
        cryptoInfo.numBytesOfClearData = g(pziVar.d, cryptoInfo.numBytesOfClearData);
        cryptoInfo.numBytesOfEncryptedData = g(pziVar.e, cryptoInfo.numBytesOfEncryptedData);
        byte[] bArrF = f(pziVar.b, cryptoInfo.key);
        bArrF.getClass();
        cryptoInfo.key = bArrF;
        byte[] bArrF2 = f(pziVar.a, cryptoInfo.iv);
        bArrF2.getClass();
        cryptoInfo.iv = bArrF2;
        cryptoInfo.mode = pziVar.c;
        if (kfh.a >= 24) {
            cryptoInfo.setPattern(new MediaCodec.CryptoInfo.Pattern(pziVar.g, pziVar.h));
        }
        this.c.obtainMessage(2, fkjVarE).sendToTarget();
    }

    @Override
    public final void c(int i, int i2, int i3, long j, int i4) {
        zzc();
        fkj fkjVarE = e();
        fkjVarE.a(i, 0, i3, j, i4);
        Handler handler = this.c;
        int i5 = kfh.a;
        handler.obtainMessage(1, fkjVarE).sendToTarget();
    }

    @Override
    public final void zzb() {
        if (this.f) {
            try {
                Handler handler = this.c;
                if (handler == null) {
                    throw null;
                }
                handler.removeCallbacksAndMessages(null);
                oeg oegVar = this.e;
                oegVar.c();
                Handler handler2 = this.c;
                if (handler2 == null) {
                    throw null;
                }
                handler2.obtainMessage(3).sendToTarget();
                oegVar.a();
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                throw new IllegalStateException(e);
            }
        }
    }

    @Override
    public final void zzc() {
        RuntimeException runtimeException = (RuntimeException) this.d.getAndSet(null);
        if (runtimeException != null) {
            throw runtimeException;
        }
    }

    @Override
    public final void zzg() {
        if (this.f) {
            zzb();
            this.b.quit();
        }
        this.f = false;
    }

    @Override
    public final void zzh() {
        if (this.f) {
            return;
        }
        HandlerThread handlerThread = this.b;
        handlerThread.start();
        this.c = new ekj(this, handlerThread.getLooper());
        this.f = true;
    }
}
