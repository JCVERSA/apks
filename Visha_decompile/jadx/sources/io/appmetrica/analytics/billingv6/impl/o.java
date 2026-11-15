package io.appmetrica.analytics.billingv6.impl;

import com.android.billingclient.api.BillingClient;
import com.android.billingclient.api.QueryProductDetailsParams;
import defpackage.z71;
import io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class o extends SafeRunnable {
    public final p a;
    public final List b;
    public final k c;

    public o(p pVar, List list, k kVar) {
        this.a = pVar;
        this.b = list;
        this.c = kVar;
    }

    @Override
    public final void runSafety() {
        if (!this.a.b.isReady()) {
            this.a.c.getWorkerExecutor().execute(new n(this.a, this.c));
            return;
        }
        BillingClient billingClient = this.a.b;
        QueryProductDetailsParams.Builder builderNewBuilder = QueryProductDetailsParams.newBuilder();
        List list = this.b;
        p pVar = this.a;
        ArrayList arrayList = new ArrayList(z71.v(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(QueryProductDetailsParams.Product.newBuilder().setProductId((String) it.next()).setProductType(pVar.d).build());
        }
        billingClient.queryProductDetailsAsync(builderNewBuilder.setProductList(arrayList).build(), this.c);
    }
}
