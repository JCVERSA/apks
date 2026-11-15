package io.appmetrica.analytics.billingv6.impl;

import com.android.billingclient.api.BillingClient;
import com.android.billingclient.api.BillingResult;
import com.android.billingclient.api.ProductDetails;
import com.android.billingclient.api.Purchase;
import com.android.billingclient.api.PurchaseHistoryRecord;
import com.transsion.gslb.NetResponse;
import defpackage.y45;
import io.appmetrica.analytics.billinginterface.internal.ProductInfo;
import io.appmetrica.analytics.billinginterface.internal.ProductType;
import io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;

public final class q extends SafeRunnable {
    public final r a;
    public final BillingResult b;
    public final List c;

    public q(r rVar, BillingResult billingResult, List list) {
        this.a = rVar;
        this.b = billingResult;
        this.c = list;
    }

    /* JADX WARN: Code duplicated, block: B:84:0x0195  */
    @Override
    public final void runSafety() {
        ProductInfo productInfo;
        String originalJson;
        String priceCurrencyCode;
        String originalJson2;
        r rVar = this.a;
        BillingResult billingResult = this.b;
        List<Purchase> list = this.c;
        rVar.getClass();
        if (billingResult.getResponseCode() == 0) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Purchase purchase : list) {
                Iterator<String> it = purchase.getProducts().iterator();
                while (it.hasNext()) {
                    linkedHashMap.put(it.next(), purchase);
                }
            }
            List<PurchaseHistoryRecord> list2 = rVar.c;
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            for (PurchaseHistoryRecord purchaseHistoryRecord : list2) {
                Iterator<String> it2 = purchaseHistoryRecord.getProducts().iterator();
                while (it2.hasNext()) {
                    linkedHashMap2.put(it2.next(), purchaseHistoryRecord);
                }
            }
            List<ProductDetails> list3 = rVar.d;
            ArrayList arrayList = new ArrayList();
            for (ProductDetails productDetails : list3) {
                PurchaseHistoryRecord purchaseHistoryRecord2 = (PurchaseHistoryRecord) linkedHashMap2.get(productDetails.getProductId());
                if (purchaseHistoryRecord2 != null) {
                    Purchase purchase2 = (Purchase) linkedHashMap.get(productDetails.getProductId());
                    String productType = productDetails.getProductType();
                    int iHashCode = productType.hashCode();
                    if (iHashCode != 3541555) {
                        if (iHashCode == 100343516 && productType.equals(BillingClient.ProductType.INAPP)) {
                            String productType2 = productDetails.getProductType();
                            ProductType productType3 = y45.e(productType2, BillingClient.ProductType.INAPP) ? ProductType.INAPP : y45.e(productType2, BillingClient.ProductType.SUBS) ? ProductType.SUBS : ProductType.UNKNOWN;
                            String productId = productDetails.getProductId();
                            int quantity = purchaseHistoryRecord2.getQuantity();
                            ProductDetails.OneTimePurchaseOfferDetails oneTimePurchaseOfferDetails = productDetails.getOneTimePurchaseOfferDetails();
                            long priceAmountMicros = oneTimePurchaseOfferDetails != null ? oneTimePurchaseOfferDetails.getPriceAmountMicros() : 0L;
                            ProductDetails.OneTimePurchaseOfferDetails oneTimePurchaseOfferDetails2 = productDetails.getOneTimePurchaseOfferDetails();
                            if (oneTimePurchaseOfferDetails2 == null || (priceCurrencyCode = oneTimePurchaseOfferDetails2.getPriceCurrencyCode()) == null) {
                                priceCurrencyCode = "";
                            }
                            productInfo = new ProductInfo(productType3, productId, quantity, priceAmountMicros, priceCurrencyCode, 0L, null, 1, null, purchaseHistoryRecord2.getSignature(), purchaseHistoryRecord2.getPurchaseToken(), purchaseHistoryRecord2.getPurchaseTime(), purchase2 != null ? purchase2.isAutoRenewing() : false, (purchase2 == null || (originalJson2 = purchase2.getOriginalJson()) == null) ? NetResponse.EMPTY_RESPONSE : originalJson2);
                        } else {
                            productInfo = null;
                        }
                    } else if (productType.equals(BillingClient.ProductType.SUBS)) {
                        String productType4 = productDetails.getProductType();
                        productInfo = new ProductInfo(y45.e(productType4, BillingClient.ProductType.INAPP) ? ProductType.INAPP : y45.e(productType4, BillingClient.ProductType.SUBS) ? ProductType.SUBS : ProductType.UNKNOWN, productDetails.getProductId(), purchaseHistoryRecord2.getQuantity(), 0L, "", 0L, null, 1, null, purchaseHistoryRecord2.getSignature(), purchaseHistoryRecord2.getPurchaseToken(), purchaseHistoryRecord2.getPurchaseTime(), purchase2 != null ? purchase2.isAutoRenewing() : false, (purchase2 == null || (originalJson = purchase2.getOriginalJson()) == null) ? NetResponse.EMPTY_RESPONSE : originalJson);
                    } else {
                        productInfo = null;
                    }
                } else {
                    productInfo = null;
                }
                if (productInfo != null) {
                    arrayList.add(productInfo);
                }
            }
            rVar.a.getBillingInfoSender().sendInfo(arrayList);
            rVar.b.invoke();
        }
        r rVar2 = this.a;
        rVar2.e.a(rVar2);
    }
}
