package io.appmetrica.analytics.billingv6.impl;

import com.android.billingclient.api.QueryPurchaseHistoryParams;
import io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable;

public final class c extends SafeRunnable {
    public final d a;
    public final String b;
    public final p c;

    public c(d dVar, String str, p pVar) {
        this.a = dVar;
        this.b = str;
        this.c = pVar;
    }

    @Override
    public final void runSafety() {
        if (this.a.b.isReady()) {
            this.a.b.queryPurchaseHistoryAsync(QueryPurchaseHistoryParams.newBuilder().setProductType(this.b).build(), this.c);
        } else {
            this.a.c.getWorkerExecutor().execute(new b(this.a, this.c));
        }
    }
}
