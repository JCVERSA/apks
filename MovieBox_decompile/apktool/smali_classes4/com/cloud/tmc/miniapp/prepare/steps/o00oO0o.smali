.class public abstract Lcom/cloud/tmc/miniapp/prepare/steps/o00oO0o;
.super Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;
.source "source.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final OooO00o(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/integration/model/AppModel;)V
    .locals 8

    .line 1
    const-string v0, "startWarmup"

    .line 2
    .line 3
    const-string v1, "nevermore"

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/PrepareContext;->getVirtualStart()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const-string p1, "startWarmup \u865a\u62df\u542f\u52a8 return"

    .line 15
    .line 16
    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/PrepareContext;->isWarmup()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    const-string p1, "startWarmup \u5df2\u7ecf\u9884\u70ed\u8fc7\u4e86 return"

    .line 31
    .line 32
    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    if-nez p2, :cond_2

    .line 37
    .line 38
    const-string p1, "startWarmup appModel\u662f\u7a7a\u7684 return"

    .line 39
    .line 40
    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_2
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/AppModel;->getAppinfoCategoryType()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-nez v2, :cond_3

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    goto :goto_0

    .line 63
    :cond_3
    const-string v2, ""

    .line 64
    .line 65
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string v4, "[{\"appId\":\""

    .line 71
    .line 72
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v2, "\"}]"

    .line 79
    .line 80
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    sget-object v3, Lcom/cloud/tmc/kernel/constants/MiniAppType;->NORMAL:Lcom/cloud/tmc/kernel/constants/MiniAppType;

    .line 88
    .line 89
    invoke-virtual {v3}, Lcom/cloud/tmc/kernel/constants/MiniAppType;->getType()I

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    const-string v4, "keyMiniAppStart"

    .line 94
    .line 95
    const-class v5, Lcom/cloud/tmc/integration/performance/innerwebview/IInnerH5WebviewPool;

    .line 96
    .line 97
    const/4 v6, 0x1

    .line 98
    if-ne v0, v3, :cond_6

    .line 99
    .line 100
    const-string p2, "startWarmup \u5e38\u89c4\u5c0f\u7a0b\u5e8f"

    .line 101
    .line 102
    invoke-static {v1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartParams()Landroid/os/Bundle;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/PrepareContext;->getSceneParams()Landroid/os/Bundle;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    const-string v3, "page"

    .line 114
    .line 115
    invoke-virtual {p2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    const/4 v7, 0x0

    .line 124
    if-nez v3, :cond_4

    .line 125
    .line 126
    const-string v3, "http"

    .line 127
    .line 128
    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    if-eqz v3, :cond_4

    .line 133
    .line 134
    invoke-static {v0, p2}, Lcom/cloud/tmc/integration/utils/AppUtils;->isLegalPath(Landroid/os/Bundle;Ljava/lang/String;)Z

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    if-eqz v0, :cond_4

    .line 139
    .line 140
    move v0, v6

    .line 141
    goto :goto_1

    .line 142
    :cond_4
    move v0, v7

    .line 143
    :goto_1
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/PrepareContext;->isWarmup()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 148
    .line 149
    .line 150
    if-eqz v0, :cond_5

    .line 151
    .line 152
    const-string v0, "startWarmup \u5e38\u89c4\u5c0f\u7a0b\u5e8f \u9996\u9875\u662fH5"

    .line 153
    .line 154
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-static {v5}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    check-cast v0, Lcom/cloud/tmc/integration/performance/innerwebview/IInnerH5WebviewPool;

    .line 162
    .line 163
    invoke-interface {v0}, Lcom/cloud/tmc/integration/performance/innerwebview/IInnerH5WebviewPool;->createWebview()Z

    .line 164
    .line 165
    .line 166
    sget-object v0, Lcom/cloud/tmc/miniapp/prestrategy/PreStrategyManager;->OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/PreStrategyManager;

    .line 167
    .line 168
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    new-instance v3, Lcom/cloud/tmc/miniapp/prepare/steps/o00oO0o$OooO00o;

    .line 173
    .line 174
    invoke-direct {v3, p0, p1, p2}, Lcom/cloud/tmc/miniapp/prepare/steps/o00oO0o$OooO00o;-><init>(Lcom/cloud/tmc/miniapp/prepare/steps/o00oO0o;Lcom/cloud/tmc/integration/model/PrepareContext;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/cloud/tmc/miniapp/prestrategy/PreStrategyManager;->OooO0O0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 178
    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_5
    const-string p1, "startWarmup \u5e38\u89c4\u5c0f\u7a0b\u5e8f \u9996\u9875\u662fNormal \u9884\u70edrender&worker"

    .line 182
    .line 183
    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    const-class p1, Lcom/cloud/tmc/integration/performance/innerrender/IInnerRenderPool;

    .line 187
    .line 188
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    check-cast p1, Lcom/cloud/tmc/integration/performance/innerrender/IInnerRenderPool;

    .line 193
    .line 194
    invoke-interface {p1, v7}, Lcom/cloud/tmc/integration/performance/innerrender/IInnerRenderPool;->createRender(Z)Z

    .line 195
    .line 196
    .line 197
    const-class p1, Lcom/cloud/tmc/integration/performance/innerworker/IInnerWorkerPool;

    .line 198
    .line 199
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    check-cast p1, Lcom/cloud/tmc/integration/performance/innerworker/IInnerWorkerPool;

    .line 204
    .line 205
    invoke-interface {p1, v7}, Lcom/cloud/tmc/integration/performance/innerworker/IInnerWorkerPool;->createWorker(Z)Z

    .line 206
    .line 207
    .line 208
    goto :goto_2

    .line 209
    :cond_6
    sget-object v3, Lcom/cloud/tmc/kernel/constants/MiniAppType;->SHELL:Lcom/cloud/tmc/kernel/constants/MiniAppType;

    .line 210
    .line 211
    invoke-virtual {v3}, Lcom/cloud/tmc/kernel/constants/MiniAppType;->getType()I

    .line 212
    .line 213
    .line 214
    move-result v3

    .line 215
    if-eq v0, v3, :cond_7

    .line 216
    .line 217
    sget-object v3, Lcom/cloud/tmc/kernel/constants/MiniAppType;->SHELL_GAME:Lcom/cloud/tmc/kernel/constants/MiniAppType;

    .line 218
    .line 219
    invoke-virtual {v3}, Lcom/cloud/tmc/kernel/constants/MiniAppType;->getType()I

    .line 220
    .line 221
    .line 222
    move-result v3

    .line 223
    if-ne v0, v3, :cond_8

    .line 224
    .line 225
    :cond_7
    const-string v0, "startWarmup \u72ec\u7acb\u7ad9"

    .line 226
    .line 227
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/PrepareContext;->isWarmup()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 235
    .line 236
    .line 237
    invoke-static {v5}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    check-cast v0, Lcom/cloud/tmc/integration/performance/innerwebview/IInnerH5WebviewPool;

    .line 242
    .line 243
    invoke-interface {v0}, Lcom/cloud/tmc/integration/performance/innerwebview/IInnerH5WebviewPool;->createWebview()Z

    .line 244
    .line 245
    .line 246
    sget-object v0, Lcom/cloud/tmc/miniapp/prestrategy/PreStrategyManager;->OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/PreStrategyManager;

    .line 247
    .line 248
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    new-instance v3, Lcom/cloud/tmc/miniapp/prepare/steps/o00oO0o$OooO0O0;

    .line 253
    .line 254
    invoke-direct {v3, p0, p1, p2}, Lcom/cloud/tmc/miniapp/prepare/steps/o00oO0o$OooO0O0;-><init>(Lcom/cloud/tmc/miniapp/prepare/steps/o00oO0o;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/integration/model/AppModel;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/cloud/tmc/miniapp/prestrategy/PreStrategyManager;->OooO0O0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 258
    .line 259
    .line 260
    :cond_8
    :goto_2
    return-void
.end method

.method public OooO0O0(Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0O0(Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)V

    .line 2
    .line 3
    .line 4
    const-string p1, "WarmupAndOffScreenStep"

    .line 5
    .line 6
    const-string p3, "nevermore"

    .line 7
    .line 8
    invoke-static {p3, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppInfoQuery()Lcom/cloud/tmc/integration/model/AppInfoQuery;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    .line 18
    .line 19
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppInfoQuery()Lcom/cloud/tmc/integration/model/AppInfoQuery;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-interface {p1, v0, v1}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;->getAppModel(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppInfoQuery;)Lcom/cloud/tmc/integration/model/AppModel;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p0, p2, p1}, Lcom/cloud/tmc/miniapp/prepare/steps/o00oO0o;->OooO00o(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/integration/model/AppModel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    new-instance p2, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v0, "WarmupAndOffScreenStep:"

    .line 42
    .line 43
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {p3, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :cond_0
    :goto_0
    return-void
.end method
