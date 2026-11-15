package com.android.billingclient.api;

import androidx.annotation.NonNull;
import java.util.List;

@zzu
public final class QueryProductDetailsResult {
    private final List<ProductDetails> productDetailsList;
    private final List<UnfetchedProduct> unfetchedProductList;

    public QueryProductDetailsResult(List<ProductDetails> list, List<UnfetchedProduct> list2) {
        this.productDetailsList = list;
        this.unfetchedProductList = list2;
    }

    @NonNull
    public static QueryProductDetailsResult create(@NonNull List<ProductDetails> list, @NonNull List<UnfetchedProduct> list2) {
        return new QueryProductDetailsResult(list, list2);
    }

    @NonNull
    @zzu
    public List<ProductDetails> getProductDetailsList() {
        return this.productDetailsList;
    }

    @NonNull
    @zzu
    public List<UnfetchedProduct> getUnfetchedProductList() {
        return this.unfetchedProductList;
    }
}
