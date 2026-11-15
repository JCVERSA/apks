package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import io.appmetrica.analytics.billinginterface.internal.ProductInfo;
import io.appmetrica.analytics.billinginterface.internal.storage.BillingInfoSender;
import io.appmetrica.analytics.coreapi.internal.executors.ICommonExecutor;
import java.util.Iterator;
import java.util.List;

public final class C2555g3 implements BillingInfoSender {
    public final Wa a;
    public final ICommonExecutor b;

    public C2555g3(@NonNull Wa wa) {
        this(wa, C2910ua.j().w().e());
    }

    @Override
    public final void sendInfo(@NonNull List<ProductInfo> list) {
        Iterator<ProductInfo> it = list.iterator();
        while (it.hasNext()) {
            this.b.execute(new C2530f3(this, it.next()));
        }
    }

    public C2555g3(@NonNull Wa wa, @NonNull ICommonExecutor iCommonExecutor) {
        this.a = wa;
        this.b = iCommonExecutor;
    }
}
