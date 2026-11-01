package app.fast.ssh;

import com.android.billingclient.api.BillingResult;
import com.android.billingclient.api.PurchasesResponseListener;
import java.util.List;

public final class BillingManager$$ExternalSyntheticLambda0 implements PurchasesResponseListener {
    public final BillingManager f$0;
    public final boolean f$1;

    public BillingManager$$ExternalSyntheticLambda0(BillingManager billingManager, boolean z) {
        this.f$0 = billingManager;
        this.f$1 = z;
    }

    @Override
    public final void onQueryPurchasesResponse(BillingResult billingResult, List list) {
        this.f$0.m459lambda$restore$2$appfastsshBillingManager(this.f$1, billingResult, list);
    }
}
