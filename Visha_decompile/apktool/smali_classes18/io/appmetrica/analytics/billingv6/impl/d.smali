.class public final Lio/appmetrica/analytics/billingv6/impl/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/BillingClientStateListener;


# instance fields
.field public final a:Lio/appmetrica/analytics/billinginterface/internal/config/BillingConfig;

.field public final b:Lcom/android/billingclient/api/BillingClient;

.field public final c:Lio/appmetrica/analytics/billinginterface/internal/library/UtilsProvider;

.field public final d:Lio/appmetrica/analytics/billingv6/impl/g;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/billinginterface/internal/config/BillingConfig;Lcom/android/billingclient/api/BillingClient;Lio/appmetrica/analytics/billingv6/internal/BillingLibraryMonitor$updateBilling$1$runSafety$1;Lio/appmetrica/analytics/billingv6/impl/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/billingv6/impl/d;->a:Lio/appmetrica/analytics/billinginterface/internal/config/BillingConfig;

    iput-object p2, p0, Lio/appmetrica/analytics/billingv6/impl/d;->b:Lcom/android/billingclient/api/BillingClient;

    iput-object p3, p0, Lio/appmetrica/analytics/billingv6/impl/d;->c:Lio/appmetrica/analytics/billinginterface/internal/library/UtilsProvider;

    iput-object p4, p0, Lio/appmetrica/analytics/billingv6/impl/d;->d:Lio/appmetrica/analytics/billingv6/impl/g;

    return-void
.end method


# virtual methods
.method public final onBillingServiceDisconnected()V
    .locals 0

    return-void
.end method

.method public final onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/billingv6/impl/d;->c:Lio/appmetrica/analytics/billinginterface/internal/library/UtilsProvider;

    invoke-interface {v0}, Lio/appmetrica/analytics/billinginterface/internal/library/UtilsProvider;->getWorkerExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lio/appmetrica/analytics/billingv6/impl/a;

    invoke-direct {v1, p0, p1}, Lio/appmetrica/analytics/billingv6/impl/a;-><init>(Lio/appmetrica/analytics/billingv6/impl/d;Lcom/android/billingclient/api/BillingResult;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
