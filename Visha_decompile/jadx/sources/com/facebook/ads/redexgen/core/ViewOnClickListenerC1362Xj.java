package com.facebook.ads.redexgen.core;

import android.text.TextUtils;
import android.view.View;

public class ViewOnClickListenerC1362Xj implements View.OnClickListener {
    public final N9 A00;
    public final C1278Ua A01;
    public final C1363Xk A02;
    public final InterfaceC1366Xn A03;
    public final String A04;

    public ViewOnClickListenerC1362Xj(C1363Xk c1363Xk, C1278Ua c1278Ua, InterfaceC1366Xn interfaceC1366Xn, String str, N9 n9) {
        this.A02 = c1363Xk;
        this.A01 = c1278Ua;
        this.A03 = interfaceC1366Xn;
        this.A04 = str;
        this.A00 = n9;
    }

    @Override
    public final void onClick(View view) throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return;
        }
        try {
            this.A01.A04(UZ.A0A, null);
            if (this.A02.A02.A0O(this.A02.A03.A02(), true)) {
                this.A03.AAf(this.A04, this.A00);
            } else if (!TextUtils.isEmpty(this.A00.A00())) {
                WN.A0O(new WN(), this.A02.A03, WQ.A00(this.A00.A00()), this.A04);
            }
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
        }
    }
}
