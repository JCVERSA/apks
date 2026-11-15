.class public final Lcom/cloud/tmc/miniapp/prestrategy/OooO0o;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/prestrategy/OooO0o$OooO0O0;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/OooO0o;

.field public static OooO0O0:Z

.field public static OooO0OO:I

.field public static final OooO0Oo:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static OooO0o:Ljava/util/concurrent/ThreadPoolExecutor;

.field public static final OooO0o0:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniapp/prestrategy/OooO0o;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/prestrategy/OooO0o;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/tmc/miniapp/prestrategy/OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/OooO0o;

    .line 7
    .line 8
    new-instance v0, Landroid/util/LruCache;

    .line 9
    .line 10
    const/16 v1, 0x14

    .line 11
    .line 12
    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/cloud/tmc/miniapp/prestrategy/OooO0o;->OooO0Oo:Landroid/util/LruCache;

    .line 16
    .line 17
    new-instance v0, Landroid/util/LruCache;

    .line 18
    .line 19
    const/16 v1, 0x32

    .line 20
    .line 21
    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lcom/cloud/tmc/miniapp/prestrategy/OooO0o;->OooO0o0:Landroid/util/LruCache;

    .line 25
    .line 26
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/NetworkUtils;->isConnected()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    sput-boolean v0, Lcom/cloud/tmc/miniapp/prestrategy/OooO0o;->OooO0O0:Z

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/NetworkUtils;->isMobileData()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    const/4 v0, 0x1

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 v0, 0x2

    .line 43
    :goto_0
    sput v0, Lcom/cloud/tmc/miniapp/prestrategy/OooO0o;->OooO0OO:I

    .line 44
    .line 45
    :cond_1
    sget-object v0, Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    .line 46
    .line 47
    new-instance v2, Lcom/cloud/tmc/miniapp/prestrategy/b;

    .line 48
    .line 49
    invoke-direct {v2}, Lcom/cloud/tmc/miniapp/prestrategy/b;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->execute(Lcom/cloud/tmc/kernel/executor/ExecutorType;Ljava/lang/Runnable;)V

    .line 53
    .line 54
    .line 55
    new-instance v9, Ljava/util/concurrent/PriorityBlockingQueue;

    .line 56
    .line 57
    new-instance v0, Lcom/cloud/tmc/miniapp/prestrategy/c;

    .line 58
    .line 59
    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/prestrategy/c;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-direct {v9, v1, v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(ILjava/util/Comparator;)V

    .line 63
    .line 64
    .line 65
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 66
    .line 67
    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 68
    .line 69
    new-instance v10, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    .line 70
    .line 71
    invoke-direct {v10}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    .line 72
    .line 73
    .line 74
    const/4 v5, 0x2

    .line 75
    const-wide/16 v6, 0x3c

    .line 76
    .line 77
    const/4 v4, 0x1

    .line 78
    move-object v3, v0

    .line 79
    invoke-direct/range {v3 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 80
    .line 81
    .line 82
    sput-object v0, Lcom/cloud/tmc/miniapp/prestrategy/OooO0o;->OooO0o:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 83
    .line 84
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final OooO00o(Ljava/lang/Runnable;Ljava/lang/Runnable;)I
    .locals 3

    const/4 v0, 0x0

    .line 11
    :try_start_0
    instance-of v1, p0, Lcom/cloud/tmc/miniapp/prestrategy/OooO0o$OooO0O0;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast p0, Lcom/cloud/tmc/miniapp/prestrategy/OooO0o$OooO0O0;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    move-object p0, v2

    :goto_0
    if-eqz p0, :cond_1

    .line 12
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/prestrategy/OooO0o$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;

    if-eqz p0, :cond_1

    .line 13
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->getPriority()I

    move-result p0

    goto :goto_1

    :cond_1
    move p0, v0

    .line 14
    :goto_1
    instance-of v1, p1, Lcom/cloud/tmc/miniapp/prestrategy/OooO0o$OooO0O0;

    if-eqz v1, :cond_2

    move-object v2, p1

    check-cast v2, Lcom/cloud/tmc/miniapp/prestrategy/OooO0o$OooO0O0;

    :cond_2
    if-eqz v2, :cond_3

    .line 15
    iget-object p1, v2, Lcom/cloud/tmc/miniapp/prestrategy/OooO0o$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;

    if-eqz p1, :cond_3

    .line 16
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->getPriority()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    sub-int v0, p0, v0

    goto :goto_3

    .line 17
    :goto_2
    const-string p1, "Prefetch:StrategyExecuteManager"

    invoke-static {p1, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return v0
.end method

.method public static final OooO00o()V
    .locals 6

    .line 1
    const-string v0, "Prefetch:StrategyExecuteManager"

    new-instance v1, Lcom/cloud/tmc/miniapp/prestrategy/OooO0o$OooO00o;

    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/prestrategy/OooO0o$OooO00o;-><init>()V

    invoke-static {v1}, Lcom/cloud/tmc/miniutils/util/NetworkUtils;->registerNetworkStatusChangedListener(Lcom/cloud/tmc/miniutils/util/NetworkUtils$OnNetworkStatusChangedListener;)V

    .line 2
    :try_start_0
    sget-object v1, Lcom/cloud/tmc/miniapp/ByteAppManager;->INSTANCE:Lcom/cloud/tmc/miniapp/ByteAppManager;

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/ByteAppManager;->getApplication$com_cloud_tmc_miniapp_sdk()Landroid/app/Application;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_3

    .line 3
    :cond_0
    new-instance v2, Lcom/cloud/tmc/miniapp/prestrategy/StrategyExecuteManager$recoverSource$setType$1;

    invoke-direct {v2}, Lcom/cloud/tmc/miniapp/prestrategy/StrategyExecuteManager$recoverSource$setType$1;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    const-class v3, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 4
    invoke-static {v3}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    const-string v4, "mini_PrefetchData"

    const-string v5, "keyPrefetchSource"

    invoke-interface {v3, v1, v4, v5}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    invoke-static {v1, v2}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-nez v1, :cond_2

    goto :goto_3

    .line 7
    :cond_2
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;

    .line 8
    sget-object v3, Lcom/cloud/tmc/miniapp/prestrategy/OooO0o;->OooO0Oo:Landroid/util/LruCache;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    .line 9
    :cond_3
    :goto_1
    const-string v1, "no source strategy cache."

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 10
    :goto_2
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    return-void
.end method


# virtual methods
.method public final OooO00o(Ljava/util/List;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Prefetch:StrategyExecuteManager"

    if-eqz p1, :cond_7

    .line 18
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 19
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;

    .line 20
    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->getAppId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_2

    .line 21
    :cond_1
    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->getDataType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "3"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 22
    const-string v2, "skip: strategy is source."

    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    sget-object v2, Lcom/cloud/tmc/miniapp/prestrategy/OooO0o;->OooO0Oo:Landroid/util/LruCache;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    .line 24
    :cond_2
    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->getBundle()Landroid/os/Bundle;

    move-result-object v4

    if-nez v4, :cond_4

    if-eqz p2, :cond_3

    .line 25
    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3, v4}, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->setBundle(Landroid/os/Bundle;)V

    .line 26
    :cond_4
    sget-object v4, Lcom/cloud/tmc/miniapp/prestrategy/OooO0o;->OooO0o:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v5, Lcom/cloud/tmc/miniapp/prestrategy/OooO0o$OooO0O0;

    invoke-direct {v5, v3}, Lcom/cloud/tmc/miniapp/prestrategy/OooO0o$OooO0O0;-><init>(Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;)V

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 27
    :cond_5
    :goto_2
    const-string v3, "skip: appId is empty."

    invoke-static {v0, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    if-eqz v2, :cond_8

    .line 28
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/prestrategy/OooO0o;->OooO0O0()V

    goto :goto_5

    .line 29
    :cond_7
    :goto_3
    const-string p1, "executePreStrategy failed: strategyList is empty."

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 30
    :goto_4
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    :goto_5
    return-void
.end method

.method public final OooO0O0()V
    .locals 6

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/ByteAppManager;->INSTANCE:Lcom/cloud/tmc/miniapp/ByteAppManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ByteAppManager;->getApplication$com_cloud_tmc_miniapp_sdk()Landroid/app/Application;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/cloud/tmc/miniapp/prestrategy/OooO0o;->OooO0Oo:Landroid/util/LruCache;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/util/LruCache;->size()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-lez v2, :cond_1

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :try_start_0
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    :try_start_1
    invoke-virtual {v1}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const-class v3, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 28
    .line 29
    invoke-static {v3}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 34
    .line 35
    const-string v4, "mini_PrefetchData"

    .line 36
    .line 37
    const-string v5, "keyPrefetchSource"

    .line 38
    .line 39
    invoke-static {v2}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-interface {v3, v0, v4, v5, v2}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 47
    .line 48
    :try_start_2
    monitor-exit v1

    .line 49
    goto :goto_1

    .line 50
    :catchall_0
    move-exception v0

    .line 51
    goto :goto_0

    .line 52
    :catchall_1
    move-exception v0

    .line 53
    monitor-exit v1

    .line 54
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55
    :goto_0
    const-string v1, "Prefetch:StrategyExecuteManager"

    .line 56
    .line 57
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    :goto_1
    return-void
.end method
