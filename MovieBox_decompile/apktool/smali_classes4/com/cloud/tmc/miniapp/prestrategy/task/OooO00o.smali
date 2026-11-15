.class public final Lcom/cloud/tmc/miniapp/prestrategy/task/OooO00o;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field public final OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;)V
    .locals 1

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prestrategy/task/OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final OooO00o()V
    .locals 11

    .line 1
    const-string v0, "Prefetch:AppInfoTask"

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prestrategy/task/OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->getAppId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v3, "request start appId="

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, "."

    .line 23
    .line 24
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 35
    .line 36
    .line 37
    move-result-wide v1

    .line 38
    sget-object v3, Lcom/cloud/tmc/miniapp/ByteAppManager;->INSTANCE:Lcom/cloud/tmc/miniapp/ByteAppManager;

    .line 39
    .line 40
    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/ByteAppManager;->getApplication$com_cloud_tmc_miniapp_sdk()Landroid/app/Application;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    if-nez v3, :cond_0

    .line 45
    .line 46
    return-void

    .line 47
    :cond_0
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/prestrategy/task/OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;

    .line 48
    .line 49
    invoke-virtual {v4}, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->getAppId()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    if-nez v4, :cond_1

    .line 54
    .line 55
    return-void

    .line 56
    :cond_1
    const-class v5, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    .line 57
    .line 58
    invoke-static {v5}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    check-cast v5, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    .line 63
    .line 64
    invoke-interface {v5, v3, v4}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;->getLastUpdateTime(Landroid/content/Context;Ljava/lang/String;)J

    .line 65
    .line 66
    .line 67
    move-result-wide v5

    .line 68
    const-wide/16 v7, 0x0

    .line 69
    .line 70
    cmp-long v9, v5, v7

    .line 71
    .line 72
    if-lez v9, :cond_2

    .line 73
    .line 74
    iget-object v9, p0, Lcom/cloud/tmc/miniapp/prestrategy/task/OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;

    .line 75
    .line 76
    invoke-virtual {v9}, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->getExecuteTime()J

    .line 77
    .line 78
    .line 79
    move-result-wide v9

    .line 80
    cmp-long v7, v9, v7

    .line 81
    .line 82
    if-eqz v7, :cond_3

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :catchall_0
    move-exception v1

    .line 86
    goto :goto_1

    .line 87
    :cond_2
    :goto_0
    sub-long/2addr v1, v5

    .line 88
    iget-object v5, p0, Lcom/cloud/tmc/miniapp/prestrategy/task/OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;

    .line 89
    .line 90
    invoke-virtual {v5}, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->getExecuteTime()J

    .line 91
    .line 92
    .line 93
    move-result-wide v5

    .line 94
    const/16 v7, 0x3e8

    .line 95
    .line 96
    int-to-long v7, v7

    .line 97
    mul-long/2addr v5, v7

    .line 98
    cmp-long v1, v1, v5

    .line 99
    .line 100
    if-gez v1, :cond_4

    .line 101
    .line 102
    :cond_3
    const-string v1, "No need to make repeated requests during the validity period"

    .line 103
    .line 104
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :cond_4
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    .line 109
    .line 110
    const/4 v2, 0x1

    .line 111
    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 112
    .line 113
    .line 114
    new-instance v2, Lcom/cloud/tmc/miniapp/prestrategy/task/OooO00o$OooO00o;

    .line 115
    .line 116
    invoke-direct {v2, v1, v3, v4}, Lcom/cloud/tmc/miniapp/prestrategy/task/OooO00o$OooO00o;-><init>(Ljava/util/concurrent/CountDownLatch;Landroid/app/Application;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    new-instance v3, Lcom/cloud/tmc/miniapp/prestrategy/task/OooO00o$OooO0O0;

    .line 120
    .line 121
    invoke-direct {v3, v1}, Lcom/cloud/tmc/miniapp/prestrategy/task/OooO00o$OooO0O0;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    .line 122
    .line 123
    .line 124
    invoke-static {v4, v2, v3}, Lcom/cloud/tmc/integration/utils/MiniRequestUtils;->updateAppInfoForCdn(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 125
    .line 126
    .line 127
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 128
    .line 129
    const-wide/16 v3, 0x3c

    .line 130
    .line 131
    invoke-virtual {v1, v3, v4, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    .line 133
    .line 134
    goto :goto_2

    .line 135
    :goto_1
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 136
    .line 137
    .line 138
    :goto_2
    return-void
.end method
