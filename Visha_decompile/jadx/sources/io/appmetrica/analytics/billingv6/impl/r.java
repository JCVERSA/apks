package io.appmetrica.analytics.billingv6.impl;

import com.android.billingclient.api.BillingResult;
import com.android.billingclient.api.PurchasesResponseListener;
import defpackage.c74;
import io.appmetrica.analytics.billinginterface.internal.library.UtilsProvider;
import java.util.List;

public final class r implements PurchasesResponseListener {
    public final UtilsProvider a;
    public final c74 b;
    public final List c;
    public final List d;
    public final g e;

    public r(UtilsProvider utilsProvider, c74 c74Var, List list, List list2, g gVar) {
        this.a = utilsProvider;
        this.b = c74Var;
        this.c = list;
        this.d = list2;
        this.e = gVar;
    }

    @Override
    public final void onQueryPurchasesResponse(BillingResult billingResult, List list) {
        this.a.getWorkerExecutor().execute(new q(this, billingResult, list));
    }
}
