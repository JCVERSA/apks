package com.facebook.ads.redexgen.core;

import android.view.View;

public final class C1187Ql {
    public C1184Qi A00 = new C1184Qi();
    public final InterfaceC1185Qj A01;

    public C1187Ql(InterfaceC1185Qj interfaceC1185Qj) {
        this.A01 = interfaceC1185Qj;
    }

    public final View A00(int i, int i2, int i3, int i4) {
        int iA8Z = this.A01.A8Z();
        int next = this.A01.A8Y();
        int childEnd = i2 > i ? 1 : -1;
        View view = null;
        while (i != i2) {
            View viewA79 = this.A01.A79(i);
            int iA7C = this.A01.A7C(viewA79);
            int i5 = this.A01.A7B(viewA79);
            this.A00.A03(iA8Z, next, iA7C, i5);
            if (i3 != 0) {
                this.A00.A01();
                this.A00.A02(i3);
                if (this.A00.A04()) {
                    return viewA79;
                }
            }
            if (i4 != 0) {
                this.A00.A01();
                this.A00.A02(i4);
                if (this.A00.A04()) {
                    view = viewA79;
                }
            }
            i += childEnd;
        }
        return view;
    }
}
