package app.fast.ssh;

import com.android.billingclient.api.BillingResult;
import com.android.billingclient.api.ProductDetailsResponseListener;
import com.android.billingclient.api.QueryProductDetailsResult;

public final class BillingManager$$ExternalSyntheticLambda2 implements ProductDetailsResponseListener {
    public final BillingManager f$0;

    public BillingManager$$ExternalSyntheticLambda2(BillingManager billingManager) {
        this.f$0 = billingManager;
    }

    @Override
    public final void onProductDetailsResponse(BillingResult billingResult, QueryProductDetailsResult queryProductDetailsResult) {
        this.f$0.m460lambda$warmProduct$0$appfastsshBillingManager(billingResult, queryProductDetailsResult);
    }
}
