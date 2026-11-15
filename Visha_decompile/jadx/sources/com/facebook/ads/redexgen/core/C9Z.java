package com.facebook.ads.redexgen.core;

import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.io.IOException;

public abstract class C9Z implements InterfaceC2222nM, C7D {
    public int A00;
    public int A01;
    public long A02;
    public long A04;
    public C7G A05;
    public C07147m A06;
    public InterfaceC0833Cr A07;
    public boolean A08;
    public boolean A09;
    public C2312or[] A0A;
    public final int A0C;

    @MetaExoPlayerCustomization(type = {"NEW_CLASS_ARG"}, value = "D18870411: Adding start stall debug reason")
    public EnumC1888hX A0B = EnumC1888hX.A09;
    public final C6N A0D = new C6N();
    public long A03 = Long.MIN_VALUE;

    public abstract void A1Z();

    public abstract void A1a(long j, boolean z) throws C9Y;

    public abstract void A1c(C2312or[] c2312orArr, long j, long j2) throws C9Y;

    public C9Z(int i) {
        this.A0C = i;
    }

    private final int A1O() {
        return this.A00;
    }

    private void A1P(long j, boolean z) throws C9Y {
        this.A08 = false;
        this.A02 = j;
        this.A03 = j;
        A1a(j, z);
    }

    public final int A1Q(long j) {
        return ((InterfaceC0833Cr) C3M.A01(this.A07)).AJI(j - this.A04);
    }

    @MetaExoPlayerCustomization(type = {"FEATURE_LOGIC"}, value = "Keep track of the non-adjusted timestamp")
    public final int A1R(C6N c6n, C2234nY c2234nY, int i) {
        int iAGf = ((InterfaceC0833Cr) C3M.A01(this.A07)).AGf(c6n, c2234nY, i);
        if (iAGf == -4) {
            if (c2234nY.A05()) {
                this.A03 = Long.MIN_VALUE;
                return this.A08 ? -4 : -3;
            }
            c2234nY.A00 = c2234nY.A01;
            c2234nY.A01 += this.A04;
            this.A03 = Math.max(this.A03, c2234nY.A01);
        } else if (iAGf == -5) {
            C2312or c2312or = (C2312or) C3M.A01(c6n.A00);
            if (c2312or.A0M != Long.MAX_VALUE) {
                c6n.A00 = c2312or.A07().A0s(c2312or.A0M + this.A04).A14();
            }
        }
        return iAGf;
    }

    public final C9Y A1S(Throwable th, C2312or c2312or, int i) {
        return A1T(th, c2312or, false, i);
    }

    public final C9Y A1T(Throwable th, C2312or c2312or, boolean z, int i) {
        int iA03 = 4;
        if (c2312or != null && !this.A09) {
            this.A09 = true;
            try {
                int formatSupport = AJb(c2312or);
                iA03 = AnonymousClass76.A03(formatSupport);
            } catch (C9Y unused) {
            } finally {
                this.A09 = false;
            }
        }
        return C9Y.A04(th, getName(), A1O(), c2312or, iA03, z, i);
    }

    public final C6N A1U() {
        this.A0D.A00();
        return this.A0D;
    }

    public final C7G A1V() {
        return (C7G) C3M.A01(this.A05);
    }

    public final C07147m A1W() {
        return (C07147m) C3M.A01(this.A06);
    }

    public void A1X() throws C9Y {
    }

    public void A1Y() {
    }

    public void A1b(boolean z, boolean z2) throws C9Y {
    }

    public final boolean A1d() {
        return A9h() ? this.A08 : ((InterfaceC0833Cr) C3M.A01(this.A07)).AAV();
    }

    public final C2312or[] A1e() {
        return (C2312or[]) C3M.A01(this.A0A);
    }

    @Override
    public final void A5p() {
        C3M.A08(this.A01 == 1);
        this.A0D.A00();
        this.A01 = 0;
        this.A07 = null;
        this.A0A = null;
        this.A08 = false;
        A1Z();
    }

    @Override
    public final void A6D(C7G c7g, C2312or[] c2312orArr, InterfaceC0833Cr interfaceC0833Cr, long j, boolean z, boolean z2, long j2, long j3) throws C9Y {
        C3M.A08(this.A01 == 0);
        this.A05 = c7g;
        this.A01 = 1;
        A1b(z, z2);
        AHq(c2312orArr, interfaceC0833Cr, j2, j3);
        A1P(j, z);
    }

    @Override
    public final C7D A75() {
        return this;
    }

    @Override
    public C6W A8L() {
        return null;
    }

    @Override
    @MetaExoPlayerCustomization(type = {"NEW_METHOD"}, value = "D18870411: Adding start stall debug reason")
    public final EnumC1888hX A91() {
        return this.A0B;
    }

    @Override
    public final int A92() {
        return this.A01;
    }

    @Override
    public final InterfaceC0833Cr A95() {
        return this.A07;
    }

    @Override
    public final int A9F() {
        return this.A0C;
    }

    @Override
    public void A9a(int i, Object obj) throws C9Y {
    }

    @Override
    public final boolean A9h() {
        return this.A03 == Long.MIN_VALUE;
    }

    @Override
    public final void AA1(int i, C07147m c07147m) {
        this.A00 = i;
        this.A06 = c07147m;
    }

    @Override
    public final boolean AAE() {
        return this.A08;
    }

    @Override
    public final void ABv() throws IOException {
        ((InterfaceC0833Cr) C3M.A01(this.A07)).ABs();
    }

    @Override
    public final void AHq(C2312or[] c2312orArr, InterfaceC0833Cr interfaceC0833Cr, long j, long j2) throws C9Y {
        C3M.A08(!this.A08);
        this.A07 = interfaceC0833Cr;
        if (this.A03 == Long.MIN_VALUE) {
            this.A03 = j;
        }
        this.A0A = c2312orArr;
        this.A04 = j2;
        A1c(c2312orArr, j, j2);
    }

    @Override
    public final void AI2(long j) throws C9Y {
        A1P(j, false);
    }

    @Override
    public final void AId() {
        this.A08 = true;
    }

    public int AJd() throws C9Y {
        return 0;
    }

    @Override
    public final void start() throws C9Y {
        C3M.A08(this.A01 == 1);
        this.A01 = 2;
        A1X();
    }

    @Override
    public final void stop() {
        C3M.A08(this.A01 == 2);
        this.A01 = 1;
        A1Y();
    }
}
