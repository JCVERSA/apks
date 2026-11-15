.class public final Lio/appmetrica/analytics/billingv6/impl/a;
.super Lio/appmetrica/analytics/coreutils/internal/executors/SafeRunnable;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/billingv6/impl/d;

.field public final synthetic b:Lcom/android/billingclient/api/BillingResult;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/billingv6/impl/d;Lcom/android/billingclient/api/BillingResult;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/billingv6/impl/a;->a:Lio/appmetrica/analytics/billingv6/impl/d;

    iput-object p2, p0, Lio/appmetrica/analytics/billingv6/impl/a;->b:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {p0}, Lio/appmetrica/analytics/coreutils/internal/executors/SafeRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public final runSafety()V
    .locals 10

    iget-object v0, p0, Lio/appmetrica/analytics/billingv6/impl/a;->a:Lio/appmetrica/analytics/billingv6/impl/d;

    iget-object p0, p0, Lio/appmetrica/analytics/billingv6/impl/a;->b:Lcom/android/billingclient/api/BillingResult;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    const-string p0, "inapp"

    const-string v1, "subs"

    filled-new-array {p0, v1}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ly71;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v8, Lio/appmetrica/analytics/billingv6/impl/p;

    iget-object v3, v0, Lio/appmetrica/analytics/billingv6/impl/d;->a:Lio/appmetrica/analytics/billinginterface/internal/config/BillingConfig;

    iget-object v4, v0, Lio/appmetrica/analytics/billingv6/impl/d;->b:Lcom/android/billingclient/api/BillingClient;

    iget-object v5, v0, Lio/appmetrica/analytics/billingv6/impl/d;->c:Lio/appmetrica/analytics/billinginterface/internal/library/UtilsProvider;

    iget-object v9, v0, Lio/appmetrica/analytics/billingv6/impl/d;->d:Lio/appmetrica/analytics/billingv6/impl/g;

    move-object v2, v8

    move-object v6, v1

    move-object v7, v9

    invoke-direct/range {v2 .. v7}, Lio/appmetrica/analytics/billingv6/impl/p;-><init>(Lio/appmetrica/analytics/billinginterface/internal/config/BillingConfig;Lcom/android/billingclient/api/BillingClient;Lio/appmetrica/analytics/billinginterface/internal/library/UtilsProvider;Ljava/lang/String;Lio/appmetrica/analytics/billingv6/impl/g;)V

    iget-object v2, v9, Lio/appmetrica/analytics/billingv6/impl/g;->c:Ljava/util/LinkedHashSet;

    invoke-interface {v2, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lio/appmetrica/analytics/billingv6/impl/d;->c:Lio/appmetrica/analytics/billinginterface/internal/library/UtilsProvider;

    invoke-interface {v2}, Lio/appmetrica/analytics/billinginterface/internal/library/UtilsProvider;->getUiExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lio/appmetrica/analytics/billingv6/impl/c;

    invoke-direct {v3, v0, v1, v8}, Lio/appmetrica/analytics/billingv6/impl/c;-><init>(Lio/appmetrica/analytics/billingv6/impl/d;Ljava/lang/String;Lio/appmetrica/analytics/billingv6/impl/p;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
