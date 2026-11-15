package com.facebook.ads.redexgen.core;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ShortBuffer;

public final class C2193mt implements AnonymousClass38 {
    public long A03;
    public long A04;
    public C8w A09;
    public boolean A0D;
    public boolean A0E;
    public float A01 = 1.0f;
    public float A00 = 1.0f;
    public AnonymousClass36 A07 = AnonymousClass36.A05;
    public AnonymousClass36 A08 = AnonymousClass36.A05;
    public AnonymousClass36 A05 = AnonymousClass36.A05;
    public AnonymousClass36 A06 = AnonymousClass36.A05;
    public ByteBuffer A0A = AnonymousClass38.A00;
    public ShortBuffer A0C = this.A0A.asShortBuffer();
    public ByteBuffer A0B = AnonymousClass38.A00;
    public int A02 = -1;

    public final long A00(long j) {
        if (this.A04 >= 1024) {
            long jA0I = this.A03 - ((long) ((C8w) C3M.A01(this.A09)).A0I());
            if (this.A06.A03 == this.A05.A03) {
                long processedInputBytes = AbstractC06244a.A0U(j, jA0I, this.A04);
                return processedInputBytes;
            }
            long processedInputBytes2 = this.A06.A03;
            long j2 = jA0I * processedInputBytes2;
            long j3 = this.A04;
            long processedInputBytes3 = this.A05.A03;
            return AbstractC06244a.A0U(j, j2, j3 * processedInputBytes3);
        }
        return (long) (((double) this.A01) * j);
    }

    public final void A01(float f) {
        if (this.A00 != f) {
            this.A00 = f;
            this.A0E = true;
        }
    }

    public final void A02(float f) {
        if (this.A01 != f) {
            this.A01 = f;
            this.A0E = true;
        }
    }

    @Override
    public final AnonymousClass36 A4z(AnonymousClass36 anonymousClass36) throws AnonymousClass37 {
        int i;
        if (anonymousClass36.A02 == 2) {
            if (this.A02 == -1) {
                i = anonymousClass36.A03;
            } else {
                i = this.A02;
            }
            this.A07 = anonymousClass36;
            this.A08 = new AnonymousClass36(i, anonymousClass36.A01, 2);
            this.A0E = true;
            return this.A08;
        }
        throw new AnonymousClass37(anonymousClass36);
    }

    @Override
    public final ByteBuffer A8V() {
        int iA0H;
        C8w c8w = this.A09;
        if (c8w != null && (iA0H = c8w.A0H()) > 0) {
            if (this.A0A.capacity() < iA0H) {
                this.A0A = ByteBuffer.allocateDirect(iA0H).order(ByteOrder.nativeOrder());
                this.A0C = this.A0A.asShortBuffer();
            } else {
                this.A0A.clear();
                this.A0C.clear();
            }
            c8w.A0L(this.A0C);
            this.A04 += (long) iA0H;
            this.A0A.limit(iA0H);
            this.A0B = this.A0A;
        }
        ByteBuffer outputBuffer = this.A0B;
        this.A0B = AnonymousClass38.A00;
        return outputBuffer;
    }

    @Override
    public final boolean AAC() {
        return this.A08.A03 != -1 && (Math.abs(this.A01 - 1.0f) >= 1.0E-4f || Math.abs(this.A00 - 1.0f) >= 1.0E-4f || this.A08.A03 != this.A07.A03);
    }

    @Override
    public final boolean AAG() {
        return this.A0D && (this.A09 == null || this.A09.A0H() == 0);
    }

    @Override
    public final void AGW() {
        if (this.A09 != null) {
            this.A09.A0K();
        }
        this.A0D = true;
    }

    @Override
    public final void AGX(ByteBuffer byteBuffer) {
        if (!byteBuffer.hasRemaining()) {
            return;
        }
        C8w c8w = (C8w) C3M.A01(this.A09);
        ShortBuffer shortBufferAsShortBuffer = byteBuffer.asShortBuffer();
        int iRemaining = byteBuffer.remaining();
        this.A03 += (long) iRemaining;
        c8w.A0M(shortBufferAsShortBuffer);
        byteBuffer.position(byteBuffer.position() + iRemaining);
    }

    @Override
    public final void flush() {
        if (AAC()) {
            this.A05 = this.A07;
            this.A06 = this.A08;
            if (this.A0E) {
                this.A09 = new C8w(this.A05.A03, this.A05.A01, this.A01, this.A00, this.A06.A03);
            } else if (this.A09 != null) {
                this.A09.A0J();
            }
        }
        this.A0B = AnonymousClass38.A00;
        this.A03 = 0L;
        this.A04 = 0L;
        this.A0D = false;
    }
}
