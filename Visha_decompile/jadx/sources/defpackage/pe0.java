package defpackage;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.android.billingclient.api.AcknowledgePurchaseParams;
import com.android.billingclient.api.AcknowledgePurchaseResponseListener;
import com.android.billingclient.api.BillingClient;
import com.android.billingclient.api.BillingClientStateListener;
import com.android.billingclient.api.BillingFlowParams;
import com.android.billingclient.api.BillingResult;
import com.android.billingclient.api.ConsumeParams;
import com.android.billingclient.api.ConsumeResponseListener;
import com.android.billingclient.api.PendingPurchasesParams;
import com.android.billingclient.api.ProductDetails;
import com.android.billingclient.api.ProductDetailsResponseListener;
import com.android.billingclient.api.Purchase;
import com.android.billingclient.api.PurchasesResponseListener;
import com.android.billingclient.api.PurchasesUpdatedListener;
import com.android.billingclient.api.QueryProductDetailsParams;
import com.android.billingclient.api.QueryProductDetailsResult;
import com.android.billingclient.api.QueryPurchasesParams;
import com.blankj.utilcode.util.LogUtils;
import com.bumptech.glide.repackaged.com.google.common.collect.ImmutableList;
import com.transsion.ga.AthenaAnalytics;
import com.transsion.playercommon.R;
import com.transsion.utils.ToastUtils;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.List;

public class pe0 implements PurchasesUpdatedListener {
    public BillingClient a;
    public boolean b;
    public final WeakReference c;
    public final f90 d;

    public class a implements BillingClientStateListener {
        public final Runnable a;

        public a(Runnable runnable) {
            this.a = runnable;
        }

        @Override
        public void onBillingServiceDisconnected() {
            pe0.this.b = false;
            LogUtils.w("[VishaUserDebug]", "Google billing service Disconnected!");
            if (pe0.this.d != null) {
                pe0.this.d.d(-1002, "Google billing service Disconnected");
            }
        }

        @Override
        public void onBillingSetupFinished(BillingResult billingResult) {
            String str;
            LogUtils.i("[VishaUserDebug]", "onBillingSetupFinished:" + billingResult);
            if (billingResult.getResponseCode() == 0) {
                if (pe0.this.d != null) {
                    pe0.this.d.b();
                }
                pe0.this.b = true;
                LogUtils.w("[VishaUserDebug]", "Google billing service connect success!");
                Runnable runnable = this.a;
                if (runnable != null) {
                    runnable.run();
                    return;
                }
                return;
            }
            if (("Google billing service connect fail!" + billingResult) != null) {
                str = billingResult.getResponseCode() + "--" + billingResult.getDebugMessage();
            } else {
                str = "";
            }
            LogUtils.w("[VishaUserDebug]", str);
            if (pe0.this.d != null) {
                pe0.this.d.d(billingResult.getResponseCode(), billingResult.getDebugMessage());
            }
        }
    }

    public pe0(Activity activity, f90 f90Var) {
        this.c = new WeakReference(activity);
        this.d = f90Var;
    }

    public void k(final String str) {
        o(new Runnable() {
            @Override
            public final void run() {
                this.b.r(str);
            }
        });
    }

    public void l(final String str) {
        o(new Runnable() {
            @Override
            public final void run() {
                this.b.t(str);
            }
        });
    }

    public void m(final String str) {
        o(new Runnable() {
            @Override
            public final void run() {
                this.b.v(str);
            }
        });
    }

    public void n() {
        LogUtils.w("[VishaUserDebug]", "Destroying the manager.");
        BillingClient billingClient = this.a;
        if (billingClient == null || !billingClient.isReady()) {
            return;
        }
        this.a.endConnection();
        this.a = null;
    }

    public final void o(Runnable runnable) {
        if (this.a != null) {
            runnable.run();
        } else {
            z(runnable);
        }
    }

