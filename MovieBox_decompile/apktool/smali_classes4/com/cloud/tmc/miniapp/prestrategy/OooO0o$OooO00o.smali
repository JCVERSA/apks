.class public final Lcom/cloud/tmc/miniapp/prestrategy/OooO0o$OooO00o;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/miniutils/util/NetworkUtils$OnNetworkStatusChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/prestrategy/OooO0o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final OooO00o()V
    .locals 8

    .line 1
    const-string v0, "Prefetch:StrategyExecuteManager"

    .line 2
    .line 3
    const-string v1, "Prefetch:PrefetchConfigManager"

    .line 4
    .line 5
    sget-object v2, Lcom/cloud/tmc/miniapp/prestrategy/OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/OooO0OO;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    :try_start_0
    sget-object v3, Lcom/cloud/tmc/miniapp/ByteAppManager;->INSTANCE:Lcom/cloud/tmc/miniapp/ByteAppManager;

    .line 9
    .line 10
    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/ByteAppManager;->getApplication$com_cloud_tmc_miniapp_sdk()Landroid/app/Application;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    if-nez v3, :cond_0

    .line 15
    .line 16
    goto :goto_2

    .line 17
    :cond_0
    sget-object v3, Lcom/cloud/tmc/miniapp/prestrategy/OooO0OO;->OooO0O0:Landroid/util/LruCache;

    .line 18
    .line 19
    invoke-virtual {v3}, Landroid/util/LruCache;->size()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-gtz v4, :cond_1

    .line 24
    .line 25
    const-string v3, "no recover request, request queue is empty."

    .line 26
    .line 27
    invoke-static {v1, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    goto :goto_2

    .line 31
    :catchall_0
    move-exception v3

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    invoke-virtual {v3}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    move-object v4, v2

    .line 46
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-eqz v5, :cond_3

    .line 51
    .line 52
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    check-cast v5, Ljava/lang/String;

    .line 57
    .line 58
    sget-object v6, Lcom/cloud/tmc/miniapp/prestrategy/OooO0OO;->OooO0O0:Landroid/util/LruCache;

    .line 59
    .line 60
    invoke-virtual {v6, v5}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    check-cast v7, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchData;

    .line 65
    .line 66
    if-nez v7, :cond_2

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    invoke-virtual {v6, v5}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-object v4, v7

    .line 73
    goto :goto_0

    .line 74
    :cond_3
    if-eqz v4, :cond_4

    .line 75
    .line 76
    const-string v3, "start recover config request."

    .line 77
    .line 78
    invoke-static {v1, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    sget-object v3, Lcom/cloud/tmc/miniapp/prestrategy/OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/OooO0OO;

    .line 82
    .line 83
    invoke-virtual {v3, v4}, Lcom/cloud/tmc/miniapp/prestrategy/OooO0OO;->OooO00o(Lcom/cloud/tmc/miniapp/prestrategy/PrefetchData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :goto_1
    invoke-static {v1, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    .line 89
    .line 90
    :cond_4
    :goto_2
    sget-object v1, Lcom/cloud/tmc/miniapp/prestrategy/OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/OooO0o;

    .line 91
    .line 92
    :try_start_1
    sget-object v3, Lcom/cloud/tmc/miniapp/prestrategy/OooO0o;->OooO0o0:Landroid/util/LruCache;

    .line 93
    .line 94
    invoke-virtual {v3}, Landroid/util/LruCache;->size()I

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    if-gtz v4, :cond_5

    .line 99
    .line 100
    const-string v1, "strategyWaitCache is empty."

    .line 101
    .line 102
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    goto :goto_4

    .line 106
    :catchall_1
    move-exception v1

    .line 107
    goto :goto_3

    .line 108
    :cond_5
    invoke-virtual {v3}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    invoke-virtual {v3}, Landroid/util/LruCache;->evictAll()V

    .line 117
    .line 118
    .line 119
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->R0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    invoke-virtual {v1, v3, v2}, Lcom/cloud/tmc/miniapp/prestrategy/OooO0o;->OooO00o(Ljava/util/List;Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 124
    .line 125
    .line 126
    goto :goto_4

    .line 127
    :goto_3
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 128
    .line 129
    .line 130
    :goto_4
    return-void
.end method


# virtual methods
.method public onConnected(Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkType;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/cloud/tmc/miniapp/prestrategy/OooO0o;->OooO0O0:Z

    .line 3
    .line 4
    sget-object v1, Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkType;->NETWORK_WIFI:Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkType;

    .line 5
    .line 6
    if-ne p1, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    :cond_0
    sput v0, Lcom/cloud/tmc/miniapp/prestrategy/OooO0o;->OooO0OO:I

    .line 10
    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v1, "network connected. netType="

    .line 17
    .line 18
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string v0, "Prefetch:StrategyExecuteManager"

    .line 29
    .line 30
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    sget-object p1, Lcom/cloud/tmc/kernel/executor/ExecutorType;->IDLE:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    .line 34
    .line 35
    new-instance v0, Lcom/cloud/tmc/miniapp/prestrategy/d;

    .line 36
    .line 37
    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/prestrategy/d;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->execute(Lcom/cloud/tmc/kernel/executor/ExecutorType;Ljava/lang/Runnable;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public onDisconnected()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    sput v0, Lcom/cloud/tmc/miniapp/prestrategy/OooO0o;->OooO0OO:I

    .line 3
    .line 4
    sput-boolean v0, Lcom/cloud/tmc/miniapp/prestrategy/OooO0o;->OooO0O0:Z

    .line 5
    .line 6
    const-string v0, "Prefetch:StrategyExecuteManager"

    .line 7
    .line 8
    const-string v1, "network disconnected."

    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
