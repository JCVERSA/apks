.class public final Lio/appmetrica/analytics/billingv6/impl/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/PurchasesResponseListener;


# instance fields
.field public final a:Lio/appmetrica/analytics/billinginterface/internal/library/UtilsProvider;

.field public final b:Lc74;

.field public final c:Ljava/util/List;

.field public final d:Ljava/util/List;

.field public final e:Lio/appmetrica/analytics/billingv6/impl/g;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/billinginterface/internal/library/UtilsProvider;Lc74;Ljava/util/List;Ljava/util/List;Lio/appmetrica/analytics/billingv6/impl/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/billingv6/impl/r;->a:Lio/appmetrica/analytics/billinginterface/internal/library/UtilsProvider;

    iput-object p2, p0, Lio/appmetrica/analytics/billingv6/impl/r;->b:Lc74;

    iput-object p3, p0, Lio/appmetrica/analytics/billingv6/impl/r;->c:Ljava/util/List;

    iput-object p4, p0, Lio/appmetrica/analytics/billingv6/impl/r;->d:Ljava/util/List;

    iput-object p5, p0, Lio/appmetrica/analytics/billingv6/impl/r;->e:Lio/appmetrica/analytics/billingv6/impl/g;

    return-void
.end method


# virtual methods
.method public final onQueryPurchasesResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/billingv6/impl/r;->a:Lio/appmetrica/analytics/billinginterface/internal/library/UtilsProvider;

    invoke-interface {v0}, Lio/appmetrica/analytics/billinginterface/internal/library/UtilsProvider;->getWorkerExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lio/appmetrica/analytics/billingv6/impl/q;

    invoke-direct {v1, p0, p1, p2}, Lio/appmetrica/analytics/billingv6/impl/q;-><init>(Lio/appmetrica/analytics/billingv6/impl/r;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
