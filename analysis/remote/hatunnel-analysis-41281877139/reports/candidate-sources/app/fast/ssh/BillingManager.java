package app.fast.ssh;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.android.billingclient.api.BillingClient;
import com.android.billingclient.api.BillingClientStateListener;
import com.android.billingclient.api.BillingFlowParams;
import com.android.billingclient.api.BillingResult;
import com.android.billingclient.api.PendingPurchasesParams;
import com.android.billingclient.api.ProductDetails;
import com.android.billingclient.api.Purchase;
import com.android.billingclient.api.PurchasesUpdatedListener;
import com.android.billingclient.api.QueryProductDetailsParams;
import com.android.billingclient.api.QueryProductDetailsResult;
import com.android.billingclient.api.QueryPurchasesParams;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class BillingManager implements PurchasesUpdatedListener, BillingClientStateListener {
    private static final long FORCE_DEBOUNCE_MS = 30000;
    private static final long MIN_REDEEM_INTERVAL_MS = 60000;
    private static final long RECONNECT_BASE_MS = 1000;
    private static final long RECONNECT_MAX_MS = 60000;
    private ProductDetails cachedProduct;
    private final BillingClient client;
    private final TokenExchange exchange;
    private SessionControl session;
    private StateListener stateListener;
    private final SubscriptionStore store;
    private final String userId;
    private static final String TAG = ProtectedFastSSH.s("⸖");
    public static final String PRODUCT_ID = ProtectedFastSSH.s("⸠");
    private final Handler handler = new Handler(Looper.getMainLooper());
    private State state = State.UNKNOWN;
    private long reconnectDelayMs = RECONNECT_BASE_MS;
    private long lastRedeemAt = 0;
    private long lastForcedAt = 0;

    class AnonymousClass1 implements Runnable {
        final StateListener val$l;
        final String val$message;
        final State val$next;

        AnonymousClass1(StateListener stateListener, State state, String str) {
            this.val$l = stateListener;
            this.val$next = state;
            this.val$message = str;
        }

        @Override
        public void run() {
            this.val$l.onBillingState(this.val$next, this.val$message);
        }
    }

    class AnonymousClass2 implements Runnable {
        AnonymousClass2() {
        }

        @Override
        public void run() {
            if (BillingManager.access$000(BillingManager.this).isReady()) {
                return;
            }
            BillingManager.access$000(BillingManager.this).startConnection(BillingManager.this);
        }
    }

    class AnonymousClass3 implements Runnable {
        final Activity val$activity;
        final BillingFlowParams val$flow;

        AnonymousClass3(Activity activity, BillingFlowParams billingFlowParams) {
            this.val$activity = activity;
            this.val$flow = billingFlowParams;
        }

        @Override
        public void run() {
            boolean zIsFinishing = this.val$activity.isFinishing();
            ProtectedFastSSH.s("ⷼ");
            if (zIsFinishing || this.val$activity.isDestroyed()) {
                ProtectedFastSSH.s("ⷿ");
                return;
            }
            BillingResult billingResultLaunchBillingFlow = BillingManager.access$000(BillingManager.this).launchBillingFlow(this.val$activity, this.val$flow);
            String str = ProtectedFastSSH.s("ⷽ") + billingResultLaunchBillingFlow.getResponseCode() + ProtectedFastSSH.s("ⷾ") + billingResultLaunchBillingFlow.getDebugMessage();
            if (billingResultLaunchBillingFlow.getResponseCode() != 0) {
                BillingManager.access$200(BillingManager.this, State.FAILED, BillingManager.access$100(billingResultLaunchBillingFlow.getResponseCode()));
            }
        }
    }

    class AnonymousClass4 implements TokenExchange.Callback {
        AnonymousClass4() {
        }

        @Override
        public void onInvalid() {
            ProtectedFastSSH.s("⸀");
            ProtectedFastSSH.s("⸁");
            BillingManager.access$300(BillingManager.this).clear();
            BillingManager.access$200(BillingManager.this, State.NOT_SUBSCRIBED, null);
            SessionControl sessionControlAccess$400 = BillingManager.access$400(BillingManager.this);
            if (sessionControlAccess$400 == null || !sessionControlAccess$400.isConnected()) {
                return;
            }
            ProtectedFastSSH.s("⸂");
            sessionControlAccess$400.sendSubToken(null);
        }

        @Override
        public void onUnreachable() {
            if (BillingManager.access$300(BillingManager.this).getSubscriptionToken() == null) {
                BillingManager.access$200(BillingManager.this, State.UNKNOWN, null);
            }
        }

        @Override
        public void onValid(String str, long j) {
            BillingManager.access$300(BillingManager.this).save(str, j);
            BillingManager.access$200(BillingManager.this, State.SUBSCRIBED, null);
            SessionControl sessionControlAccess$400 = BillingManager.access$400(BillingManager.this);
            ProtectedFastSSH.s("⸁");
            if (sessionControlAccess$400 == null || !sessionControlAccess$400.isConnected()) {
                ProtectedFastSSH.s("⸄");
            } else {
                ProtectedFastSSH.s("⸃");
                sessionControlAccess$400.sendSubToken(str);
            }
        }
    }

    public interface SessionControl {
        boolean isConnected();

        void sendSubToken(String str);
    }

    public enum State {
        UNKNOWN,
        NOT_SUBSCRIBED,
        SUBSCRIBED,
        FAILED
    }

    public interface StateListener {
        void onBillingState(State state, String str);
    }

    public interface SubscriptionStore {
        void clear();

        String getPurchaseToken();

        long getRefreshWindowMillis();

        String getSubscriptionToken();

        long getTokenExpiresAtMillis();

        void save(String str, long j);

        void savePurchaseToken(String str);
    }

    public interface TokenExchange {

        public interface Callback {
            void onInvalid();

            void onUnreachable();

            void onValid(String str, long j);
        }

        void redeem(String str, String str2, Callback callback);
    }

    public BillingManager(Context context, TokenExchange tokenExchange, SubscriptionStore subscriptionStore, String str) {
        this.exchange = tokenExchange;
        this.store = subscriptionStore;
        this.userId = str;
        this.client = BillingClient.newBuilder(context).setListener(this).enablePendingPurchases(PendingPurchasesParams.newBuilder().enableOneTimeProducts().build()).build();
    }

    static BillingClient access$000(BillingManager billingManager) {
        return billingManager.client;
    }

    static String access$100(int i) {
        return describe(i);
    }

    static void access$200(BillingManager billingManager, State state, String str) {
        billingManager.setState(state, str);
    }

    static SubscriptionStore access$300(BillingManager billingManager) {
        return billingManager.store;
    }

    static SessionControl access$400(BillingManager billingManager) {
        return billingManager.session;
    }

    private static String describe(int i) {
        if (i == 12) {
            return ProtectedFastSSH.s("⸕");
        }
        switch (i) {
            case -2:
                return ProtectedFastSSH.s("⸔");
            case -1:
                return ProtectedFastSSH.s("⸓");
            case 0:
                return ProtectedFastSSH.s("⸒");
            case 1:
                return ProtectedFastSSH.s("⸑");
            case 2:
                return ProtectedFastSSH.s("⸐");
            case 3:
                return ProtectedFastSSH.s("⸏");
            case 4:
                return ProtectedFastSSH.s("⸎");
            case 5:
                return ProtectedFastSSH.s("⸍");
            case 6:
                return ProtectedFastSSH.s("⸌");
            case 7:
                return ProtectedFastSSH.s("⸋");
            case 8:
                return ProtectedFastSSH.s("⸊");
            default:
                return ProtectedFastSSH.s("⸉") + i;
        }
    }

    private void launch(Activity activity, ProductDetails productDetails) {
        List<ProductDetails.SubscriptionOfferDetails> subscriptionOfferDetails = productDetails.getSubscriptionOfferDetails();
        ProtectedFastSSH.s("⸖");
        if (subscriptionOfferDetails == null || subscriptionOfferDetails.isEmpty()) {
            ProtectedFastSSH.s("⸝");
            setState(State.FAILED, ProtectedFastSSH.s("⸞"));
            return;
        }
        ProductDetails.SubscriptionOfferDetails subscriptionOfferDetails2 = subscriptionOfferDetails.get(0);
        String str = ProtectedFastSSH.s("⸗") + subscriptionOfferDetails2.getBasePlanId() + ProtectedFastSSH.s("⸘") + subscriptionOfferDetails2.getOfferId() + ProtectedFastSSH.s("⸙") + subscriptionOfferDetails.size();
        List<ProductDetails.PricingPhase> pricingPhaseList = subscriptionOfferDetails2.getPricingPhases().getPricingPhaseList();
        if (!pricingPhaseList.isEmpty()) {
            ProductDetails.PricingPhase pricingPhase = pricingPhaseList.get(0);
            String str2 = ProtectedFastSSH.s("⸚") + pricingPhase.getFormattedPrice() + ProtectedFastSSH.s("⸛") + pricingPhase.getPriceCurrencyCode() + ProtectedFastSSH.s("⸜") + pricingPhase.getBillingPeriod();
        }
        this.handler.post(new AnonymousClass3(activity, BillingFlowParams.newBuilder().setProductDetailsParamsList(Collections.singletonList(BillingFlowParams.ProductDetailsParams.newBuilder().setProductDetails(productDetails).setOfferToken(subscriptionOfferDetails2.getOfferToken()).build())).setObfuscatedAccountId(this.userId).build()));
    }

    private void redeem(String str) {
        redeem(str, false);
    }

    private void redeem(String str, boolean z) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (z || jCurrentTimeMillis - this.lastRedeemAt >= 60000) {
            this.lastRedeemAt = jCurrentTimeMillis;
            this.exchange.redeem(str, this.userId, new AnonymousClass4());
        } else {
            ProtectedFastSSH.s("⸖");
            ProtectedFastSSH.s("⸟");
        }
    }

    private void scheduleReconnect() {
        long j = this.reconnectDelayMs;
        this.reconnectDelayMs = Math.min(2 * j, 60000L);
        this.handler.postDelayed(new AnonymousClass2(), j);
    }

    private void setState(State state, String str) {
        this.state = state;
        StateListener stateListener = this.stateListener;
        if (stateListener != null) {
            this.handler.post(new AnonymousClass1(stateListener, state, str));
        }
    }

    private void warmProduct() {
        this.client.queryProductDetailsAsync(QueryProductDetailsParams.newBuilder().setProductList(Collections.singletonList(QueryProductDetailsParams.Product.newBuilder().setProductId(ProtectedFastSSH.s("⸠")).setProductType(ProtectedFastSSH.s("⸡")).build())).build(), new BillingManager$$ExternalSyntheticLambda2(this));
    }

    public State getState() {
        return this.state;
    }

    void m458lambda$purchase$1$appfastsshBillingManager(Activity activity, BillingResult billingResult, QueryProductDetailsResult queryProductDetailsResult) {
        int responseCode = billingResult.getResponseCode();
        String str = ProtectedFastSSH.s("⸢") + responseCode + ProtectedFastSSH.s("⸣") + billingResult.getDebugMessage() + ProtectedFastSSH.s("⸤") + queryProductDetailsResult.getProductDetailsList().size();
        ProtectedFastSSH.s("⸖");
        if (responseCode != 0) {
            String str2 = ProtectedFastSSH.s("⸥") + describe(responseCode);
            setState(State.FAILED, describe(responseCode));
            return;
        }
        if (queryProductDetailsResult.getProductDetailsList().isEmpty()) {
            ProtectedFastSSH.s("⸦");
            setState(State.FAILED, ProtectedFastSSH.s("⸧"));
            return;
        }
        ProductDetails productDetails = queryProductDetailsResult.getProductDetailsList().get(0);
        String str3 = ProtectedFastSSH.s("⸨") + productDetails.getProductId() + ProtectedFastSSH.s("⸩") + productDetails.getProductType() + ProtectedFastSSH.s("⸪") + productDetails.getTitle();
        this.cachedProduct = productDetails;
        launch(activity, productDetails);
    }

    void m459lambda$restore$2$appfastsshBillingManager(boolean z, BillingResult billingResult, List list) {
        Purchase purchase;
        Iterator it = list.iterator();
        do {
            if (!it.hasNext()) {
                purchase = null;
                break;
            }
            purchase = (Purchase) it.next();
        } while (purchase.getPurchaseState() != 1);
        if (purchase != null) {
            this.store.savePurchaseToken(purchase.getPurchaseToken());
            redeem(purchase.getPurchaseToken(), z);
            return;
        }
        String purchaseToken = this.store.getPurchaseToken();
        if (purchaseToken != null) {
            ProtectedFastSSH.s("⸖");
            ProtectedFastSSH.s("⸫");
            redeem(purchaseToken, z);
        } else if (this.store.getSubscriptionToken() == null) {
            setState(State.NOT_SUBSCRIBED, null);
        }
    }

    void m460lambda$warmProduct$0$appfastsshBillingManager(BillingResult billingResult, QueryProductDetailsResult queryProductDetailsResult) {
        int responseCode = billingResult.getResponseCode();
        ProtectedFastSSH.s("⸖");
        if (responseCode == 0 && !queryProductDetailsResult.getProductDetailsList().isEmpty()) {
            this.cachedProduct = queryProductDetailsResult.getProductDetailsList().get(0);
            String str = ProtectedFastSSH.s("⸬") + this.cachedProduct.getProductId();
            return;
        }
        String str2 = ProtectedFastSSH.s("⸭") + billingResult.getResponseCode() + ProtectedFastSSH.s("⸛") + describe(billingResult.getResponseCode()) + ProtectedFastSSH.s("⸮");
    }

    @Override
    public void onBillingServiceDisconnected() {
        scheduleReconnect();
    }

    @Override
    public void onBillingSetupFinished(BillingResult billingResult) {
        if (billingResult.getResponseCode() != 0) {
            scheduleReconnect();
            return;
        }
        this.reconnectDelayMs = RECONNECT_BASE_MS;
        restore();
        warmProduct();
    }

    @Override
    public void onPurchasesUpdated(BillingResult billingResult, List<Purchase> list) {
        int responseCode = billingResult.getResponseCode();
        if (responseCode != 0) {
            if (responseCode != 1) {
                if (responseCode != 7) {
                    setState(State.FAILED, describe(billingResult.getResponseCode()));
                    return;
                } else {
                    restore();
                    return;
                }
            }
            return;
        }
        if (list != null) {
            for (Purchase purchase : list) {
                this.store.savePurchaseToken(purchase.getPurchaseToken());
                redeem(purchase.getPurchaseToken(), true);
            }
        }
    }

    public void onServerRequestedRefresh() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j = jCurrentTimeMillis - this.lastForcedAt;
        ProtectedFastSSH.s("⸖");
        if (j < 30000) {
            ProtectedFastSSH.s("ⸯ");
            return;
        }
        this.lastForcedAt = jCurrentTimeMillis;
        ProtectedFastSSH.s("⸰");
        restore(true);
    }

    public void purchase(Activity activity) {
        StringBuilder sb = new StringBuilder(ProtectedFastSSH.s("⸱"));
        sb.append(this.client.isReady());
        sb.append(ProtectedFastSSH.s("⸲"));
        sb.append(this.cachedProduct != null);
        sb.append(ProtectedFastSSH.s("⸳"));
        sb.toString();
        ProtectedFastSSH.s("⸖");
        if (activity == null || activity.isFinishing()) {
            ProtectedFastSSH.s("⸶");
            setState(State.FAILED, ProtectedFastSSH.s("⸷"));
        } else if (!this.client.isReady()) {
            ProtectedFastSSH.s("⸴");
            setState(State.FAILED, ProtectedFastSSH.s("⸵"));
            this.client.startConnection(this);
        } else {
            ProductDetails productDetails = this.cachedProduct;
            if (productDetails != null) {
                launch(activity, productDetails);
            } else {
                this.client.queryProductDetailsAsync(QueryProductDetailsParams.newBuilder().setProductList(Collections.singletonList(QueryProductDetailsParams.Product.newBuilder().setProductId(ProtectedFastSSH.s("⸠")).setProductType(ProtectedFastSSH.s("⸡")).build())).build(), new BillingManager$$ExternalSyntheticLambda1(this, activity));
            }
        }
    }

    public void refreshIfNeeded() {
        String subscriptionToken = this.store.getSubscriptionToken();
        if (subscriptionToken == null || subscriptionToken.isEmpty() || System.currentTimeMillis() < this.store.getTokenExpiresAtMillis() - this.store.getRefreshWindowMillis()) {
            return;
        }
        restore();
    }

    public void restore() {
        restore(false);
    }

    public void restore(boolean z) {
        this.client.queryPurchasesAsync(QueryPurchasesParams.newBuilder().setProductType(ProtectedFastSSH.s("⸡")).build(), new BillingManager$$ExternalSyntheticLambda0(this, z));
    }

    public void setSessionControl(SessionControl sessionControl) {
        this.session = sessionControl;
    }

    public void setStateListener(StateListener stateListener) {
        this.stateListener = stateListener;
    }

    public void start() {
        if (this.client.isReady()) {
            return;
        }
        this.client.startConnection(this);
    }

    public void stop() {
        this.handler.removeCallbacksAndMessages(null);
        this.client.endConnection();
    }
}