    @Override
    public void onPurchasesUpdated(BillingResult billingResult, List list) {
        try {
            if (billingResult.getResponseCode() == 0 && list != null) {
                f90 f90Var = this.d;
                if (f90Var != null) {
                    f90Var.g(list);
                }
                LogUtils.w("[VishaUserDebug]", "Payment success >>> [code：" + billingResult.getResponseCode() + ",message：" + billingResult.getDebugMessage() + "]");
            } else if (billingResult.getResponseCode() == 1) {
                f90 f90Var2 = this.d;
                if (f90Var2 != null) {
                    f90Var2.e(list);
                }
                LogUtils.w("[VishaUserDebug]", "Payment cancel >>> [code：" + billingResult.getResponseCode() + ",message：" + billingResult.getDebugMessage() + "]");
            } else {
                f90 f90Var3 = this.d;
                if (f90Var3 != null) {
                    f90Var3.f(billingResult.getResponseCode(), billingResult.getDebugMessage());
                }
                LogUtils.w("[VishaUserDebug]", "Payment failure >>> [code：" + billingResult.getResponseCode() + ",message：" + billingResult.getDebugMessage() + "]");
            }
        } finally {
            v34.d("pay_flow");
        }
    }

    public final void p(BillingResult billingResult, QueryProductDetailsResult queryProductDetailsResult) {
        List<ProductDetails> productDetailsList = queryProductDetailsResult.getProductDetailsList();
        if (billingResult.getResponseCode() != 0 || productDetailsList == null) {
            f90 f90Var = this.d;
            if (f90Var != null) {
                f90Var.i(billingResult.getResponseCode(), billingResult.getDebugMessage());
                return;
            }
            return;
        }
        f90 f90Var2 = this.d;
        if (f90Var2 != null) {
            f90Var2.h(productDetailsList);
        }
    }

    public final void q(BillingResult billingResult) {
        f90 f90Var = this.d;
        if (f90Var != null) {
            f90Var.a(billingResult);
        }
    }

    public final void r(String str) {
        this.a.acknowledgePurchase(AcknowledgePurchaseParams.newBuilder().setPurchaseToken(str).build(), new AcknowledgePurchaseResponseListener() {
            @Override
            public final void onAcknowledgePurchaseResponse(BillingResult billingResult) {
                this.a.q(billingResult);
            }
        });
    }

    public final void s(String str, BillingResult billingResult, List list) {
        if (billingResult == null || billingResult.getResponseCode() != 0 || list == null || list.isEmpty()) {
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Purchase purchase = (Purchase) it.next();
            if (purchase.getPurchaseState() == 1 && !purchase.isAcknowledged()) {
                if (BillingClient.ProductType.SUBS.equals(str)) {
                    k(purchase.getPurchaseToken());
                    LogUtils.w("[VishaUserDebug]", "acknowledgePurchase success >>> [orderId：" + purchase.getOrderId() + "]");
                } else if (BillingClient.ProductType.INAPP.equals(str)) {
                    h27.c().e(1048, purchase);
                    m(purchase.getPurchaseToken());
                    LogUtils.w("[VishaUserDebug]", "consumeAsync success >>> [orderId：" + purchase.getOrderId() + "]");
                }
            }
        }
    }

    public final void t(final String str) {
        this.a.queryPurchasesAsync(QueryPurchasesParams.newBuilder().setProductType(str).build(), new PurchasesResponseListener() {
            @Override
            public final void onQueryPurchasesResponse(BillingResult billingResult, List list) {
                this.a.s(str, billingResult, list);
            }
        });
    }

    public final void u(BillingResult billingResult, String str) {
        f90 f90Var = this.d;
        if (f90Var != null) {
            f90Var.c(str, billingResult);
        }
    }

    public final void v(String str) {
        this.a.consumeAsync(ConsumeParams.newBuilder().setPurchaseToken(str).build(), new ConsumeResponseListener() {
            @Override
            public final void onConsumeResponse(BillingResult billingResult, String str2) {
                this.a.u(billingResult, str2);
            }
        });
    }

    public final void w(ProductDetails productDetails, String str) {
        v34.c("pay_flow", 300000L);
        BillingResult billingResultLaunchBillingFlow = this.a.launchBillingFlow((Activity) this.c.get(), BillingFlowParams.newBuilder().setProductDetailsParamsList(ImmutableList.of(BillingFlowParams.ProductDetailsParams.newBuilder().setProductDetails(productDetails).build())).setObfuscatedProfileId(str).setObfuscatedAccountId(AthenaAnalytics.F((Context) this.c.get())).build());
        LogUtils.w("[VishaUserDebug]", "launchBillingFlow >>> [responseCode:" + billingResultLaunchBillingFlow.getResponseCode() + "--" + billingResultLaunchBillingFlow.getDebugMessage() + "]");
        if (billingResultLaunchBillingFlow.getResponseCode() != 0) {
            v34.d("pay_flow");
        }
    }

