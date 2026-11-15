package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import io.appmetrica.analytics.billinginterface.internal.BillingInfo;
import io.appmetrica.analytics.billinginterface.internal.ProductType;
import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;
import java.util.ArrayList;

public final class C2927v2 implements ProtobufConverter {
    public final C2505e3 a;

    public C2927v2() {
        this(new C2505e3());
    }

    @Override
    @NonNull
    public final C2977x2 fromModel(@NonNull C2902u2 c2902u2) {
        C2977x2 c2977x2 = new C2977x2();
        c2977x2.a = new C2952w2[c2902u2.a.size()];
        int i = 0;
        for (BillingInfo billingInfo : c2902u2.a) {
            C2952w2[] c2952w2Arr = c2977x2.a;
            this.a.getClass();
            c2952w2Arr[i] = C2505e3.a(billingInfo);
            i++;
        }
        c2977x2.b = c2902u2.b;
        return c2977x2;
    }

    public C2927v2(C2505e3 c2505e3) {
        this.a = c2505e3;
    }

    @Override
    @NonNull
    public final C2902u2 toModel(@NonNull C2977x2 c2977x2) {
        ProductType productType;
        ArrayList arrayList = new ArrayList(c2977x2.a.length);
        for (C2952w2 c2952w2 : c2977x2.a) {
            this.a.getClass();
            int i = c2952w2.a;
            if (i == 2) {
                productType = ProductType.INAPP;
            } else if (i != 3) {
                productType = ProductType.UNKNOWN;
            } else {
                productType = ProductType.SUBS;
            }
            arrayList.add(new BillingInfo(productType, c2952w2.b, c2952w2.c, c2952w2.d, c2952w2.e));
        }
        return new C2902u2(arrayList, c2977x2.b);
    }
}
