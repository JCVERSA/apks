package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.billinginterface.internal.BillingInfo;
import io.appmetrica.analytics.billinginterface.internal.ProductType;
import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;

public final class C2505e3 implements ProtobufConverter {
    public static C2952w2 a(BillingInfo billingInfo) {
        C2952w2 c2952w2 = new C2952w2();
        int i = AbstractC2480d3.a[billingInfo.type.ordinal()];
        int i2 = 2;
        if (i != 1) {
            i2 = i != 2 ? 1 : 3;
        }
        c2952w2.a = i2;
        c2952w2.b = billingInfo.productId;
        c2952w2.c = billingInfo.purchaseToken;
        c2952w2.d = billingInfo.purchaseTime;
        c2952w2.e = billingInfo.sendTime;
        return c2952w2;
    }

    @Override
    public final Object fromModel(Object obj) {
        return a((BillingInfo) obj);
    }

    @Override
    public final Object toModel(Object obj) {
        ProductType productType;
        C2952w2 c2952w2 = (C2952w2) obj;
        int i = c2952w2.a;
        if (i != 2) {
            productType = i != 3 ? ProductType.UNKNOWN : ProductType.SUBS;
        } else {
            productType = ProductType.INAPP;
        }
        return new BillingInfo(productType, c2952w2.b, c2952w2.c, c2952w2.d, c2952w2.e);
    }
}
