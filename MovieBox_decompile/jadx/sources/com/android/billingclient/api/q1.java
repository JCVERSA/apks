package com.android.billingclient.api;

import android.content.Context;
import android.content.IntentFilter;

final class q1 {

    private final Context f18534a;

    private final p1 f18535b;

    /* JADX WARN: Multi-variable type inference failed */
    q1(Context context, t0 t0Var, n0 n0Var) {
        this.f18534a = context;
        this.f18535b = new p1(this, null, n0Var, 0 == true ? 1 : 0);
    }

    final t0 c() {
        p1.a(this.f18535b);
        return null;
    }

    final v d() {
        return this.f18535b.f18526a;
    }

    final void e(boolean z10) {
        IntentFilter intentFilter = new IntentFilter("com.android.vending.billing.PURCHASES_UPDATED");
        this.f18534a.getApplicationContext().getPackageName();
        intentFilter.addAction("com.android.vending.billing.ALTERNATIVE_BILLING");
        this.f18535b.c(this.f18534a, intentFilter, null, null);
    }

    q1(Context context, v vVar, c cVar, n0 n0Var) {
        this.f18534a = context;
        this.f18535b = new p1(this, vVar, cVar, n0Var, null);
    }
}
