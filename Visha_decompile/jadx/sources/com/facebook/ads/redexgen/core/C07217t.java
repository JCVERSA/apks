package com.facebook.ads.redexgen.core;

import androidx.media3.exoplayer.audio.SilenceSkippingAudioProcessor;

public final class C07217t implements InterfaceC2074kk {
    public long A00;
    public final long A01;
    public final AnonymousClass45 A03 = new AnonymousClass45();
    public final AnonymousClass45 A02 = new AnonymousClass45();

    public C07217t(long j, long j2, long j3) {
        this.A00 = j;
        this.A01 = j3;
        this.A03.A04(0L);
        this.A02.A04(j2);
    }

    public final void A00(long j) {
        this.A00 = j;
    }

    public final void A01(long j, long j2) {
        if (A02(j)) {
            return;
        }
        this.A03.A04(j);
        this.A02.A04(j2);
    }

    public final boolean A02(long j) {
        long lastIndexedTimeUs = this.A03.A03(this.A03.A02() - 1);
        return j - lastIndexedTimeUs < SilenceSkippingAudioProcessor.DEFAULT_MINIMUM_SILENCE_DURATION_US;
    }

    @Override
    public final long A7b() {
        return this.A01;
    }

    @Override
    public final long A7l() {
        return this.A00;
    }

    @Override
    public final C0941Gv A8t(long j) {
        int iA0C = AbstractC06244a.A0C(this.A03, j, true, true);
        C0943Gx c0943Gx = new C0943Gx(this.A03.A03(iA0C), this.A02.A03(iA0C));
        if (c0943Gx.A01 != j) {
            int targetIndex = this.A03.A02();
            if (iA0C != targetIndex - 1) {
                int targetIndex2 = iA0C + 1;
                long jA03 = this.A03.A03(targetIndex2);
                int targetIndex3 = iA0C + 1;
                C0943Gx nextSeekPoint = new C0943Gx(jA03, this.A02.A03(targetIndex3));
                return new C0941Gv(c0943Gx, nextSeekPoint);
            }
        }
        return new C0941Gv(c0943Gx);
    }

    @Override
    public final long A99(long j) {
        return this.A03.A03(AbstractC06244a.A0C(this.A02, j, true, true));
    }

    @Override
    public final boolean AAa() {
        return true;
    }
}
