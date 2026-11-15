.class public final Lio/appmetrica/analytics/billingv6/impl/c;
.super Lio/appmetrica/analytics/coreutils/internal/executors/SafeRunnable;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/billingv6/impl/d;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lio/appmetrica/analytics/billingv6/impl/p;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/billingv6/impl/d;Ljava/lang/String;Lio/appmetrica/analytics/billingv6/impl/p;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/billingv6/impl/c;->a:Lio/appmetrica/analytics/billingv6/impl/d;

    iput-object p2, p0, Lio/appmetrica/analytics/billingv6/impl/c;->b:Ljava/lang/String;

    iput-object p3, p0, Lio/appmetrica/analytics/billingv6/impl/c;->c:Lio/appmetrica/analytics/billingv6/impl/p;

    invoke-direct {p0}, Lio/appmetrica/analytics/coreutils/internal/executors/SafeRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public final runSafety()V
    .locals 3

    iget-object v0, p0, Lio/appmetrica/analytics/billingv6/impl/c;->a:Lio/appmetrica/analytics/billingv6/impl/d;

    iget-object v0, v0, Lio/appmetrica/analytics/billingv6/impl/d;->b:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/appmetrica/analytics/billingv6/impl/c;->a:Lio/appmetrica/analytics/billingv6/impl/d;

    iget-object v0, v0, Lio/appmetrica/analytics/billingv6/impl/d;->b:Lcom/android/billingclient/api/BillingClient;

    invoke-static {}, Lcom/android/billingclient/api/QueryPurchaseHistoryParams;->newBuilder()Lcom/android/billingclient/api/QueryPurchaseHistoryParams$Builder;

    move-result-object v1

    iget-object v2, p0, Lio/appmetrica/analytics/billingv6/impl/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/QueryPurchaseHistoryParams$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryPurchaseHistoryParams$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/billingclient/api/QueryPurchaseHistoryParams$Builder;->build()Lcom/android/billingclient/api/QueryPurchaseHistoryParams;

    move-result-object v1

    iget-object p0, p0, Lio/appmetrica/analytics/billingv6/impl/c;->c:Lio/appmetrica/analytics/billingv6/impl/p;

    invoke-virtual {v0, v1, p0}, Lcom/android/billingclient/api/BillingClient;->queryPurchaseHistoryAsync(Lcom/android/billingclient/api/QueryPurchaseHistoryParams;Lcom/android/billingclient/api/PurchaseHistoryResponseListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/billingv6/impl/c;->a:Lio/appmetrica/analytics/billingv6/impl/d;

    iget-object v0, v0, Lio/appmetrica/analytics/billingv6/impl/d;->c:Lio/appmetrica/analytics/billinginterface/internal/library/UtilsProvider;

    invoke-interface {v0}, Lio/appmetrica/analytics/billinginterface/internal/library/UtilsProvider;->getWorkerExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lio/appmetrica/analytics/billingv6/impl/b;

    iget-object v2, p0, Lio/appmetrica/analytics/billingv6/impl/c;->a:Lio/appmetrica/analytics/billingv6/impl/d;

    iget-object p0, p0, Lio/appmetrica/analytics/billingv6/impl/c;->c:Lio/appmetrica/analytics/billingv6/impl/p;

    invoke-direct {v1, v2, p0}, Lio/appmetrica/analytics/billingv6/impl/b;-><init>(Lio/appmetrica/analytics/billingv6/impl/d;Lio/appmetrica/analytics/billingv6/impl/p;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
