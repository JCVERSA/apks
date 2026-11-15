package androidx.media3.decoder;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayDeque;
import org.mvel2.ast.ASTNode;

public abstract class SimpleDecoder implements g {

    private final Thread f10612a;

    private final DecoderInputBuffer[] f10616e;

    private final h[] f10617f;

    private int f10618g;

    private int f10619h;

    private DecoderInputBuffer f10620i;

    private DecoderException f10621j;

    private boolean f10622k;

    private boolean f10623l;

    private int f10624m;

    private final Object f10613b = new Object();

    private long f10625n = C.TIME_UNSET;

    private final ArrayDeque f10614c = new ArrayDeque();

    private final ArrayDeque f10615d = new ArrayDeque();

    protected SimpleDecoder(DecoderInputBuffer[] decoderInputBufferArr, h[] hVarArr) {
        this.f10616e = decoderInputBufferArr;
        this.f10618g = decoderInputBufferArr.length;
        for (int i10 = 0; i10 < this.f10618g; i10++) {
            this.f10616e[i10] = e();
        }
        this.f10617f = hVarArr;
        this.f10619h = hVarArr.length;
        for (int i11 = 0; i11 < this.f10619h; i11++) {
            this.f10617f[i11] = f();
        }
        Thread thread = new Thread("ExoPlayer:SimpleDecoder") {
            @Override
            public void run() {
                SimpleDecoder.this.r();
            }
        };
        this.f10612a = thread;
        thread.start();
    }

    private boolean d() {
        return !this.f10614c.isEmpty() && this.f10619h > 0;
    }

    private boolean i() {
        DecoderException decoderExceptionG;
        synchronized (this.f10613b) {
            while (!this.f10623l && !d()) {
                try {
                    this.f10613b.wait();
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (this.f10623l) {
                return false;
            }
            DecoderInputBuffer decoderInputBuffer = (DecoderInputBuffer) this.f10614c.removeFirst();
            h[] hVarArr = this.f10617f;
            int i10 = this.f10619h - 1;
            this.f10619h = i10;
            h hVar = hVarArr[i10];
            boolean z10 = this.f10622k;
            this.f10622k = false;
            if (decoderInputBuffer.isEndOfStream()) {
                hVar.addFlag(4);
            } else {
                hVar.timeUs = decoderInputBuffer.f10608e;
                if (decoderInputBuffer.isFirstSample()) {
                    hVar.addFlag(ASTNode.NOJIT);
                }
                if (!l(decoderInputBuffer.f10608e)) {
                    hVar.shouldBeSkipped = true;
                }
                try {
                    decoderExceptionG = h(decoderInputBuffer, hVar, z10);
                } catch (OutOfMemoryError e10) {
                    decoderExceptionG = g(e10);
                } catch (RuntimeException e11) {
                    decoderExceptionG = g(e11);
                }
                if (decoderExceptionG != null) {
                    synchronized (this.f10613b) {
                        this.f10621j = decoderExceptionG;
                    }
                    return false;
                }
            }
            synchronized (this.f10613b) {
                try {
                    if (this.f10622k) {
                        hVar.release();
                    } else if (hVar.shouldBeSkipped) {
                        this.f10624m++;
                        hVar.release();
                    } else {
                        hVar.skippedOutputBufferCount = this.f10624m;
                        this.f10624m = 0;
                        this.f10615d.addLast(hVar);
                    }
                    o(decoderInputBuffer);
                } catch (Throwable th3) {
                    throw th3;
                }
            }
            return true;
        }
    }

    private void m() {
        if (d()) {
            this.f10613b.notify();
        }
    }

    private void n() throws DecoderException {
        DecoderException decoderException = this.f10621j;
        if (decoderException != null) {
            throw decoderException;
        }
    }

    private void o(DecoderInputBuffer decoderInputBuffer) {
        decoderInputBuffer.clear();
        DecoderInputBuffer[] decoderInputBufferArr = this.f10616e;
        int i10 = this.f10618g;
        this.f10618g = i10 + 1;
        decoderInputBufferArr[i10] = decoderInputBuffer;
    }

    private void q(h hVar) {
        hVar.clear();
        h[] hVarArr = this.f10617f;
        int i10 = this.f10619h;
        this.f10619h = i10 + 1;
        hVarArr[i10] = hVar;
    }

    public void r() {
        do {
            try {
            } catch (InterruptedException e10) {
                throw new IllegalStateException(e10);
            }
        } while (i());
    }

    @Override
    public final void a(long j10) {
        synchronized (this.f10613b) {
            try {
                androidx.media3.common.util.a.g(this.f10618g == this.f10616e.length || this.f10622k);
                this.f10625n = j10;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public final void queueInputBuffer(DecoderInputBuffer decoderInputBuffer) {
        synchronized (this.f10613b) {
            n();
            androidx.media3.common.util.a.a(decoderInputBuffer == this.f10620i);
            this.f10614c.addLast(decoderInputBuffer);
            m();
            this.f10620i = null;
        }
    }

    protected abstract DecoderInputBuffer e();

    protected abstract h f();

    @Override
    public final void flush() {
        synchronized (this.f10613b) {
            try {
                this.f10622k = true;
                this.f10624m = 0;
                DecoderInputBuffer decoderInputBuffer = this.f10620i;
                if (decoderInputBuffer != null) {
                    o(decoderInputBuffer);
                    this.f10620i = null;
                }
                while (!this.f10614c.isEmpty()) {
                    o((DecoderInputBuffer) this.f10614c.removeFirst());
                }
                while (!this.f10615d.isEmpty()) {
                    ((h) this.f10615d.removeFirst()).release();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    protected abstract DecoderException g(Throwable th2);

    protected abstract DecoderException h(DecoderInputBuffer decoderInputBuffer, h hVar, boolean z10);

    @Override
    public final DecoderInputBuffer dequeueInputBuffer() {
        DecoderInputBuffer decoderInputBuffer;
        synchronized (this.f10613b) {
            n();
            androidx.media3.common.util.a.g(this.f10620i == null);
            int i10 = this.f10618g;
            if (i10 == 0) {
                decoderInputBuffer = null;
            } else {
                DecoderInputBuffer[] decoderInputBufferArr = this.f10616e;
                int i11 = i10 - 1;
                this.f10618g = i11;
                decoderInputBuffer = decoderInputBufferArr[i11];
            }
            this.f10620i = decoderInputBuffer;
        }
        return decoderInputBuffer;
    }

    @Override
    public final h dequeueOutputBuffer() {
        synchronized (this.f10613b) {
            try {
                n();
                if (this.f10615d.isEmpty()) {
                    return null;
                }
                return (h) this.f10615d.removeFirst();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    protected final boolean l(long j10) {
        boolean z10;
        synchronized (this.f10613b) {
            long j11 = this.f10625n;
            z10 = j11 == C.TIME_UNSET || j10 >= j11;
        }
        return z10;
    }

    protected void p(h hVar) {
        synchronized (this.f10613b) {
            q(hVar);
            m();
        }
    }

    @Override
    public void release() {
        synchronized (this.f10613b) {
            this.f10623l = true;
            this.f10613b.notify();
        }
        try {
            this.f10612a.join();
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        }
    }

    protected final void s(int i10) {
        androidx.media3.common.util.a.g(this.f10618g == this.f10616e.length);
        for (DecoderInputBuffer decoderInputBuffer : this.f10616e) {
            decoderInputBuffer.b(i10);
        }
    }
}
