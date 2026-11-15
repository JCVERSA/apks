.class public final Lio/appmetrica/analytics/billingv6/impl/j;
.super Lio/appmetrica/analytics/coreutils/internal/executors/SafeRunnable;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/billingv6/impl/k;

.field public final synthetic b:Lio/appmetrica/analytics/billingv6/impl/r;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/billingv6/impl/k;Lio/appmetrica/analytics/billingv6/impl/r;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/billingv6/impl/j;->a:Lio/appmetrica/analytics/billingv6/impl/k;

    iput-object p2, p0, Lio/appmetrica/analytics/billingv6/impl/j;->b:Lio/appmetrica/analytics/billingv6/impl/r;

    invoke-direct {p0}, Lio/appmetrica/analytics/coreutils/internal/executors/SafeRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public final runSafety()V
    .locals 3

    iget-object v0, p0, Lio/appmetrica/analytics/billingv6/impl/j;->a:Lio/appmetrica/analytics/billingv6/impl/k;

    iget-object v0, v0, Lio/appmetrica/analytics/billingv6/impl/k;->b:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/appmetrica/analytics/billingv6/impl/j;->a:Lio/appmetrica/analytics/billingv6/impl/k;

    iget-object v0, v0, Lio/appmetrica/analytics/billingv6/impl/k;->b:Lcom/android/billingclient/api/BillingClient;

    invoke-static {}, Lcom/android/billingclient/api/QueryPurchasesParams;->newBuilder()Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v1

    iget-object v2, p0, Lio/appmetrica/analytics/billingv6/impl/j;->a:Lio/appmetrica/analytics/billingv6/impl/k;

    iget-object v2, v2, Lio/appmetrica/analytics/billingv6/impl/k;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->build()Lcom/android/billingclient/api/QueryPurchasesParams;

    move-result-object v1

    iget-object p0, p0, Lio/appmetrica/analytics/billingv6/impl/j;->b:Lio/appmetrica/analytics/billingv6/impl/r;

    invoke-virtual {v0, v1, p0}, Lcom/android/billingclient/api/BillingClient;->queryPurchasesAsync(Lcom/android/billingclient/api/QueryPurchasesParams;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/billingv6/impl/j;->a:Lio/appmetrica/analytics/billingv6/impl/k;

    iget-object v0, v0, Lio/appmetrica/analytics/billingv6/impl/k;->c:Lio/appmetrica/analytics/billinginterface/internal/library/UtilsProvider;

    invoke-interface {v0}, Lio/appmetrica/analytics/billinginterface/internal/library/UtilsProvider;->getWorkerExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lio/appmetrica/analytics/billingv6/impl/i;

    iget-object v2, p0, Lio/appmetrica/analytics/billingv6/impl/j;->a:Lio/appmetrica/analytics/billingv6/impl/k;

    iget-object p0, p0, Lio/appmetrica/analytics/billingv6/impl/j;->b:Lio/appmetrica/analytics/billingv6/impl/r;

    invoke-direct {v1, v2, p0}, Lio/appmetrica/analytics/billingv6/impl/i;-><init>(Lio/appmetrica/analytics/billingv6/impl/k;Lio/appmetrica/analytics/billingv6/impl/r;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
