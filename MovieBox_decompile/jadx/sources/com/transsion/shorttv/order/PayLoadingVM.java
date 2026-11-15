package com.transsion.shorttv.order;

import android.os.SystemClock;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.t0;
import androidx.p009lifecycle.u0;
import com.transsion.shorttv.order.bean.CreatePaynicornOrderReqBean;
import com.transsion.shorttv.order.bean.HttpErrorBodyBean;
import kotlin.jvm.internal.Intrinsics;

public final class PayLoadingVM extends t0 {

    private int f51027a;

    private long f51028b = 3000;

    private long f51029c = 3000;

    private final b0 f51030d = new b0();

    private final b0 f51031e = new b0();

    private final b0 f51032f = new b0();

    private final String k() {
        String simpleName = PayLoadingVM.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    public final void o(String str, String str2, String str3, String str4, boolean z10) {
        int i10 = this.f51027a;
        if (i10 >= 3) {
            this.f51032f.n(new HttpErrorBodyBean(str2, str, null, 4, null));
            return;
        }
        this.f51027a = i10 + 1;
        c.f51036a.a(k() + " --> retry() --> code = " + str + " -- msg = " + str2 + " --> retryCount = " + this.f51027a);
        kotlinx.coroutines.k.d(u0.a(this), null, null, new PayLoadingVM$retry$1(this, SystemClock.elapsedRealtime(), str3, str4, z10, null), 3, null);
    }

    public final void i(String str, String str2, boolean z10) {
        kotlinx.coroutines.k.d(u0.a(this), null, null, new PayLoadingVM$checkPayOrderId$1(str, str2, z10, this, null), 3, null);
    }

    public final void j(CreatePaynicornOrderReqBean createPaynicornOrderReqBean) {
        kotlinx.coroutines.k.d(u0.a(this), null, null, new PayLoadingVM$createPayOrderId$1(createPaynicornOrderReqBean, this, null), 3, null);
    }

    public final b0 l() {
        return this.f51030d;
    }

    public final b0 m() {
        return this.f51031e;
    }

    public final b0 n() {
        return this.f51032f;
    }
}
