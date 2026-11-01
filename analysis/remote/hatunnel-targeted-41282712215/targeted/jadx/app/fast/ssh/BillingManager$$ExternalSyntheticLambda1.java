package app.fast.ssh;

import android.app.Activity;
import com.android.billingclient.api.BillingResult;
import com.android.billingclient.api.ProductDetailsResponseListener;
import com.android.billingclient.api.QueryProductDetailsResult;

public final class BillingManager$$ExternalSyntheticLambda1 implements ProductDetailsResponseListener {
    public final BillingManager f$0;
    public final Activity f$1;

    public BillingManager$$ExternalSyntheticLambda1(BillingManager billingManager, Activity activity) {
        this.f$0 = billingManager;
        this.f$1 = activity;
    }

    @Override
    public final void onProductDetailsResponse(BillingResult billingResult, QueryProductDetailsResult queryProductDetailsResult) {
        this.f$0.m458lambda$purchase$1$appfastsshBillingManager(this.f$1, billingResult, queryProductDetailsResult);
    }
}
