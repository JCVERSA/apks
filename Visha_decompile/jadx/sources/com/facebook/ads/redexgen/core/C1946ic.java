package com.facebook.ads.redexgen.core;

import com.facebook.ads.internal.protocol.AdErrorType;

public class C1946ic implements InterfaceC1206Re {
    public final int A00;
    public final C7L A01;
    public final C7L A02;
    public final TF A03;

    public C1946ic(C7L c7l, int i, TF tf, C7L c7l2) {
        this.A01 = c7l;
        this.A00 = i;
        this.A03 = tf;
        this.A02 = c7l2;
    }

    @Override
    public final void ACM() {
        this.A01.A0C(this.A00, this.A03);
    }

    @Override
    public final void ACN() {
        this.A01.A00.ADj(this.A02, V1.A00(AdErrorType.NO_FILL));
    }
}
