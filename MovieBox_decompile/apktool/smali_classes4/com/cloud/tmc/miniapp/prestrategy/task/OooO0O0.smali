.class public final Lcom/cloud/tmc/miniapp/prestrategy/task/OooO0O0;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


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
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prestrategy/task/OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final OooO00o()V
    .locals 15

    .line 1
    const-string v0, "Prefetch:H5Task"

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prestrategy/task/OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;

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
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/prestrategy/task/OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;

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
    iget-object v5, p0, Lcom/cloud/tmc/miniapp/prestrategy/task/OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;

    .line 57
    .line 58
    invoke-virtual {v5}, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->getH5Url()Ljava/util/ArrayList;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    if-eqz v5, :cond_5

    .line 63
    .line 64
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    if-eqz v6, :cond_5

    .line 73
    .line 74
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    check-cast v6, Ljava/lang/String;

    .line 79
    .line 80
    new-instance v7, Ljava/util/concurrent/CountDownLatch;

    .line 81
    .line 82
    const/4 v8, 0x1

    .line 83
    invoke-direct {v7, v8}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 84
    .line 85
    .line 86
    invoke-static {v6}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->encryptMD5ToString(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v8

    .line 90
    const-class v9, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 91
    .line 92
    invoke-static {v9}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v9

    .line 96
    check-cast v9, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 97
    .line 98
    new-instance v10, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v11, "_time"

    .line 107
    .line 108
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v10

    .line 115
    invoke-interface {v9, v3, v4, v10}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    .line 116
    .line 117
    .line 118
    move-result-wide v9

    .line 119
    const-wide/16 v11, 0x0

    .line 120
    .line 121
    cmp-long v13, v9, v11

    .line 122
    .line 123
    if-lez v13, :cond_2

    .line 124
    .line 125
    iget-object v13, p0, Lcom/cloud/tmc/miniapp/prestrategy/task/OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;

    .line 126
    .line 127
    invoke-virtual {v13}, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->getExecuteTime()J

    .line 128
    .line 129
    .line 130
    move-result-wide v13

    .line 131
    cmp-long v11, v13, v11

    .line 132
    .line 133
    if-eqz v11, :cond_3

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :catchall_0
    move-exception v1

    .line 137
    goto :goto_2

    .line 138
    :cond_2
    :goto_1
    sub-long v9, v1, v9

    .line 139
    .line 140
    iget-object v11, p0, Lcom/cloud/tmc/miniapp/prestrategy/task/OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;

    .line 141
    .line 142
    invoke-virtual {v11}, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->getExecuteTime()J

    .line 143
    .line 144
    .line 145
    move-result-wide v11

    .line 146
    const/16 v13, 0x3e8

    .line 147
    .line 148
    int-to-long v13, v13

    .line 149
    mul-long/2addr v11, v13

    .line 150
    cmp-long v9, v9, v11

    .line 151
    .line 152
    if-gez v9, :cond_4

    .line 153
    .line 154
    :cond_3
    const-string v1, "No need to make repeated requests during the validity period"

    .line 155
    .line 156
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    return-void

    .line 160
    :cond_4
    const-class v9, Lcom/cloud/tmc/integration/proxy/PreHtmStrategyProxy;

    .line 161
    .line 162
    invoke-static {v9}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v9

    .line 166
    check-cast v9, Lcom/cloud/tmc/integration/proxy/PreHtmStrategyProxy;

    .line 167
    .line 168
    new-instance v10, Lcom/cloud/tmc/miniapp/prestrategy/task/OooO0O0$OooO00o;

    .line 169
    .line 170
    invoke-direct {v10, v7, v3, v4, v8}, Lcom/cloud/tmc/miniapp/prestrategy/task/OooO0O0$OooO00o;-><init>(Ljava/util/concurrent/CountDownLatch;Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-interface {v9, v3, v6, v10}, Lcom/cloud/tmc/integration/proxy/PreHtmStrategyProxy;->requestHtml(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 174
    .line 175
    .line 176
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 177
    .line 178
    const-wide/16 v8, 0x3c

    .line 179
    .line 180
    invoke-virtual {v7, v8, v9, v6}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    .line 182
    .line 183
    goto :goto_0

    .line 184
    :goto_2
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 185
    .line 186
    .line 187
    :cond_5
    return-void
.end method
