package com.yandex.mobile.ads.impl;

import androidx.annotation.Nullable;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ShortBuffer;

public final class n12 implements uh {
    private int b;
    private float c = 1.0f;
    private float d = 1.0f;
    private uh.a e;
    private uh.a f;
    private uh.a g;
    private uh.a h;
    private boolean i;

    @Nullable
    private m12 j;
    private ByteBuffer k;
    private ShortBuffer l;
    private ByteBuffer m;
    private long n;
    private long o;
    private boolean p;

    public n12() {
        uh.a aVar = uh.a.e;
        this.e = aVar;
        this.f = aVar;
        this.g = aVar;
        this.h = aVar;
        ByteBuffer byteBuffer = uh.a;
        this.k = byteBuffer;
        this.l = byteBuffer.asShortBuffer();
        this.m = byteBuffer;
        this.b = -1;
    }

    @Override
    public final uh.a a(uh.a aVar) throws uh.b {
        if (aVar.c != 2) {
            throw new uh.b(aVar);
        }
        int i = this.b;
        if (i == -1) {
            i = aVar.a;
        }
        this.e = aVar;
        uh.a aVar2 = new uh.a(i, aVar.b, 2);
        this.f = aVar2;
        this.i = true;
        return aVar2;
    }

    @Override
    public final void b() {
        this.c = 1.0f;
        this.d = 1.0f;
        uh.a aVar = uh.a.e;
        this.e = aVar;
        this.f = aVar;
        this.g = aVar;
        this.h = aVar;
        ByteBuffer byteBuffer = uh.a;
        this.k = byteBuffer;
        this.l = byteBuffer.asShortBuffer();
        this.m = byteBuffer;
        this.b = -1;
        this.i = false;
        this.j = null;
        this.n = 0L;
        this.o = 0L;
        this.p = false;
    }

    @Override
    public final ByteBuffer c() {
        int iB;
        m12 m12Var = this.j;
        if (m12Var != null && (iB = m12Var.b()) > 0) {
            if (this.k.capacity() < iB) {
                ByteBuffer byteBufferOrder = ByteBuffer.allocateDirect(iB).order(ByteOrder.nativeOrder());
                this.k = byteBufferOrder;
                this.l = byteBufferOrder.asShortBuffer();
            } else {
                this.k.clear();
                this.l.clear();
            }
            m12Var.a(this.l);
            this.o += (long) iB;
            this.k.limit(iB);
            this.m = this.k;
        }
        ByteBuffer byteBuffer = this.m;
        this.m = uh.a;
        return byteBuffer;
    }

    @Override
    public final void d() {
        m12 m12Var = this.j;
        if (m12Var != null) {
            m12Var.e();
        }
        this.p = true;
    }

    @Override
    public final void flush() {
        if (isActive()) {
            uh.a aVar = this.e;
            this.g = aVar;
            uh.a aVar2 = this.f;
            this.h = aVar2;
            if (this.i) {
                this.j = new m12(aVar.a, aVar.b, this.c, this.d, aVar2.a);
            } else {
                m12 m12Var = this.j;
                if (m12Var != null) {
                    m12Var.a();
                }
            }
        }
        this.m = uh.a;
        this.n = 0L;
        this.o = 0L;
        this.p = false;
    }

    @Override
    public final boolean isActive() {
        return this.f.a != -1 && (Math.abs(this.c - 1.0f) >= 1.0E-4f || Math.abs(this.d - 1.0f) >= 1.0E-4f || this.f.a != this.e.a);
    }

    public final long a(long j) {
        if (this.o >= 1024) {
            long j2 = this.n;
            m12 m12Var = this.j;
            m12Var.getClass();
            long jC = j2 - ((long) m12Var.c());
            int i = this.h.a;
            int i2 = this.g.a;
            if (i == i2) {
                return f92.a(j, jC, this.o);
            }
            return f92.a(j, jC * ((long) i), this.o * ((long) i2));
        }
        return (long) (((double) this.c) * j);
    }

    @Override
    public final boolean a() {
        m12 m12Var;
        return this.p && ((m12Var = this.j) == null || m12Var.b() == 0);
    }

    public final void b(float f) {
        if (this.c != f) {
            this.c = f;
            this.i = true;
        }
    }

    @Override
    public final void a(ByteBuffer byteBuffer) {
        if (byteBuffer.hasRemaining()) {
            m12 m12Var = this.j;
            m12Var.getClass();
            ShortBuffer shortBufferAsShortBuffer = byteBuffer.asShortBuffer();
            int iRemaining = byteBuffer.remaining();
            this.n += (long) iRemaining;
            m12Var.b(shortBufferAsShortBuffer);
            byteBuffer.position(byteBuffer.position() + iRemaining);
        }
    }

    public final void a(float f) {
        if (this.d != f) {
            this.d = f;
            this.i = true;
        }
    }
}
