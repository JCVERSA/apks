package com.facebook.ads.redexgen.core;

import java.util.LinkedList;
import java.util.List;

public final class C1303Uz {
    public final InterfaceC1301Ux A0B;
    public final boolean A0F;
    public final String A0C = C1303Uz.class.getSimpleName();
    public final int A07 = 101;
    public final int A0A = 102;
    public final int A08 = 103;
    public final int A03 = 104;
    public final int A09 = 105;
    public final int A02 = 106;
    public final int A04 = 107;
    public final int A05 = 108;
    public final int A06 = 109;
    public final int A01 = 110;
    public final boolean A0E = false;
    public long A00 = -1;
    public final List<C1302Uy> A0D = new LinkedList();

    public C1303Uz(SQ sq, InterfaceC1301Ux interfaceC1301Ux) {
        int nativeViewabilityHistorySamplingRate = U9.A0D(sq);
        if (nativeViewabilityHistorySamplingRate < 1) {
            this.A0F = false;
        } else {
            this.A0F = sq.A09().A00() < 1.0d / ((double) nativeViewabilityHistorySamplingRate);
        }
        this.A0B = interfaceC1301Ux;
    }

    private int A00() {
        return this.A0B.A7V();
    }

    private int A01() {
        if (this.A00 > 0) {
            return (int) (System.currentTimeMillis() - this.A00);
        }
        return -1;
    }

    private void A03(C1302Uy c1302Uy) {
        synchronized (this.A0D) {
            this.A0D.add(c1302Uy);
        }
    }

    public final void A04() {
        if (!this.A0F) {
            return;
        }
        A03(new C1302Uy(A01(), 110, A00(), null));
    }

    public final void A05() {
        if (!this.A0F) {
            return;
        }
        A03(new C1302Uy(A01(), 106, A00(), null));
    }

    public final void A06() {
        if (!this.A0F) {
            return;
        }
        A03(new C1302Uy(A01(), 104, A00(), null));
    }

    public final void A07() {
        if (!this.A0F) {
            return;
        }
        A03(new C1302Uy(A01(), 109, -1, null));
    }

    public final void A08() {
        if (!this.A0F) {
            return;
        }
        A03(new C1302Uy(A01(), 108, A00(), null));
    }

    public final void A09() {
        if (!this.A0F) {
            return;
        }
        this.A00 = System.currentTimeMillis();
        A03(new C1302Uy(0, 101, -1, null));
    }

    public final void A0A() {
        if (!this.A0F) {
            return;
        }
        A03(new C1302Uy(A01(), 105, A00(), null));
    }

    public final void A0B() {
        if (!this.A0F) {
            return;
        }
        A03(new C1302Uy(A01(), 102, A00(), null));
    }

    public final void A0C(SQ sq, String str) {
        if (!this.A0F) {
            return;
        }
        A03(new C1302Uy(A01(), 103, A00(), null));
        XU.A06.execute(new RunnableC1300Uw(this, str, sq));
    }
}
