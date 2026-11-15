package com.facebook.ads.redexgen.core;

import android.util.SparseBooleanArray;
import android.view.ViewGroup;
import java.util.List;

public final class LE extends QC<FD> {
    public int A00;
    public int A01;
    public int A02;
    public InterfaceC1366Xn A03;
    public C1708eX A04;
    public String A05;
    public List<C1602cn> A06;
    public final SparseBooleanArray A07 = new SparseBooleanArray();
    public final AbstractC1910hy A08;
    public final SF A09;
    public final C1635dL A0A;
    public final US A0B;
    public final C1178Qc A0C;
    public final XH A0D;
    public final C06685s A0E;
    public final C0838Cw A0F;

    public LE(C1635dL c1635dL, List<C1602cn> list, AbstractC1910hy abstractC1910hy, US us, C1178Qc c1178Qc, InterfaceC1366Xn interfaceC1366Xn, String str, C06685s c06685s, C0838Cw c0838Cw) {
        this.A0A = c1635dL;
        this.A0B = us;
        this.A0C = c1178Qc;
        this.A09 = c1178Qc.A11();
        this.A04 = c1178Qc.A1B();
        this.A0D = c1178Qc.A1A();
        this.A03 = interfaceC1366Xn;
        this.A08 = abstractC1910hy;
        this.A06 = list;
        this.A05 = str;
        this.A0E = c06685s;
        this.A0F = c0838Cw;
    }

    @Override
    public final FD A0F(ViewGroup viewGroup, int i) {
        return new FD(AbstractC1436a6.A00(new C1472ah(this.A0A, this.A0B, this.A03, this.A08, null, this.A04, this.A0D).A0T(this.A0F).A0O(this.A0C).A0W(), this.A0C, this.A05, this.A0E), this.A07, this.A04, this.A06.size(), this.A0A, this.A08.A21());
    }

    @Override
    public final void A0K(FD fd, int i) {
        C1602cn c1602cn = this.A06.get(i);
        fd.A0q(this.A04);
        fd.A0p(c1602cn, this.A0B, this.A09, this.A0D, this.A05, this.A00, this.A02, this.A01);
    }

    @Override
    public final int A0B() {
        return this.A06.size();
    }

    public final void A0O(int i, int i2, int i3) {
        boolean needsUpdate = i != this.A00;
        this.A00 = i;
        this.A02 = i2;
        this.A01 = i3;
        if (needsUpdate) {
            A0G();
        }
    }

    public final void A0P(C1708eX c1708eX) {
        this.A04 = c1708eX;
    }
}
