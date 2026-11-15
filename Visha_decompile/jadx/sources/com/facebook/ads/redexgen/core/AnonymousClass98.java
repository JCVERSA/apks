package com.facebook.ads.redexgen.core;

import android.net.Uri;
import android.os.Looper;
import androidx.media3.common.C;
import com.facebook.ads.androidx.media3.common.Timeline;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;

public final class AnonymousClass98 extends AbstractC2166mS implements InterfaceC0822Cg {
    public long A00;
    public C5H A01;
    public InterfaceC1988jM<InterfaceExecutorC0893Ez> A02;
    public boolean A03;
    public boolean A04;
    public boolean A05;
    public final int A06;
    public final C2Q A07;
    public final C2303oi A08;
    public final InterfaceC06464w A09;
    public final C9U A0A;
    public final InterfaceC0816Ca A0B;
    public final InterfaceC0871Ed A0C;

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.jM != com.google.common.base.Supplier<com.facebook.ads.androidx.media3.exoplayer.util.ReleasableExecutor> */
    @MetaExoPlayerCustomization("Allow for passing a new drmSessionManager")
    public AnonymousClass98(C2303oi c2303oi, InterfaceC06464w interfaceC06464w, InterfaceC0816Ca interfaceC0816Ca, C9U c9u, InterfaceC0871Ed interfaceC0871Ed, int i, InterfaceC1988jM<InterfaceExecutorC0893Ez> interfaceC1988jM) {
        this.A07 = (C2Q) C3M.A01(c2303oi.A03);
        this.A08 = c2303oi;
        this.A09 = interfaceC06464w;
        this.A0B = interfaceC0816Ca;
        this.A0A = c9u == null ? C9U.A00 : c9u;
        this.A0C = interfaceC0871Ed;
        this.A06 = i;
        this.A04 = true;
        this.A00 = C.TIME_UNSET;
        this.A02 = interfaceC1988jM;
    }

    private void A00() {
        final Timeline anonymousClass97 = new AnonymousClass97(this.A00, this.A05, false, this.A03, null, this.A08);
        if (this.A04) {
            Timeline timeline = new C9C(anonymousClass97) {
                @Override
                public final C2283oN A0I(int i, C2283oN c2283oN, boolean z) {
                    super.A0I(i, c2283oN, z);
                    c2283oN.A05 = true;
                    return c2283oN;
                }

                @Override
                public final C2281oL A0L(int i, C2281oL c2281oL, long j) {
                    super.A0L(i, c2281oL, j);
                    c2281oL.A0F = true;
                    return c2281oL;
                }
            };
            anonymousClass97 = timeline;
        }
        A05(anonymousClass97);
    }

    @Override
    public final void A09() {
    }

    @Override
    public final void A0A(C5H c5h) {
        this.A01 = c5h;
        this.A0A.AGK();
        this.A0A.AIu((Looper) C3M.A01(Looper.myLooper()), A00());
        A00();
    }

    @Override
    @MetaExoPlayerCustomization("PlayerId needs to be set")
    public final InterfaceC2160mM A5O(C2159mL c2159mL, EO eo, long j) {
        InterfaceExecutorC0893Ez interfaceExecutorC0893Ez;
        InterfaceC2247nl interfaceC2247nlA5A = this.A09.A5A();
        if (this.A01 != null) {
            interfaceC2247nlA5A.A3v(this.A01);
        }
        Uri uri = this.A07.A00;
        InterfaceC0817Cb interfaceC0817CbA5P = this.A0B.A5P(C07147m.A03);
        C9U c9u = this.A0A;
        C9P c9pA01 = A01(c2159mL);
        InterfaceC0871Ed interfaceC0871Ed = this.A0C;
        CW cwA02 = A02(c2159mL);
        String str = this.A07.A04;
        int i = this.A06;
        if (this.A02 != null) {
            interfaceExecutorC0893Ez = this.A02.get();
        } else {
            interfaceExecutorC0893Ez = null;
        }
        return new C9A(uri, interfaceC2247nlA5A, interfaceC0817CbA5P, c9u, c9pA01, interfaceC0871Ed, cwA02, this, eo, str, i, interfaceExecutorC0893Ez);
    }

    @Override
    public final void ABu() {
    }

    @Override
    public final void AFH(long j, boolean z, boolean z2) {
        if (j == C.TIME_UNSET) {
            j = this.A00;
        }
        if (!this.A04 && this.A00 == j && this.A05 == z && this.A03 == z2) {
            return;
        }
        this.A00 = j;
        this.A05 = z;
        this.A03 = z2;
        this.A04 = false;
        A00();
    }

    @Override
    public final void AH0(InterfaceC2160mM interfaceC2160mM) {
        ((C9A) interfaceC2160mM).A0a();
    }
}
