package com.facebook.ads.redexgen.core;

import android.util.SparseBooleanArray;
import android.view.ViewGroup;
import java.util.List;

public final class F4 extends QC<C0889Ev> {
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    public AbstractC1365Xm A04;
    public InterfaceC1366Xn A05;
    public String A06;
    public List<C1602cn> A07;
    public boolean A08;
    public final SparseBooleanArray A09 = new SparseBooleanArray();
    public final AbstractC1910hy A0A;
    public final SF A0B;
    public final C1635dL A0C;
    public final US A0D;
    public final XH A0E;
    public final FH A0F;
    public final C1708eX A0G;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public F4(C1635dL c1635dL, List<C1602cn> list, AbstractC1910hy abstractC1910hy, US us, SF sf, C1708eX c1708eX, XH xh, InterfaceC1366Xn interfaceC1366Xn, String str, int i, int i2, int i3, int i4, FH fh, AbstractC1365Xm abstractC1365Xm) {
        this.A0C = c1635dL;
        this.A0D = us;
        this.A0B = sf;
        this.A0G = c1708eX;
        this.A0E = xh;
        this.A05 = interfaceC1366Xn;
        this.A0A = abstractC1910hy;
        this.A07 = list;
        this.A00 = i;
        this.A03 = i4;
        this.A06 = str;
        this.A01 = i3;
        this.A02 = i2;
        this.A0F = fh;
        this.A04 = abstractC1365Xm;
    }

    @Override
    public final C0889Ev A0F(ViewGroup viewGroup, int i) {
        return new C0889Ev(AbstractC1532bf.A00(new C1472ah(this.A0C, this.A0D, this.A05, this.A0A, null, this.A0G, this.A0E).A0R(this.A04).A0W(), this.A03, this.A06, this.A0F), this.A09, this.A0G, this.A00, this.A01, this.A02, this.A07.size(), this.A0C, this.A0A.A21());
    }

    @Override
    public final void A0K(C0889Ev c0889Ev, int i) {
        c0889Ev.A0q(this.A07.get(i), this.A0D, this.A0B, this.A0E, this.A06);
        if (!this.A08 && i == 0) {
            c0889Ev.AIV();
            this.A08 = true;
        }
    }

    @Override
    public final int A0B() {
        return this.A07.size();
    }
}
