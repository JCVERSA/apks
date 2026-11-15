package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.collection.CollectionUtils;
import io.appmetrica.analytics.ecommerce.ECommerceProduct;
import java.util.List;
import java.util.Map;

public final class C2915uf {
    public final String a;
    public final String b;
    public final List c;
    public final Map d;
    public final C2741nf e;
    public final C2741nf f;
    public final List g;

    public C2915uf(ECommerceProduct eCommerceProduct) {
        this(eCommerceProduct.getSku(), eCommerceProduct.getName(), CollectionUtils.arrayListCopyOfNullableCollection(eCommerceProduct.getCategoriesPath()), CollectionUtils.mapCopyOfNullableMap(eCommerceProduct.getPayload()), eCommerceProduct.getActualPrice() == null ? null : new C2741nf(eCommerceProduct.getActualPrice()), eCommerceProduct.getOriginalPrice() == null ? null : new C2741nf(eCommerceProduct.getOriginalPrice()), CollectionUtils.arrayListCopyOfNullableCollection(eCommerceProduct.getPromocodes()));
    }

    public final String toString() {
        return "ProductWrapper{sku='" + this.a + "', name='" + this.b + "', categoriesPath=" + this.c + ", payload=" + this.d + ", actualPrice=" + this.e + ", originalPrice=" + this.f + ", promocodes=" + this.g + '}';
    }

    public C2915uf(String str, String str2, List list, Map map, C2741nf c2741nf, C2741nf c2741nf2, List list2) {
        this.a = str;
        this.b = str2;
        this.c = list;
        this.d = map;
        this.e = c2741nf;
        this.f = c2741nf2;
        this.g = list2;
    }
}
