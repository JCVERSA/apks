package io.appmetrica.analytics.billingv6.impl;

import com.android.billingclient.api.BillingClient;
import com.android.billingclient.api.BillingResult;
import defpackage.y71;
import io.appmetrica.analytics.billinginterface.internal.config.BillingConfig;
import io.appmetrica.analytics.billinginterface.internal.library.UtilsProvider;
import io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable;

public final class a extends SafeRunnable {
    public final d a;
    public final BillingResult b;

    public a(d dVar, BillingResult billingResult) {
        this.a = dVar;
        this.b = billingResult;
    }

    @Override
    public final void runSafety() {
        d dVar = this.a;
        BillingResult billingResult = this.b;
        dVar.getClass();
        if (billingResult.getResponseCode() != 0) {
            return;
        }
        for (String str : y71.n(BillingClient.ProductType.INAPP, BillingClient.ProductType.SUBS)) {
            BillingConfig billingConfig = dVar.a;
            BillingClient billingClient = dVar.b;
            UtilsProvider utilsProvider = dVar.c;
            g gVar = dVar.d;
            p pVar = new p(billingConfig, billingClient, utilsProvider, str, gVar);
            gVar.c.add(pVar);
            dVar.c.getUiExecutor().execute(new c(dVar, str, pVar));
        }
    }
}
