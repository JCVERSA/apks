package com.facebook.ads.redexgen.core;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public abstract class AbstractC2198my implements AnonymousClass38 {
    public boolean A04;
    public ByteBuffer A02 = AnonymousClass38.A00;
    public ByteBuffer A03 = AnonymousClass38.A00;
    public AnonymousClass36 A00 = AnonymousClass36.A05;
    public AnonymousClass36 A01 = AnonymousClass36.A05;
    public AnonymousClass36 A05 = AnonymousClass36.A05;
    public AnonymousClass36 A06 = AnonymousClass36.A05;

    public abstract AnonymousClass36 A09(AnonymousClass36 anonymousClass36) throws AnonymousClass37;

    public final ByteBuffer A00(int i) {
        if (this.A02.capacity() < i) {
            this.A02 = ByteBuffer.allocateDirect(i).order(ByteOrder.nativeOrder());
        } else {
            this.A02.clear();
        }
        this.A03 = this.A02;
        return this.A02;
    }

    public final boolean A01() {
        return this.A03.hasRemaining();
    }

    public void A0A() {
    }

    public void A0B() {
    }

    @Override
    public final AnonymousClass36 A4z(AnonymousClass36 anonymousClass36) throws AnonymousClass37 {
        this.A00 = anonymousClass36;
        this.A01 = A09(anonymousClass36);
        return AAC() ? this.A01 : AnonymousClass36.A05;
    }

    @Override
    public ByteBuffer A8V() {
        ByteBuffer byteBuffer = this.A03;
        ByteBuffer outputBuffer = AnonymousClass38.A00;
        this.A03 = outputBuffer;
        return byteBuffer;
    }

    @Override
    public boolean AAC() {
        return this.A01 != AnonymousClass36.A05;
    }

    @Override
    public boolean AAG() {
        return this.A04 && this.A03 == AnonymousClass38.A00;
    }

    @Override
    public final void AGW() {
        this.A04 = true;
        A0B();
    }

    @Override
    public final void flush() {
        this.A03 = AnonymousClass38.A00;
        this.A04 = false;
        this.A05 = this.A00;
        this.A06 = this.A01;
        A0A();
    }
}
