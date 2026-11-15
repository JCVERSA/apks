package com.google.android.exoplayer2.decoder;

import androidx.media3.common.C;
import defpackage.iu1;
import defpackage.ku1;
import defpackage.zi;
import java.util.ArrayDeque;

public abstract class SimpleDecoder implements iu1 {
    public final Thread a;
    public final Object b = new Object();
    public final ArrayDeque c = new ArrayDeque();
    public final ArrayDeque d = new ArrayDeque();
    public final DecoderInputBuffer[] e;
    public final ku1[] f;
    public int g;
    public int h;
    public DecoderInputBuffer i;
    public DecoderException j;
    public boolean k;
    public boolean l;
    public int m;

    public SimpleDecoder(DecoderInputBuffer[] decoderInputBufferArr, ku1[] ku1VarArr) {
        this.e = decoderInputBufferArr;
        this.g = decoderInputBufferArr.length;
        for (int i = 0; i < this.g; i++) {
            this.e[i] = c();
        }
        this.f = ku1VarArr;
        this.h = ku1VarArr.length;
        for (int i2 = 0; i2 < this.h; i2++) {
            this.f[i2] = d();
        }
        Thread thread = new Thread("ExoPlayer:SimpleDecoder") {
            @Override
            public void run() {
                SimpleDecoder.this.p();
            }
        };
        this.a = thread;
        thread.start();
    }

    public final boolean b() {
        return !this.c.isEmpty() && this.h > 0;
    }

    public abstract DecoderInputBuffer c();

    public abstract ku1 d();

    public abstract DecoderException e(Throwable th);

    public abstract DecoderException f(DecoderInputBuffer decoderInputBuffer, ku1 ku1Var, boolean z);

    @Override
    public final void flush() {
        synchronized (this.b) {
            try {
                this.k = true;
                this.m = 0;
                DecoderInputBuffer decoderInputBuffer = this.i;
                if (decoderInputBuffer != null) {
                    m(decoderInputBuffer);
                    this.i = null;
                }
                while (!this.c.isEmpty()) {
                    m((DecoderInputBuffer) this.c.removeFirst());
                }
                while (!this.d.isEmpty()) {
                    ((ku1) this.d.removeFirst()).l();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean g() {
        DecoderException decoderExceptionE;
        synchronized (this.b) {
            while (!this.l && !b()) {
                try {
                    this.b.wait();
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (this.l) {
                return false;
            }
            DecoderInputBuffer decoderInputBuffer = (DecoderInputBuffer) this.c.removeFirst();
            ku1[] ku1VarArr = this.f;
            int i = this.h - 1;
            this.h = i;
            ku1 ku1Var = ku1VarArr[i];
            boolean z = this.k;
            this.k = false;
            if (decoderInputBuffer.h()) {
                ku1Var.a(4);
            } else {
                if (decoderInputBuffer.g()) {
                    ku1Var.a(Integer.MIN_VALUE);
                }
                if (decoderInputBuffer.i()) {
                    ku1Var.a(C.BUFFER_FLAG_FIRST_SAMPLE);
                }
                try {
                    decoderExceptionE = f(decoderInputBuffer, ku1Var, z);
                } catch (OutOfMemoryError e) {
                    decoderExceptionE = e(e);
                } catch (RuntimeException e2) {
                    decoderExceptionE = e(e2);
                }
                if (decoderExceptionE != null) {
                    synchronized (this.b) {
                        this.j = decoderExceptionE;
                    }
                    return false;
                }
            }
            synchronized (this.b) {
                try {
                    if (this.k) {
                        ku1Var.l();
                    } else if (ku1Var.g()) {
                        this.m++;
                        ku1Var.l();
                    } else {
                        ku1Var.d = this.m;
                        this.m = 0;
                        this.d.addLast(ku1Var);
                    }
                    m(decoderInputBuffer);
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return true;
        }
    }

    @Override
    public final DecoderInputBuffer dequeueInputBuffer() {
        DecoderInputBuffer decoderInputBuffer;
        synchronized (this.b) {
            k();
            zi.g(this.i == null);
            int i = this.g;
            if (i == 0) {
                decoderInputBuffer = null;
            } else {
                DecoderInputBuffer[] decoderInputBufferArr = this.e;
                int i2 = i - 1;
                this.g = i2;
                decoderInputBuffer = decoderInputBufferArr[i2];
            }
            this.i = decoderInputBuffer;
        }
        return decoderInputBuffer;
    }

    @Override
    public final ku1 dequeueOutputBuffer() {
        synchronized (this.b) {
            try {
                k();
                if (this.d.isEmpty()) {
                    return null;
                }
                return (ku1) this.d.removeFirst();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void j() {
        if (b()) {
            this.b.notify();
        }
    }

    public final void k() throws DecoderException {
        DecoderException decoderException = this.j;
        if (decoderException != null) {
            throw decoderException;
        }
    }

    @Override
    public final void queueInputBuffer(DecoderInputBuffer decoderInputBuffer) {
        synchronized (this.b) {
            k();
            zi.a(decoderInputBuffer == this.i);
            this.c.addLast(decoderInputBuffer);
            j();
            this.i = null;
        }
    }

    public final void m(DecoderInputBuffer decoderInputBuffer) {
        decoderInputBuffer.b();
        DecoderInputBuffer[] decoderInputBufferArr = this.e;
        int i = this.g;
        this.g = i + 1;
        decoderInputBufferArr[i] = decoderInputBuffer;
    }

    public void n(ku1 ku1Var) {
        synchronized (this.b) {
            o(ku1Var);
            j();
        }
    }

    public final void o(ku1 ku1Var) {
        ku1Var.b();
        ku1[] ku1VarArr = this.f;
        int i = this.h;
        this.h = i + 1;
        ku1VarArr[i] = ku1Var;
    }

    public final void p() {
        do {
            try {
            } catch (InterruptedException e) {
                throw new IllegalStateException(e);
            }
        } while (g());
    }

    public final void q(int i) {
        zi.g(this.g == this.e.length);
        for (DecoderInputBuffer decoderInputBuffer : this.e) {
            decoderInputBuffer.m(i);
        }
    }

    @Override
    public void release() {
        synchronized (this.b) {
            this.l = true;
            this.b.notify();
        }
        try {
            this.a.join();
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        }
    }
}
