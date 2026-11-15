package com.google.common.hash;

import com.google.common.base.m;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

abstract class c extends b {

    private final ByteBuffer f30052a;

    private final int f30053b;

    private final int f30054c;

    protected c(int i10) {
        this(i10, i10);
    }

    private void l() {
        g.a(this.f30052a);
        while (this.f30052a.remaining() >= this.f30054c) {
            n(this.f30052a);
        }
        this.f30052a.compact();
    }

    private void m() {
        if (this.f30052a.remaining() < 8) {
            l();
        }
    }

    private e p(ByteBuffer byteBuffer) {
        if (byteBuffer.remaining() <= this.f30052a.remaining()) {
            this.f30052a.put(byteBuffer);
            m();
            return this;
        }
        int iPosition = this.f30053b - this.f30052a.position();
        for (int i10 = 0; i10 < iPosition; i10++) {
            this.f30052a.put(byteBuffer.get());
        }
        l();
        while (byteBuffer.remaining() >= this.f30054c) {
            n(byteBuffer);
        }
        this.f30052a.put(byteBuffer);
        return this;
    }

    @Override
    public final HashCode b() {
        l();
        g.a(this.f30052a);
        if (this.f30052a.remaining() > 0) {
            o(this.f30052a);
            ByteBuffer byteBuffer = this.f30052a;
            g.b(byteBuffer, byteBuffer.limit());
        }
        return k();
    }

    @Override
    public final e d(byte[] bArr, int i10, int i11) {
        return p(ByteBuffer.wrap(bArr, i10, i11).order(ByteOrder.LITTLE_ENDIAN));
    }

    @Override
    public final e e(ByteBuffer byteBuffer) {
        ByteOrder byteOrderOrder = byteBuffer.order();
        try {
            byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
            return p(byteBuffer);
        } finally {
            byteBuffer.order(byteOrderOrder);
        }
    }

    @Override
    public final e f(int i10) {
        this.f30052a.putInt(i10);
        m();
        return this;
    }

    @Override
    public final e h(long j10) {
        this.f30052a.putLong(j10);
        m();
        return this;
    }

    @Override
    public final e j(char c10) {
        this.f30052a.putChar(c10);
        m();
        return this;
    }

    protected abstract HashCode k();

    protected abstract void n(ByteBuffer byteBuffer);

    protected abstract void o(ByteBuffer byteBuffer);

    protected c(int i10, int i11) {
        m.d(i11 % i10 == 0);
        this.f30052a = ByteBuffer.allocate(i11 + 7).order(ByteOrder.LITTLE_ENDIAN);
        this.f30053b = i11;
        this.f30054c = i10;
    }
}