    public void x(final ProductDetails productDetails, final String str, String str2, String str3, String str4) {
        if (!str2.equals(BillingClient.ProductType.SUBS)) {
            o(new Runnable() {
                @Override
                public final void run() {
                    this.b.w(productDetails, str);
                }
            });
            return;
        }
        v34.c("pay_flow", 300000L);
        String offerToken = "";
        if (productDetails != null && productDetails.getSubscriptionOfferDetails() != null && productDetails.getSubscriptionOfferDetails().size() > 0) {
            if (TextUtils.isEmpty(str4)) {
                for (ProductDetails.SubscriptionOfferDetails subscriptionOfferDetails : productDetails.getSubscriptionOfferDetails()) {
                    if (str3 != null && str3.equals(subscriptionOfferDetails.getBasePlanId()) && TextUtils.isEmpty(subscriptionOfferDetails.getOfferId())) {
                        offerToken = subscriptionOfferDetails.getOfferToken();
                        break;
                    }
                }
                if (TextUtils.isEmpty(offerToken)) {
                    ToastUtils.s(R.string.sub_no_found);
                    return;
                }
            } else {
                for (ProductDetails.SubscriptionOfferDetails subscriptionOfferDetails2 : productDetails.getSubscriptionOfferDetails()) {
                    if (str4.equals(subscriptionOfferDetails2.getOfferId())) {
                        offerToken = subscriptionOfferDetails2.getOfferToken();
                        break;
                    }
                }
                if (TextUtils.isEmpty(offerToken)) {
                    ToastUtils.s(R.string.sub_no_found);
                    return;
                }
            }
        }
        BillingResult billingResultLaunchBillingFlow = this.a.launchBillingFlow((Activity) this.c.get(), BillingFlowParams.newBuilder().setProductDetailsParamsList(ImmutableList.of(BillingFlowParams.ProductDetailsParams.newBuilder().setProductDetails(productDetails).setOfferToken(offerToken).build())).setObfuscatedProfileId(str).setObfuscatedAccountId(AthenaAnalytics.F((Context) this.c.get())).build());
        LogUtils.w("[VishaUserDebug]", "launchBillingFlow >>> [responseCode:" + billingResultLaunchBillingFlow.getResponseCode() + "--" + billingResultLaunchBillingFlow.getDebugMessage() + "]");
        if (billingResultLaunchBillingFlow.getResponseCode() != 0) {
            v34.d("pay_flow");
        }
    }

    public void y(String str, String str2) {
        QueryProductDetailsParams queryProductDetailsParamsBuild;
        LogUtils.w("[VishaUserDebug]", "queryProductDetailAsyn >>> [" + str + ",type:" + str2 + "]");
        if (str2.equals(BillingClient.ProductType.SUBS)) {
            queryProductDetailsParamsBuild = QueryProductDetailsParams.newBuilder().setProductList(ImmutableList.of(QueryProductDetailsParams.Product.newBuilder().setProductId(str.trim()).setProductType(BillingClient.ProductType.SUBS).build())).build();
        } else {
            queryProductDetailsParamsBuild = QueryProductDetailsParams.newBuilder().setProductList(ImmutableList.of(QueryProductDetailsParams.Product.newBuilder().setProductId(str.trim()).setProductType(str2).build())).build();
        }
        this.a.queryProductDetailsAsync(queryProductDetailsParamsBuild, new ProductDetailsResponseListener() {
            @Override
            public final void onProductDetailsResponse(BillingResult billingResult, QueryProductDetailsResult queryProductDetailsResult) {
                this.a.p(billingResult, queryProductDetailsResult);
            }
        });
    }

    public void z(Runnable runnable) {
        BillingClient billingClientBuild = BillingClient.newBuilder(((Activity) this.c.get()).getApplicationContext()).enablePendingPurchases(PendingPurchasesParams.newBuilder().enableOneTimeProducts().build()).enableAutoServiceReconnection().setListener(this).build();
        this.a = billingClientBuild;
        billingClientBuild.startConnection(new a(runnable));
    }
}
