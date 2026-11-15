.class public final Lio/appmetrica/analytics/billingv6/impl/l;
.super Lio/appmetrica/analytics/coreutils/internal/executors/SafeRunnable;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/billingv6/impl/p;

.field public final synthetic b:Lcom/android/billingclient/api/BillingResult;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/billingv6/impl/p;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/billingv6/impl/l;->a:Lio/appmetrica/analytics/billingv6/impl/p;

    iput-object p2, p0, Lio/appmetrica/analytics/billingv6/impl/l;->b:Lcom/android/billingclient/api/BillingResult;

    iput-object p3, p0, Lio/appmetrica/analytics/billingv6/impl/l;->c:Ljava/util/List;

    invoke-direct {p0}, Lio/appmetrica/analytics/coreutils/internal/executors/SafeRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public final runSafety()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lio/appmetrica/analytics/billingv6/impl/l;->a:Lio/appmetrica/analytics/billingv6/impl/p;

    iget-object v2, v0, Lio/appmetrica/analytics/billingv6/impl/l;->b:Lcom/android/billingclient/api/BillingResult;

    iget-object v8, v0, Lio/appmetrica/analytics/billingv6/impl/l;->c:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v2

    if-nez v2, :cond_6

    if-nez v8, :cond_0

    goto/16 :goto_3

    :cond_0
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/billingclient/api/PurchaseHistoryRecord;

    invoke-virtual {v4}, Lcom/android/billingclient/api/PurchaseHistoryRecord;->getProducts()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v11, v6

    check-cast v11, Ljava/lang/String;

    new-instance v6, Lio/appmetrica/analytics/billinginterface/internal/BillingInfo;

    iget-object v7, v1, Lio/appmetrica/analytics/billingv6/impl/p;->d:Ljava/lang/String;

    const-string v9, "inapp"

    invoke-static {v7, v9}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    sget-object v7, Lio/appmetrica/analytics/billinginterface/internal/ProductType;->INAPP:Lio/appmetrica/analytics/billinginterface/internal/ProductType;

    :goto_1
    move-object v10, v7

    goto :goto_2

    :cond_2
    const-string v9, "subs"

    invoke-static {v7, v9}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    sget-object v7, Lio/appmetrica/analytics/billinginterface/internal/ProductType;->SUBS:Lio/appmetrica/analytics/billinginterface/internal/ProductType;

    goto :goto_1

    :cond_3
    sget-object v7, Lio/appmetrica/analytics/billinginterface/internal/ProductType;->UNKNOWN:Lio/appmetrica/analytics/billinginterface/internal/ProductType;

    goto :goto_1

    :goto_2
    invoke-virtual {v4}, Lcom/android/billingclient/api/PurchaseHistoryRecord;->getPurchaseToken()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4}, Lcom/android/billingclient/api/PurchaseHistoryRecord;->getPurchaseTime()J

    move-result-wide v13

    const-wide/16 v15, 0x0

    move-object v9, v6

    invoke-direct/range {v9 .. v16}, Lio/appmetrica/analytics/billinginterface/internal/BillingInfo;-><init>(Lio/appmetrica/analytics/billinginterface/internal/ProductType;Ljava/lang/String;Ljava/lang/String;JJ)V

    iget-object v7, v6, Lio/appmetrica/analytics/billinginterface/internal/BillingInfo;->productId:Ljava/lang/String;

    invoke-interface {v2, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    iget-object v3, v1, Lio/appmetrica/analytics/billingv6/impl/p;->c:Lio/appmetrica/analytics/billinginterface/internal/library/UtilsProvider;

    invoke-interface {v3}, Lio/appmetrica/analytics/billinginterface/internal/library/UtilsProvider;->getUpdatePolicy()Lio/appmetrica/analytics/billinginterface/internal/update/UpdatePolicy;

    move-result-object v3

    iget-object v4, v1, Lio/appmetrica/analytics/billingv6/impl/p;->a:Lio/appmetrica/analytics/billinginterface/internal/config/BillingConfig;

    iget-object v5, v1, Lio/appmetrica/analytics/billingv6/impl/p;->c:Lio/appmetrica/analytics/billinginterface/internal/library/UtilsProvider;

    invoke-interface {v5}, Lio/appmetrica/analytics/billinginterface/internal/library/UtilsProvider;->getBillingInfoManager()Lio/appmetrica/analytics/billinginterface/internal/storage/BillingInfoManager;

    move-result-object v5

    invoke-interface {v3, v4, v2, v5}, Lio/appmetrica/analytics/billinginterface/internal/update/UpdatePolicy;->getBillingInfoToUpdate(Lio/appmetrica/analytics/billinginterface/internal/config/BillingConfig;Ljava/util/Map;Lio/appmetrica/analytics/billinginterface/internal/storage/BillingInfoManager;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, v1, Lio/appmetrica/analytics/billingv6/impl/p;->d:Ljava/lang/String;

    iget-object v1, v1, Lio/appmetrica/analytics/billingv6/impl/p;->c:Lio/appmetrica/analytics/billinginterface/internal/library/UtilsProvider;

    invoke-interface {v1}, Lio/appmetrica/analytics/billinginterface/internal/library/UtilsProvider;->getBillingInfoManager()Lio/appmetrica/analytics/billinginterface/internal/storage/BillingInfoManager;

    move-result-object v1

    invoke-static {v2, v3, v4, v1}, Lio/appmetrica/analytics/billingv6/impl/t;->a(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Lio/appmetrica/analytics/billinginterface/internal/storage/BillingInfoManager;)V

    goto :goto_3

    :cond_5
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-static {v4}, Li81;->b1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v10

    new-instance v7, Lio/appmetrica/analytics/billingv6/impl/m;

    invoke-direct {v7, v2, v3, v1}, Lio/appmetrica/analytics/billingv6/impl/m;-><init>(Ljava/util/LinkedHashMap;Ljava/util/Map;Lio/appmetrica/analytics/billingv6/impl/p;)V

    new-instance v2, Lio/appmetrica/analytics/billingv6/impl/k;

    iget-object v4, v1, Lio/appmetrica/analytics/billingv6/impl/p;->d:Ljava/lang/String;

    iget-object v5, v1, Lio/appmetrica/analytics/billingv6/impl/p;->b:Lcom/android/billingclient/api/BillingClient;

    iget-object v6, v1, Lio/appmetrica/analytics/billingv6/impl/p;->c:Lio/appmetrica/analytics/billinginterface/internal/library/UtilsProvider;

    iget-object v11, v1, Lio/appmetrica/analytics/billingv6/impl/p;->e:Lio/appmetrica/analytics/billingv6/impl/g;

    move-object v3, v2

    move-object v9, v11

    invoke-direct/range {v3 .. v9}, Lio/appmetrica/analytics/billingv6/impl/k;-><init>(Ljava/lang/String;Lcom/android/billingclient/api/BillingClient;Lio/appmetrica/analytics/billinginterface/internal/library/UtilsProvider;Lio/appmetrica/analytics/billingv6/impl/m;Ljava/util/List;Lio/appmetrica/analytics/billingv6/impl/g;)V

    iget-object v3, v11, Lio/appmetrica/analytics/billingv6/impl/g;->c:Ljava/util/LinkedHashSet;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v3, v1, Lio/appmetrica/analytics/billingv6/impl/p;->c:Lio/appmetrica/analytics/billinginterface/internal/library/UtilsProvider;

    invoke-interface {v3}, Lio/appmetrica/analytics/billinginterface/internal/library/UtilsProvider;->getUiExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Lio/appmetrica/analytics/billingv6/impl/o;

    invoke-direct {v4, v1, v10, v2}, Lio/appmetrica/analytics/billingv6/impl/o;-><init>(Lio/appmetrica/analytics/billingv6/impl/p;Ljava/util/List;Lio/appmetrica/analytics/billingv6/impl/k;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_6
    :goto_3
    iget-object v0, v0, Lio/appmetrica/analytics/billingv6/impl/l;->a:Lio/appmetrica/analytics/billingv6/impl/p;

    iget-object v1, v0, Lio/appmetrica/analytics/billingv6/impl/p;->e:Lio/appmetrica/analytics/billingv6/impl/g;

    invoke-virtual {v1, v0}, Lio/appmetrica/analytics/billingv6/impl/g;->a(Ljava/lang/Object;)V

    return-void
.end method
