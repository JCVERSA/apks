.class public final Lio/appmetrica/analytics/billingv6/impl/h;
.super Lio/appmetrica/analytics/coreutils/internal/executors/SafeRunnable;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/billingv6/impl/k;

.field public final synthetic b:Lcom/android/billingclient/api/BillingResult;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/billingv6/impl/k;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/billingv6/impl/h;->a:Lio/appmetrica/analytics/billingv6/impl/k;

    iput-object p2, p0, Lio/appmetrica/analytics/billingv6/impl/h;->b:Lcom/android/billingclient/api/BillingResult;

    iput-object p3, p0, Lio/appmetrica/analytics/billingv6/impl/h;->c:Ljava/util/List;

    invoke-direct {p0}, Lio/appmetrica/analytics/coreutils/internal/executors/SafeRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public final runSafety()V
    .locals 9

    iget-object v0, p0, Lio/appmetrica/analytics/billingv6/impl/h;->a:Lio/appmetrica/analytics/billingv6/impl/k;

    iget-object v1, p0, Lio/appmetrica/analytics/billingv6/impl/h;->b:Lcom/android/billingclient/api/BillingResult;

    iget-object v6, p0, Lio/appmetrica/analytics/billingv6/impl/h;->c:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lio/appmetrica/analytics/billingv6/impl/r;

    iget-object v3, v0, Lio/appmetrica/analytics/billingv6/impl/k;->c:Lio/appmetrica/analytics/billinginterface/internal/library/UtilsProvider;

    iget-object v4, v0, Lio/appmetrica/analytics/billingv6/impl/k;->d:Lc74;

    iget-object v5, v0, Lio/appmetrica/analytics/billingv6/impl/k;->e:Ljava/util/List;

    iget-object v8, v0, Lio/appmetrica/analytics/billingv6/impl/k;->f:Lio/appmetrica/analytics/billingv6/impl/g;

    move-object v2, v1

    move-object v7, v8

    invoke-direct/range {v2 .. v7}, Lio/appmetrica/analytics/billingv6/impl/r;-><init>(Lio/appmetrica/analytics/billinginterface/internal/library/UtilsProvider;Lc74;Ljava/util/List;Ljava/util/List;Lio/appmetrica/analytics/billingv6/impl/g;)V

    iget-object v2, v8, Lio/appmetrica/analytics/billingv6/impl/g;->c:Ljava/util/LinkedHashSet;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lio/appmetrica/analytics/billingv6/impl/k;->c:Lio/appmetrica/analytics/billinginterface/internal/library/UtilsProvider;

    invoke-interface {v2}, Lio/appmetrica/analytics/billinginterface/internal/library/UtilsProvider;->getUiExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lio/appmetrica/analytics/billingv6/impl/j;

    invoke-direct {v3, v0, v1}, Lio/appmetrica/analytics/billingv6/impl/j;-><init>(Lio/appmetrica/analytics/billingv6/impl/k;Lio/appmetrica/analytics/billingv6/impl/r;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    iget-object p0, p0, Lio/appmetrica/analytics/billingv6/impl/h;->a:Lio/appmetrica/analytics/billingv6/impl/k;

    iget-object v0, p0, Lio/appmetrica/analytics/billingv6/impl/k;->f:Lio/appmetrica/analytics/billingv6/impl/g;

    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/billingv6/impl/g;->a(Ljava/lang/Object;)V

    return-void
.end method
