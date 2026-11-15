.class public final Lio/appmetrica/analytics/billingv6/impl/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/ProductDetailsResponseListener;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/android/billingclient/api/BillingClient;

.field public final c:Lio/appmetrica/analytics/billinginterface/internal/library/UtilsProvider;

.field public final d:Lc74;

.field public final e:Ljava/util/List;

.field public final f:Lio/appmetrica/analytics/billingv6/impl/g;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/billingclient/api/BillingClient;Lio/appmetrica/analytics/billinginterface/internal/library/UtilsProvider;Lio/appmetrica/analytics/billingv6/impl/m;Ljava/util/List;Lio/appmetrica/analytics/billingv6/impl/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/billingv6/impl/k;->a:Ljava/lang/String;

    iput-object p2, p0, Lio/appmetrica/analytics/billingv6/impl/k;->b:Lcom/android/billingclient/api/BillingClient;

    iput-object p3, p0, Lio/appmetrica/analytics/billingv6/impl/k;->c:Lio/appmetrica/analytics/billinginterface/internal/library/UtilsProvider;

    iput-object p4, p0, Lio/appmetrica/analytics/billingv6/impl/k;->d:Lc74;

    iput-object p5, p0, Lio/appmetrica/analytics/billingv6/impl/k;->e:Ljava/util/List;

    iput-object p6, p0, Lio/appmetrica/analytics/billingv6/impl/k;->f:Lio/appmetrica/analytics/billingv6/impl/g;

    return-void
.end method


# virtual methods
.method public final onProductDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/billingv6/impl/k;->c:Lio/appmetrica/analytics/billinginterface/internal/library/UtilsProvider;

    invoke-interface {v0}, Lio/appmetrica/analytics/billinginterface/internal/library/UtilsProvider;->getWorkerExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lio/appmetrica/analytics/billingv6/impl/h;

    invoke-direct {v1, p0, p1, p2}, Lio/appmetrica/analytics/billingv6/impl/h;-><init>(Lio/appmetrica/analytics/billingv6/impl/k;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
