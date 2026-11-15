package com.facebook.ads.redexgen.core;

import android.text.TextUtils;
import java.util.Map;

public class FF extends AbstractC1707eW {
    public final US A00;
    public final XH A01;
    public final C1602cn A02;
    public final FD A03;
    public final String A04;
    public final Map A05;

    public FF(FD fd, String str, C1602cn c1602cn, US us, Map map, XH xh) {
        this.A03 = fd;
        this.A04 = str;
        this.A02 = c1602cn;
        this.A00 = us;
        this.A05 = map;
        this.A01 = xh;
    }

    @Override
    public final void A03() {
        if (!this.A03.A02.A0Z() && !TextUtils.isEmpty(this.A04) && !this.A03.A05.get(this.A02.A02())) {
            this.A00.AB5(this.A04, new C1420Zp(this.A05).A03(this.A03.A03).A02(this.A01).A05());
            N3.A07(this.A03.A00, this.A03.A06);
            this.A03.A05.put(this.A02.A02(), true);
        }
    }
}
