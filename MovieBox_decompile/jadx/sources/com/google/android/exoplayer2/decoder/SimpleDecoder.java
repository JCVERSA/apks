package com.google.android.exoplayer2.decoder;

import java.util.ArrayDeque;
import org.mvel2.ast.ASTNode;

public abstract class SimpleDecoder implements d {

    private final Thread f24208a;

    private final Object f24209b = new Object();

    private final ArrayDeque f24210c = new ArrayDeque();

    private final ArrayDeque f24211d = new ArrayDeque();

    private final DecoderInputBuffer[] f24212e;

    private final f[] f24213f;

    private int f24214g;

    private int f24215h;

    private DecoderInputBuffer f24216i;

    private DecoderException f24217j;

    private boolean f24218k;

    private boolean f24219l;

    private int f24220m;

    protected SimpleDecoder(DecoderInputBuffer[] decoderInputBufferArr, f[] fVarArr) {
        this.f24212e = decoderInputBufferArr;
        this.f24214g = decoderInputBufferArr.length;
        for (int i10 = 0; i10 < this.f24214g; i10++) {
            this.f24212e[i10] = c();
        }
        this.f24213f = fVarArr;
        this.f24215h = fVarArr.length;
        for (int i11 = 0; i11 < this.f24215h; i11++) {
            this.f24213f[i11] = d();
        }
        Thread thread = new Thread("ExoPlayer:SimpleDecoder") {
            @Override
            public void run() {
                SimpleDecoder.this.p();
            }
        };
        this.f24208a = thread;
        thread.start();
    }

    private boolean b() {
        return !this.f24210c.isEmpty() && this.f24215h > 0;
    }

    private boolean g() {
        DecoderException decoderExceptionE;
        synchronized (this.f24209b) {
            while (!this.f24219l && !b()) {
                try {
                    this.f24209b.wait();
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (this.f24219l) {
                return false;
            }
            DecoderInputBuffer decoderInputBuffer = (DecoderInputBuffer) this.f24210c.removeFirst();
            f[] fVarArr = this.f24213f;
            int i10 = this.f24215h - 1;
            this.f24215h = i10;
            f fVar = fVarArr[i10];
            boolean z10 = this.f24218k;
            this.f24218k = false;
            if (decoderInputBuffer.h()) {
                fVar.a(4);
            } else {
                if (decoderInputBuffer.g()) {
                    fVar.a(Integer.MIN_VALUE);
                }
                if (decoderInputBuffer.i()) {
                    fVar.a(ASTNode.NOJIT);
                }
                try {
                    decoderExceptionE = f(decoderInputBuffer, fVar, z10);
                } catch (OutOfMemoryError e10) {
                    decoderExceptionE = e(e10);
                } catch (RuntimeException e11) {
                    decoderExceptionE = e(e11);
                }
                if (decoderExceptionE != null) {
                    synchronized (this.f24209b) {
                        this.f24217j = decoderExceptionE;
                    }
                    return false;
                }
            }
            synchronized (this.f24209b) {
                try {
                    if (this.f24218k) {
                        fVar.l();
                    } else if (fVar.g()) {
                        this.f24220m++;
                        fVar.l();
                    } else {
                        fVar.f24247c = this.f24220m;
                        this.f24220m = 0;
                        this.f24211d.addLast(fVar);
                    }
                    m(decoderInputBuffer);
                } catch (Throwable th3) {
                    throw th3;
                }
            }
            return true;
        }
    }

    private void j() {
        if (b()) {
            this.f24209b.notify();
        }
    }

    private void k() throws DecoderException {
        DecoderException decoderException = this.f24217j;
        if (decoderException != null) {
            throw decoderException;
        }
    }

    private void m(DecoderInputBuffer decoderInputBuffer) {
        decoderInputBuffer.b();
        DecoderInputBuffer[] decoderInputBufferArr = this.f24212e;
        int i10 = this.f24214g;
        this.f24214g = i10 + 1;
        decoderInputBufferArr[i10] = decoderInputBuffer;
    }

    private void o(f fVar) {
        fVar.b();
        f[] fVarArr = this.f24213f;
        int i10 = this.f24215h;
        this.f24215h = i10 + 1;
        fVarArr[i10] = fVar;
    }

    public void p() {
        do {
            try {
            } catch (InterruptedException e10) {
                throw new IllegalStateException(e10);
            }
        } while (g());
    }

    protected abstract DecoderInputBuffer c();

    protected abstract f d();

    protected abstract DecoderException e(Throwable th2);

    protected abstract DecoderException f(DecoderInputBuffer decoderInputBuffer, f fVar, boolean z10);

    @Override
    public final void flush() {
        synchronized (this.f24209b) {
            try {
                this.f24218k = true;
                this.f24220m = 0;
                DecoderInputBuffer decoderInputBuffer = this.f24216i;
                if (decoderInputBuffer != null) {
                    m(decoderInputBuffer);
                    this.f24216i = null;
                }
                while (!this.f24210c.isEmpty()) {
                    m((DecoderInputBuffer) this.f24210c.removeFirst());
                }
                while (!this.f24211d.isEmpty()) {
                    ((f) this.f24211d.removeFirst()).l();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public final DecoderInputBuffer dequeueInputBuffer() {
        DecoderInputBuffer decoderInputBuffer;
        synchronized (this.f24209b) {
            k();
            com.google.android.exoplayer2.util.a.g(this.f24216i == null);
            int i10 = this.f24214g;
            if (i10 == 0) {
                decoderInputBuffer = null;
            } else {
                DecoderInputBuffer[] decoderInputBufferArr = this.f24212e;
                int i11 = i10 - 1;
                this.f24214g = i11;
                decoderInputBuffer = decoderInputBufferArr[i11];
            }
            this.f24216i = decoderInputBuffer;
        }
        return decoderInputBuffer;
    }

    @Override
    public final f dequeueOutputBuffer() {
        synchronized (this.f24209b) {
            try {
                k();
                if (this.f24211d.isEmpty()) {
                    return null;
                }
                return (f) this.f24211d.removeFirst();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public final void queueInputBuffer(DecoderInputBuffer decoderInputBuffer) {
        synchronized (this.f24209b) {
            k();
            com.google.android.exoplayer2.util.a.a(decoderInputBuffer == this.f24216i);
            this.f24210c.addLast(decoderInputBuffer);
            j();
            this.f24216i = null;
        }
    }

    protected void n(f fVar) {
        synchronized (this.f24209b) {
            o(fVar);
            j();
        }
    }

    protected final void q(int i10) {
        com.google.android.exoplayer2.util.a.g(this.f24214g == this.f24212e.length);
        for (DecoderInputBuffer decoderInputBuffer : this.f24212e) {
            decoderInputBuffer.m(i10);
        }
    }

    @Override
    public void release() {
        synchronized (this.f24209b) {
            this.f24219l = true;
            this.f24209b.notify();
        }
        try {
            this.f24208a.join();
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        }
    }
}
