.class public final Lcom/cloud/tmc/miniapp/prestrategy/task/OooO0o;
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
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prestrategy/task/OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final OooO00o()V
    .locals 13

    .line 1
    const-string v0, "Prefetch:ShellH5Task"

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prestrategy/task/OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;

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
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/prestrategy/task/OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;

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
    sget-object v6, Lcom/cloud/tmc/integration/model/AppInfoQuery;->Companion:Lcom/cloud/tmc/integration/model/AppInfoQuery$Companion;

    .line 65
    .line 66
    invoke-virtual {v6, v4}, Lcom/cloud/tmc/integration/model/AppInfoQuery$Companion;->make(Ljava/lang/String;)Lcom/cloud/tmc/integration/model/AppInfoQuery;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    invoke-interface {v5, v3, v6}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;->getAppModel(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppInfoQuery;)Lcom/cloud/tmc/integration/model/AppModel;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    if-nez v5, :cond_2

    .line 75
    .line 76
    return-void

    .line 77
    :cond_2
    invoke-virtual {v5}, Lcom/cloud/tmc/integration/model/AppModel;->getExtend()Lcom/cloud/tmc/integration/model/ExtendModel;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    if-eqz v5, :cond_3

    .line 82
    .line 83
    invoke-virtual {v5}, Lcom/cloud/tmc/integration/model/ExtendModel;->getH5Url()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    if-nez v5, :cond_4

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :catchall_0
    move-exception v1

    .line 91
    goto/16 :goto_1

    .line 92
    .line 93
    :cond_3
    :goto_0
    const-string v5, ""

    .line 94
    .line 95
    :cond_4
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    if-nez v6, :cond_5

    .line 100
    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string v2, " ->h5Url is empty ,return!"

    .line 110
    .line 111
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :cond_5
    iget-object v6, p0, Lcom/cloud/tmc/miniapp/prestrategy/task/OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;

    .line 123
    .line 124
    invoke-virtual {v6}, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->getBundle()Landroid/os/Bundle;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    invoke-static {v5, v6}, Lcom/cloud/tmc/kernel/utils/KUrlUtils;->generateShellUrl(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    invoke-static {v5}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->encryptMD5ToString(Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v6

    .line 136
    const-class v7, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 137
    .line 138
    invoke-static {v7}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v7

    .line 142
    check-cast v7, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 143
    .line 144
    new-instance v8, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string v9, "_time"

    .line 153
    .line 154
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v8

    .line 161
    invoke-interface {v7, v3, v4, v8}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    .line 162
    .line 163
    .line 164
    move-result-wide v7

    .line 165
    const-wide/16 v9, 0x0

    .line 166
    .line 167
    cmp-long v11, v7, v9

    .line 168
    .line 169
    if-lez v11, :cond_6

    .line 170
    .line 171
    iget-object v11, p0, Lcom/cloud/tmc/miniapp/prestrategy/task/OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;

    .line 172
    .line 173
    invoke-virtual {v11}, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->getExecuteTime()J

    .line 174
    .line 175
    .line 176
    move-result-wide v11

    .line 177
    cmp-long v9, v11, v9

    .line 178
    .line 179
    if-eqz v9, :cond_7

    .line 180
    .line 181
    :cond_6
    sub-long/2addr v1, v7

    .line 182
    iget-object v7, p0, Lcom/cloud/tmc/miniapp/prestrategy/task/OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;

    .line 183
    .line 184
    invoke-virtual {v7}, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->getExecuteTime()J

    .line 185
    .line 186
    .line 187
    move-result-wide v7

    .line 188
    const/16 v9, 0x3e8

    .line 189
    .line 190
    int-to-long v9, v9

    .line 191
    mul-long/2addr v7, v9

    .line 192
    cmp-long v1, v1, v7

    .line 193
    .line 194
    if-gez v1, :cond_8

    .line 195
    .line 196
    :cond_7
    const-string v1, "Prefetch:H5Task"

    .line 197
    .line 198
    const-string v2, "No need to make repeated requests during the validity period"

    .line 199
    .line 200
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    return-void

    .line 204
    :cond_8
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    .line 205
    .line 206
    const/4 v2, 0x1

    .line 207
    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 208
    .line 209
    .line 210
    const-class v2, Lcom/cloud/tmc/integration/proxy/PreHtmStrategyProxy;

    .line 211
    .line 212
    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    check-cast v2, Lcom/cloud/tmc/integration/proxy/PreHtmStrategyProxy;

    .line 217
    .line 218
    new-instance v7, Lcom/cloud/tmc/miniapp/prestrategy/task/OooO0o$OooO00o;

    .line 219
    .line 220
    invoke-direct {v7, v1, v3, v4, v6}, Lcom/cloud/tmc/miniapp/prestrategy/task/OooO0o$OooO00o;-><init>(Ljava/util/concurrent/CountDownLatch;Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-interface {v2, v3, v5, v7}, Lcom/cloud/tmc/integration/proxy/PreHtmStrategyProxy;->requestHtml(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 224
    .line 225
    .line 226
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 227
    .line 228
    const-wide/16 v3, 0x3c

    .line 229
    .line 230
    invoke-virtual {v1, v3, v4, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    .line 232
    .line 233
    goto :goto_2

    .line 234
    :goto_1
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 235
    .line 236
    .line 237
    :goto_2
    return-void
.end method
