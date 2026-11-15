package io.appmetrica.analytics.billingv6.impl;

import com.android.billingclient.api.BillingResult;
import defpackage.c74;
import io.appmetrica.analytics.billinginterface.internal.library.UtilsProvider;
import io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable;
import java.util.List;

public final class h extends SafeRunnable {
    public final k a;
    public final BillingResult b;
    public final List c;

    public h(k kVar, BillingResult billingResult, List list) {
        this.a = kVar;
        this.b = billingResult;
        this.c = list;
    }

    @Override
    public final void runSafety() {
        k kVar = this.a;
        BillingResult billingResult = this.b;
        List list = this.c;
        kVar.getClass();
        if (billingResult.getResponseCode() == 0 && !list.isEmpty()) {
            UtilsProvider utilsProvider = kVar.c;
            c74 c74Var = kVar.d;
            List list2 = kVar.e;
            g gVar = kVar.f;
            r rVar = new r(utilsProvider, c74Var, list2, list, gVar);
            gVar.c.add(rVar);
            kVar.c.getUiExecutor().execute(new j(kVar, rVar));
        }
        k kVar2 = this.a;
        kVar2.f.a(kVar2);
    }
}
