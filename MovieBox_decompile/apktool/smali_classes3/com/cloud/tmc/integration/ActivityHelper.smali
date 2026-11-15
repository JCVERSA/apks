.class public Lcom/cloud/tmc/integration/ActivityHelper;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/integration/ActivityHelper$OnSetHostActivityStatusBackgroundCallback;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TmcApp:ActivityHelper"


# instance fields
.field private appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

.field private appId:Ljava/lang/String;

.field private final mActivity:Landroidx/fragment/app/FragmentActivity;

.field private mAlreadyDoDestroyed:Z

.field private mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

.field private mAppContext:Lcom/cloud/tmc/integration/structure/AppContext;

.field private mStartClientBundle:Lcom/cloud/tmc/integration/activity/StartClientBundle;

.field private mStartToken:J

.field private onSetHostActivityStatusBackgroundCallback:Lcom/cloud/tmc/integration/ActivityHelper$OnSetHostActivityStatusBackgroundCallback;

.field public sceneId:Ljava/lang/String;

.field tempSceneParams:Landroid/os/Bundle;

.field tempStartParams:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Lcom/cloud/tmc/integration/chain/app/AppChainContext;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->tempStartParams:Landroid/os/Bundle;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->tempSceneParams:Landroid/os/Bundle;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mAlreadyDoDestroyed:Z

    .line 11
    .line 12
    iput-object p1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/cloud/tmc/integration/ActivityHelper;->appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    .line 15
    .line 16
    return-void
.end method

.method public static synthetic a(Lcom/cloud/tmc/integration/ActivityHelper;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/ActivityHelper;->lambda$setHostActivityStatusBackground$0(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private checkBackToUrlParam(Lcom/cloud/tmc/integration/structure/App;)V
    .locals 5

    .line 1
    const-string v0, "extraMiniBackToUrl"

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getStartParams()Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getSceneParams()Landroid/os/Bundle;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-nez v4, :cond_0

    .line 22
    .line 23
    new-instance v4, Lcom/cloud/tmc/integration/processor/BackToPageIntercept;

    .line 24
    .line 25
    invoke-direct {v4}, Lcom/cloud/tmc/integration/processor/BackToPageIntercept;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4, v3}, Lcom/cloud/tmc/integration/processor/BackToPageIntercept;->setBackToPagePath(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getBackPressedProcessor()Lcom/cloud/tmc/integration/processor/IBackPressedProcessor;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-interface {p1, v4}, Lcom/cloud/tmc/integration/processor/IBackPressedProcessor;->addInterceptors(Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    if-eqz v2, :cond_0

    .line 42
    .line 43
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    const-string v0, "checkBackToUrlParam"

    .line 49
    .line 50
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    .line 52
    .line 53
    :cond_0
    :goto_0
    return-void
.end method

.method private checkHotStartToOpenSpecifyPage(Landroid/content/Intent;Lcom/cloud/tmc/integration/activity/StartClientBundle;)Z
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "TmcApp:ActivityHelper"

    .line 5
    .line 6
    if-eqz v0, :cond_a

    .line 7
    .line 8
    iget-object v0, p2, Lcom/cloud/tmc/integration/activity/StartClientBundle;->startAction:Lcom/cloud/tmc/integration/activity/StartAction;

    .line 9
    .line 10
    sget-object v3, Lcom/cloud/tmc/integration/activity/StartAction;->SHOW_LOADING:Lcom/cloud/tmc/integration/activity/StartAction;

    .line 11
    .line 12
    if-ne v0, v3, :cond_a

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v3, "miniAppId"

    .line 19
    .line 20
    invoke-static {v0, v3}, Lcom/cloud/tmc/kernel/utils/BundleUtils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v3, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 25
    .line 26
    invoke-virtual {v3}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getAppId()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_9

    .line 35
    .line 36
    new-instance v0, Landroid/os/Bundle;

    .line 37
    .line 38
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 39
    .line 40
    .line 41
    iget-object v3, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 42
    .line 43
    invoke-virtual {v3}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getStartParams()Landroid/os/Bundle;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    iget-object v4, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 48
    .line 49
    invoke-virtual {v4}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getSceneParams()Landroid/os/Bundle;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    if-eqz v3, :cond_a

    .line 54
    .line 55
    if-eqz v4, :cond_a

    .line 56
    .line 57
    sget-object v5, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppPrepareUtils;

    .line 58
    .line 59
    iget-object v6, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 60
    .line 61
    invoke-virtual {v6}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    invoke-virtual {v5, v6}, Lcom/cloud/tmc/integration/utils/BaseAppPrepareUtils;->isShellType(Lcom/cloud/tmc/integration/model/AppModel;)Z

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    if-eqz v5, :cond_0

    .line 70
    .line 71
    invoke-direct {p0}, Lcom/cloud/tmc/integration/ActivityHelper;->miniShellAppHotStart()Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    return p1

    .line 76
    :cond_0
    const-string v5, "page"

    .line 77
    .line 78
    invoke-virtual {v3, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 83
    .line 84
    .line 85
    move-result v6

    .line 86
    const/4 v7, 0x0

    .line 87
    const-string v8, ""

    .line 88
    .line 89
    const-class v9, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 90
    .line 91
    const-string v10, "hot_open_type"

    .line 92
    .line 93
    if-eqz v6, :cond_2

    .line 94
    .line 95
    const-string p2, "normal_1"

    .line 96
    .line 97
    invoke-virtual {v0, v10, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-static {v9}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    check-cast v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 105
    .line 106
    iget-object v4, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 107
    .line 108
    invoke-virtual {v4}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getAppId()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_HOT_RELOAD:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 113
    .line 114
    invoke-interface {v3, v4, v5, v8, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 115
    .line 116
    .line 117
    const-string v0, "page not is empty"

    .line 118
    .line 119
    invoke-static {v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/integration/ActivityHelper;->hotOpen(Landroid/content/Intent;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    iget-object p1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 126
    .line 127
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getActivePage()Lcom/cloud/tmc/integration/structure/Page;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    iget-object p2, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 132
    .line 133
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getActivePage()Lcom/cloud/tmc/integration/structure/Page;

    .line 134
    .line 135
    .line 136
    move-result-object p2

    .line 137
    if-eqz p2, :cond_1

    .line 138
    .line 139
    iget-object p2, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 140
    .line 141
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getActivePage()Lcom/cloud/tmc/integration/structure/Page;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p2

    .line 149
    goto :goto_0

    .line 150
    :cond_1
    move-object p2, v7

    .line 151
    :goto_0
    const-string v0, "hotStart"

    .line 152
    .line 153
    invoke-static {p1, v0, v7, p2}, Lcom/cloud/tmc/integration/utils/TrackPointUtils;->openPageActionTrack(Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    return v1

    .line 157
    :cond_2
    invoke-static {v3, v4}, Lcom/cloud/tmc/integration/utils/AppUtils;->checkAndRemoveExtraPage(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 158
    .line 159
    .line 160
    invoke-static {v4, v5}, Lcom/cloud/tmc/integration/utils/AppUtils;->isLegalPath(Landroid/os/Bundle;Ljava/lang/String;)Z

    .line 161
    .line 162
    .line 163
    move-result v6

    .line 164
    new-instance v11, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .line 168
    .line 169
    const-string v12, "\u8def\u5f84\u5408\u6cd5\u6027\uff1a"

    .line 170
    .line 171
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    if-eqz v6, :cond_3

    .line 175
    .line 176
    const-string v12, "\u5408\u6cd5"

    .line 177
    .line 178
    goto :goto_1

    .line 179
    :cond_3
    const-string v12, "\u975e\u6cd5"

    .line 180
    .line 181
    :goto_1
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    const-string v12, "\uff0cpage="

    .line 185
    .line 186
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v11

    .line 196
    invoke-static {v2, v11}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    if-eqz v6, :cond_8

    .line 200
    .line 201
    iget-object v6, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 202
    .line 203
    invoke-virtual {v6}, Lcom/cloud/tmc/integration/structure/node/AppNode;->isExited()Z

    .line 204
    .line 205
    .line 206
    move-result v6

    .line 207
    if-nez v6, :cond_8

    .line 208
    .line 209
    iget-object p2, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 210
    .line 211
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getActivePage()Lcom/cloud/tmc/integration/structure/Page;

    .line 212
    .line 213
    .line 214
    move-result-object p2

    .line 215
    const/4 v1, 0x1

    .line 216
    if-eqz p2, :cond_5

    .line 217
    .line 218
    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 223
    .line 224
    .line 225
    move-result v2

    .line 226
    if-eqz v2, :cond_5

    .line 227
    .line 228
    const-string v2, "normal_2"

    .line 229
    .line 230
    invoke-virtual {v0, v10, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-static {v9}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v3

    .line 237
    check-cast v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 238
    .line 239
    iget-object v4, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 240
    .line 241
    invoke-virtual {v4}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getAppId()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v4

    .line 245
    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_HOT_RELOAD:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 246
    .line 247
    invoke-interface {v3, v4, v5, v8, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 248
    .line 249
    .line 250
    invoke-direct {p0, p1, v2}, Lcom/cloud/tmc/integration/ActivityHelper;->hotOpen(Landroid/content/Intent;Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    iget-object p1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 254
    .line 255
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getActivePage()Lcom/cloud/tmc/integration/structure/Page;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    if-eqz p1, :cond_4

    .line 260
    .line 261
    iget-object p1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 262
    .line 263
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getActivePage()Lcom/cloud/tmc/integration/structure/Page;

    .line 264
    .line 265
    .line 266
    move-result-object p1

    .line 267
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    goto :goto_2

    .line 272
    :cond_4
    move-object p1, v7

    .line 273
    :goto_2
    const-string v0, "hotStartSelf"

    .line 274
    .line 275
    invoke-static {p2, v0, v7, p1}, Lcom/cloud/tmc/integration/utils/TrackPointUtils;->openPageActionTrack(Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    return v1

    .line 279
    :cond_5
    iget-object p2, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 280
    .line 281
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    .line 282
    .line 283
    .line 284
    move-result-object p2

    .line 285
    if-eqz p2, :cond_6

    .line 286
    .line 287
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/AppModel;->getAppinfoCategoryType()I

    .line 288
    .line 289
    .line 290
    move-result p2

    .line 291
    sget-object v2, Lcom/cloud/tmc/kernel/constants/MiniAppType;->NORMAL:Lcom/cloud/tmc/kernel/constants/MiniAppType;

    .line 292
    .line 293
    invoke-virtual {v2}, Lcom/cloud/tmc/kernel/constants/MiniAppType;->getType()I

    .line 294
    .line 295
    .line 296
    move-result v2

    .line 297
    if-ne p2, v2, :cond_6

    .line 298
    .line 299
    invoke-static {v5}, Lcom/cloud/tmc/integration/utils/UrlUtil;->isHttpOrHttpsUrl(Ljava/lang/String;)Z

    .line 300
    .line 301
    .line 302
    move-result p2

    .line 303
    if-eqz p2, :cond_6

    .line 304
    .line 305
    iget-object p2, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 306
    .line 307
    const/4 v2, 0x2

    .line 308
    invoke-virtual {p2, v5, v2}, Lcom/cloud/tmc/integration/structure/node/AppNode;->putPageType(Ljava/lang/String;I)V

    .line 309
    .line 310
    .line 311
    :cond_6
    iget-object p2, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 312
    .line 313
    invoke-direct {p0, p2}, Lcom/cloud/tmc/integration/ActivityHelper;->checkBackToUrlParam(Lcom/cloud/tmc/integration/structure/App;)V

    .line 314
    .line 315
    .line 316
    const-string p2, "extraMiniClearAllPages"

    .line 317
    .line 318
    invoke-virtual {v3, p2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 319
    .line 320
    .line 321
    move-result v2

    .line 322
    const-string v6, "navigationType"

    .line 323
    .line 324
    if-eqz v2, :cond_7

    .line 325
    .line 326
    const-string v2, "normal_3"

    .line 327
    .line 328
    invoke-direct {p0, p1, v2}, Lcom/cloud/tmc/integration/ActivityHelper;->hotOpen(Landroid/content/Intent;Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    invoke-direct {p0, v5}, Lcom/cloud/tmc/integration/ActivityHelper;->setHostActivityStatusBackground(Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v3, p2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    const-string p1, "hotReLaunch"

    .line 338
    .line 339
    invoke-virtual {v4, v6, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    iget-object p1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 343
    .line 344
    const-string p2, "reLaunch"

    .line 345
    .line 346
    invoke-virtual {p1, v5, p2}, Lcom/cloud/tmc/integration/structure/node/AppNode;->putRouteType(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    iget-object p1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 350
    .line 351
    invoke-virtual {p1, v5, v3, v4}, Lcom/cloud/tmc/integration/structure/node/AppNode;->relaunchToUrl(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v0, v10, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    invoke-static {v9}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object p1

    .line 361
    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 362
    .line 363
    iget-object p2, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 364
    .line 365
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getAppId()Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object p2

    .line 369
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_HOT_RELOAD:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 370
    .line 371
    invoke-interface {p1, p2, v2, v8, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 372
    .line 373
    .line 374
    return v1

    .line 375
    :cond_7
    invoke-direct {p0, v5}, Lcom/cloud/tmc/integration/ActivityHelper;->setHostActivityStatusBackground(Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    const-string p2, "normal_4"

    .line 379
    .line 380
    invoke-virtual {v0, v10, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    invoke-static {v9}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    move-result-object v2

    .line 387
    check-cast v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 388
    .line 389
    iget-object v7, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 390
    .line 391
    invoke-virtual {v7}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getAppId()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v7

    .line 395
    sget-object v9, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_HOT_RELOAD:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 396
    .line 397
    invoke-interface {v2, v7, v9, v8, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 398
    .line 399
    .line 400
    iget-object v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 401
    .line 402
    const-string v2, "navigateTo"

    .line 403
    .line 404
    invoke-virtual {v0, v5, v2}, Lcom/cloud/tmc/integration/structure/node/AppNode;->putRouteType(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    const-string v0, "hotNavigateTo"

    .line 408
    .line 409
    invoke-virtual {v4, v6, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/integration/ActivityHelper;->hotOpen(Landroid/content/Intent;Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    iget-object p1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 416
    .line 417
    invoke-virtual {p1, v5, v3, v4}, Lcom/cloud/tmc/integration/structure/node/AppNode;->pushPage(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 418
    .line 419
    .line 420
    return v1

    .line 421
    :cond_8
    const-string v0, "\u76ee\u6807\u5c0f\u7a0b\u5e8f\u5df2\u9000\u51fa\uff0c\u65e0\u6cd5\u6ee1\u8db3\u62c9\u8d77\u8981\u6c42\u3002"

    .line 422
    .line 423
    invoke-static {v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    goto :goto_3

    .line 427
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    .line 428
    .line 429
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 430
    .line 431
    .line 432
    const-string v4, "\u5f53\u524d App \u4e0d\u662f\u76ee\u6807\u5c0f\u7a0b\u5e8f\uff0c\u5f53\u524dAppId:"

    .line 433
    .line 434
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    .line 436
    .line 437
    iget-object v4, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 438
    .line 439
    invoke-virtual {v4}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getAppId()Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v4

    .line 443
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    const-string v4, " \u76ee\u6807AppId:"

    .line 447
    .line 448
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    .line 450
    .line 451
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    .line 453
    .line 454
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object v0

    .line 458
    invoke-static {v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    .line 460
    .line 461
    :cond_a
    :goto_3
    iget-object v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 462
    .line 463
    if-nez v0, :cond_b

    .line 464
    .line 465
    iget-object v0, p2, Lcom/cloud/tmc/integration/activity/StartClientBundle;->startAction:Lcom/cloud/tmc/integration/activity/StartAction;

    .line 466
    .line 467
    sget-object v3, Lcom/cloud/tmc/integration/activity/StartAction;->SHOW_LOADING:Lcom/cloud/tmc/integration/activity/StartAction;

    .line 468
    .line 469
    if-ne v0, v3, :cond_b

    .line 470
    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    .line 472
    .line 473
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 474
    .line 475
    .line 476
    const-string v3, "app == null, action:"

    .line 477
    .line 478
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    .line 480
    .line 481
    iget-object p2, p2, Lcom/cloud/tmc/integration/activity/StartClientBundle;->startAction:Lcom/cloud/tmc/integration/activity/StartAction;

    .line 482
    .line 483
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 484
    .line 485
    .line 486
    const-string p2, ", \u6253\u5f00\u5931\u8d25\u7684\u573a\u666f\u4e0b\u53c8\u89e6\u53d1\u70ed\u542f\u52a8"

    .line 487
    .line 488
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    .line 490
    .line 491
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object p2

    .line 495
    invoke-static {v2, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    .line 497
    .line 498
    const-string p2, "0"

    .line 499
    .line 500
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/integration/ActivityHelper;->hotOpen(Landroid/content/Intent;Ljava/lang/String;)V

    .line 501
    .line 502
    .line 503
    :cond_b
    return v1
.end method

.method public static createFastStartClient(Lcom/cloud/tmc/integration/model/PrepareCallbackParam;I)Lcom/cloud/tmc/integration/activity/StartClientBundle;
    .locals 3

    .line 1
    sget-object v0, Lcom/cloud/tmc/integration/activity/StartAction;->SHOW_LOADING:Lcom/cloud/tmc/integration/activity/StartAction;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/cloud/tmc/integration/model/PrepareCallbackParam;->action:Lcom/cloud/tmc/integration/activity/StartAction;

    .line 4
    .line 5
    new-instance v0, Lcom/cloud/tmc/integration/activity/StartClientBundle;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/cloud/tmc/integration/activity/StartClientBundle;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v1, Landroid/os/Bundle;

    .line 11
    .line 12
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v1, v0, Lcom/cloud/tmc/integration/activity/StartClientBundle;->sceneParams:Landroid/os/Bundle;

    .line 16
    .line 17
    new-instance v1, Landroid/os/Bundle;

    .line 18
    .line 19
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v1, v0, Lcom/cloud/tmc/integration/activity/StartClientBundle;->startParams:Landroid/os/Bundle;

    .line 23
    .line 24
    int-to-long v1, p1

    .line 25
    iput-wide v1, v0, Lcom/cloud/tmc/integration/activity/StartClientBundle;->startToken:J

    .line 26
    .line 27
    iget-object p0, p0, Lcom/cloud/tmc/integration/model/PrepareCallbackParam;->action:Lcom/cloud/tmc/integration/activity/StartAction;

    .line 28
    .line 29
    if-eqz p0, :cond_0

    .line 30
    .line 31
    iput-object p0, v0, Lcom/cloud/tmc/integration/activity/StartClientBundle;->startAction:Lcom/cloud/tmc/integration/activity/StartAction;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    sget-object p0, Lcom/cloud/tmc/integration/activity/StartAction;->DIRECT_START:Lcom/cloud/tmc/integration/activity/StartAction;

    .line 35
    .line 36
    iput-object p0, v0, Lcom/cloud/tmc/integration/activity/StartClientBundle;->startAction:Lcom/cloud/tmc/integration/activity/StartAction;

    .line 37
    .line 38
    :goto_0
    return-object v0
.end method

.method private handleStartParams()V
    .locals 4

    .line 1
    const-string v0, "NebulaActivity.onCreate handleStartParams start"

    .line 2
    .line 3
    const-string v1, "TmcApp:ActivityHelper"

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-virtual {v0, v2}, Landroid/app/Activity;->requestWindowFeature(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    const-string v2, "requestWindowFeature error: "

    .line 17
    .line 18
    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mStartClientBundle:Lcom/cloud/tmc/integration/activity/StartClientBundle;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/cloud/tmc/integration/activity/StartClientBundle;->startParams:Landroid/os/Bundle;

    .line 24
    .line 25
    const-string v2, "snapshot"

    .line 26
    .line 27
    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/utils/BundleUtils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v2, "NO"

    .line 32
    .line 33
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v3, "not allowed to task snapshot "

    .line 45
    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    .line 60
    .line 61
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const/16 v2, 0x2000

    .line 66
    .line 67
    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 68
    .line 69
    .line 70
    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mStartClientBundle:Lcom/cloud/tmc/integration/activity/StartClientBundle;

    .line 71
    .line 72
    iget-object v0, v0, Lcom/cloud/tmc/integration/activity/StartClientBundle;->startParams:Landroid/os/Bundle;

    .line 73
    .line 74
    const-string v2, "fullscreen"

    .line 75
    .line 76
    const/4 v3, 0x0

    .line 77
    invoke-static {v0, v2, v3}, Lcom/cloud/tmc/kernel/utils/BundleUtils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_1

    .line 82
    .line 83
    iget-object v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    .line 84
    .line 85
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    const/16 v2, 0x400

    .line 90
    .line 91
    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 92
    .line 93
    .line 94
    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mStartClientBundle:Lcom/cloud/tmc/integration/activity/StartClientBundle;

    .line 95
    .line 96
    iget-object v0, v0, Lcom/cloud/tmc/integration/activity/StartClientBundle;->startParams:Landroid/os/Bundle;

    .line 97
    .line 98
    const-string v2, "landscape"

    .line 99
    .line 100
    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/utils/BundleUtils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    if-eqz v2, :cond_2

    .line 109
    .line 110
    iget-object v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    .line 111
    .line 112
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-eqz v0, :cond_3

    .line 117
    .line 118
    iget-object v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    .line 119
    .line 120
    invoke-virtual {v0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_2
    const-string v2, "auto"

    .line 125
    .line 126
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    if-eqz v0, :cond_3

    .line 131
    .line 132
    iget-object v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    .line 133
    .line 134
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    const/4 v2, -0x1

    .line 139
    if-eq v0, v2, :cond_3

    .line 140
    .line 141
    iget-object v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    .line 142
    .line 143
    invoke-virtual {v0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 144
    .line 145
    .line 146
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mStartClientBundle:Lcom/cloud/tmc/integration/activity/StartClientBundle;

    .line 147
    .line 148
    iget-object v0, v0, Lcom/cloud/tmc/integration/activity/StartClientBundle;->startParams:Landroid/os/Bundle;

    .line 149
    .line 150
    const-string v2, "isRestart"

    .line 151
    .line 152
    invoke-static {v0, v2, v3}, Lcom/cloud/tmc/kernel/utils/BundleUtils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    .line 153
    .line 154
    .line 155
    const-string v0, "onCreate handleStartParams done."

    .line 156
    .line 157
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    return-void
.end method

.method private hotOpen(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "fis_type"

    .line 2
    .line 3
    const-string v1, "100000"

    .line 4
    .line 5
    const-string v2, "scene_id"

    .line 6
    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v4, "hotOpen->hotOpenType:"

    .line 13
    .line 14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const-string v4, "TmcApp:ActivityHelper"

    .line 25
    .line 26
    invoke-static {v4, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    :try_start_0
    const-string v3, "launchModeHot"

    .line 32
    .line 33
    const-string v4, "launchMode"

    .line 34
    .line 35
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_0

    .line 44
    .line 45
    new-instance p1, Landroid/os/Bundle;

    .line 46
    .line 47
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v3, "miniapp_id"

    .line 51
    .line 52
    iget-object v4, p0, Lcom/cloud/tmc/integration/ActivityHelper;->appId:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {p1, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const-string v3, "scene"

    .line 58
    .line 59
    iget-object v4, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mStartClientBundle:Lcom/cloud/tmc/integration/activity/StartClientBundle;

    .line 60
    .line 61
    iget-object v4, v4, Lcom/cloud/tmc/integration/activity/StartClientBundle;->startParams:Landroid/os/Bundle;

    .line 62
    .line 63
    invoke-virtual {v4, v2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-virtual {p1, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-object v3, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mStartClientBundle:Lcom/cloud/tmc/integration/activity/StartClientBundle;

    .line 71
    .line 72
    iget-object v3, v3, Lcom/cloud/tmc/integration/activity/StartClientBundle;->startParams:Landroid/os/Bundle;

    .line 73
    .line 74
    const-string v4, "0"

    .line 75
    .line 76
    invoke-virtual {v3, v0, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_SCENE:Ljava/lang/String;

    .line 84
    .line 85
    iget-object v3, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mStartClientBundle:Lcom/cloud/tmc/integration/activity/StartClientBundle;

    .line 86
    .line 87
    iget-object v3, v3, Lcom/cloud/tmc/integration/activity/StartClientBundle;->startParams:Landroid/os/Bundle;

    .line 88
    .line 89
    invoke-virtual {v3, v2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_OPEN_CHANNEL:Ljava/lang/String;

    .line 97
    .line 98
    const-string v1, "3"

    .line 99
    .line 100
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    const-string v0, "hot_open_type"

    .line 104
    .line 105
    invoke-virtual {p1, v0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    const-class p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 109
    .line 110
    invoke-static {p2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    check-cast p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 115
    .line 116
    iget-object v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->appId:Ljava/lang/String;

    .line 117
    .line 118
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_LAUNCH_MINIAPP_HOT_OPEN:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 119
    .line 120
    const-string v2, ""

    .line 121
    .line 122
    invoke-interface {p2, v0, v1, v2, p1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 123
    .line 124
    .line 125
    iget-object p2, p0, Lcom/cloud/tmc/integration/ActivityHelper;->appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    .line 126
    .line 127
    if-eqz p2, :cond_0

    .line 128
    .line 129
    invoke-virtual {p2, p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->hotOpen(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    .line 131
    .line 132
    :catchall_0
    :cond_0
    return-void
.end method

.method private hotOpenShell(Ljava/lang/String;)V
    .locals 6

    .line 1
    const-string v0, "fis_type"

    .line 2
    .line 3
    const-string v1, "100000"

    .line 4
    .line 5
    const-string v2, "scene_id"

    .line 6
    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v4, "hotOpenShell->hotOpenType:"

    .line 13
    .line 14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const-string v4, "TmcApp:ActivityHelper"

    .line 25
    .line 26
    invoke-static {v4, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    .line 30
    .line 31
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v4, "miniapp_id"

    .line 35
    .line 36
    iget-object v5, p0, Lcom/cloud/tmc/integration/ActivityHelper;->appId:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string v4, "scene"

    .line 42
    .line 43
    iget-object v5, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mStartClientBundle:Lcom/cloud/tmc/integration/activity/StartClientBundle;

    .line 44
    .line 45
    iget-object v5, v5, Lcom/cloud/tmc/integration/activity/StartClientBundle;->startParams:Landroid/os/Bundle;

    .line 46
    .line 47
    invoke-virtual {v5, v2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v4, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mStartClientBundle:Lcom/cloud/tmc/integration/activity/StartClientBundle;

    .line 55
    .line 56
    iget-object v4, v4, Lcom/cloud/tmc/integration/activity/StartClientBundle;->startParams:Landroid/os/Bundle;

    .line 57
    .line 58
    const-string v5, "0"

    .line 59
    .line 60
    invoke-virtual {v4, v0, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-virtual {v3, v0, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_SCENE:Ljava/lang/String;

    .line 68
    .line 69
    iget-object v4, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mStartClientBundle:Lcom/cloud/tmc/integration/activity/StartClientBundle;

    .line 70
    .line 71
    iget-object v4, v4, Lcom/cloud/tmc/integration/activity/StartClientBundle;->startParams:Landroid/os/Bundle;

    .line 72
    .line 73
    invoke-virtual {v4, v2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v3, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_OPEN_CHANNEL:Ljava/lang/String;

    .line 81
    .line 82
    const-string v1, "3"

    .line 83
    .line 84
    invoke-virtual {v3, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    const-string v0, "hot_open_type"

    .line 88
    .line 89
    invoke-virtual {v3, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    const-class p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 93
    .line 94
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 99
    .line 100
    iget-object v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->appId:Ljava/lang/String;

    .line 101
    .line 102
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_LAUNCH_MINIAPP_HOT_OPEN:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 103
    .line 104
    const-string v2, ""

    .line 105
    .line 106
    invoke-interface {p1, v0, v1, v2, v3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 107
    .line 108
    .line 109
    iget-object p1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    .line 110
    .line 111
    if-eqz p1, :cond_0

    .line 112
    .line 113
    invoke-virtual {p1, v3}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->hotOpen(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    .line 115
    .line 116
    :catchall_0
    :cond_0
    return-void
.end method

.method private synthetic lambda$setHostActivityStatusBackground$0(I)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->onSetHostActivityStatusBackgroundCallback:Lcom/cloud/tmc/integration/ActivityHelper$OnSetHostActivityStatusBackgroundCallback;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/cloud/tmc/integration/ActivityHelper$OnSetHostActivityStatusBackgroundCallback;->setHostActivityStatusBackground(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catchall_0
    move-exception p1

    .line 8
    const-string v0, "TmcApp:ActivityHelper"

    .line 9
    .line 10
    const-string v1, "setHostActivityStatusBackground failed"

    .line 11
    .line 12
    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method private miniShellAppHotStart()Z
    .locals 14

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const-class v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 4
    .line 5
    const-string v2, "hot_open_type"

    .line 6
    .line 7
    const-string v3, "shell_0"

    .line 8
    .line 9
    const-string v4, "TmcApp:ActivityHelper"

    .line 10
    .line 11
    iget-object v5, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    if-nez v5, :cond_0

    .line 15
    .line 16
    return v6

    .line 17
    :cond_0
    new-instance v5, Landroid/os/Bundle;

    .line 18
    .line 19
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 20
    .line 21
    .line 22
    :try_start_0
    iget-object v7, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 23
    .line 24
    invoke-virtual {v7}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getStartParams()Landroid/os/Bundle;

    .line 25
    .line 26
    .line 27
    move-result-object v7

    .line 28
    const-string v8, "h5Path"

    .line 29
    .line 30
    invoke-virtual {v7, v8}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v8

    .line 34
    new-instance v9, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v10, "\u5305\u58f3\u5c0f\u7a0b\u5e8f\u70ed\u542f\u52a8\uff0ch5Path="

    .line 40
    .line 41
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v9

    .line 51
    invoke-static {v4, v9}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v9, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 55
    .line 56
    invoke-virtual {v9}, Lcom/cloud/tmc/integration/structure/node/AppNode;->isExited()Z

    .line 57
    .line 58
    .line 59
    move-result v9

    .line 60
    if-nez v9, :cond_3

    .line 61
    .line 62
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 63
    .line 64
    .line 65
    move-result v8

    .line 66
    if-nez v8, :cond_3

    .line 67
    .line 68
    iget-object v8, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 69
    .line 70
    invoke-virtual {v8}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getActivePage()Lcom/cloud/tmc/integration/structure/Page;

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    if-eqz v8, :cond_4

    .line 75
    .line 76
    invoke-interface {v8}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    .line 77
    .line 78
    .line 79
    move-result-object v9

    .line 80
    if-eqz v9, :cond_4

    .line 81
    .line 82
    invoke-direct {p0, v3}, Lcom/cloud/tmc/integration/ActivityHelper;->hotOpenShell(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    new-instance v10, Lcom/cloud/tmc/kernel/render/LoadParams;

    .line 86
    .line 87
    invoke-direct {v10}, Lcom/cloud/tmc/kernel/render/LoadParams;-><init>()V

    .line 88
    .line 89
    .line 90
    const-string v11, "hotShellStart"

    .line 91
    .line 92
    iget-object v12, v10, Lcom/cloud/tmc/kernel/render/LoadParams;->url:Ljava/lang/String;

    .line 93
    .line 94
    invoke-interface {v8}, Lcom/cloud/tmc/integration/structure/Page;->resetPageRandomIdByGAID()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v13

    .line 98
    invoke-static {v8, v11, v12, v13}, Lcom/cloud/tmc/integration/utils/TrackPointUtils;->openPageActionTrack(Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iget-object v11, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 102
    .line 103
    invoke-virtual {v11}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getAppId()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v11

    .line 107
    iput-object v11, v10, Lcom/cloud/tmc/kernel/render/LoadParams;->appId:Ljava/lang/String;

    .line 108
    .line 109
    invoke-interface {v8}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v11

    .line 113
    iput-object v11, v10, Lcom/cloud/tmc/kernel/render/LoadParams;->pagePath:Ljava/lang/String;

    .line 114
    .line 115
    iget-object v11, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 116
    .line 117
    invoke-interface {v8}, Lcom/cloud/tmc/integration/structure/Page;->getPageURI()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v8

    .line 121
    invoke-static {v11, v8}, Lcom/cloud/tmc/integration/utils/MiniShellUtils;->getOriginUrl(Lcom/cloud/tmc/integration/structure/node/AppNode;Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v8

    .line 125
    invoke-static {v8, v7}, Lcom/cloud/tmc/kernel/utils/KUrlUtils;->generateShellUrl(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v7

    .line 129
    iput-object v7, v10, Lcom/cloud/tmc/kernel/render/LoadParams;->url:Ljava/lang/String;

    .line 130
    .line 131
    iget-object v7, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 132
    .line 133
    invoke-virtual {v7}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getLoadHtmlDataCallback()Lcom/cloud/tmc/integration/callback/ILoadHtmlDataCallback;

    .line 134
    .line 135
    .line 136
    move-result-object v7

    .line 137
    if-eqz v7, :cond_1

    .line 138
    .line 139
    invoke-interface {v7, v9, v10}, Lcom/cloud/tmc/integration/callback/ILoadHtmlDataCallback;->loadHtmlData(Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/kernel/render/LoadParams;)Z

    .line 140
    .line 141
    .line 142
    move-result v8

    .line 143
    goto :goto_0

    .line 144
    :catch_0
    move-exception v3

    .line 145
    goto :goto_1

    .line 146
    :cond_1
    move v8, v6

    .line 147
    :goto_0
    if-nez v8, :cond_2

    .line 148
    .line 149
    invoke-interface {v7, v9, v10}, Lcom/cloud/tmc/integration/callback/ILoadHtmlDataCallback;->loadUrl(Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/kernel/render/LoadParams;)V

    .line 150
    .line 151
    .line 152
    :cond_2
    invoke-virtual {v5, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    check-cast v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 160
    .line 161
    iget-object v7, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 162
    .line 163
    invoke-virtual {v7}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getAppId()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v7

    .line 167
    sget-object v8, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_HOT_RELOAD:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 168
    .line 169
    invoke-interface {v3, v7, v8, v0, v5}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 170
    .line 171
    .line 172
    const/4 v0, 0x1

    .line 173
    return v0

    .line 174
    :cond_3
    const-string v3, "\u76ee\u6807\u5c0f\u7a0b\u5e8f\u5df2\u9000\u51fa\u6216\u8005h5Path\u4e3a\u7a7a\uff0c\u65e0\u6cd5\u6ee1\u8db3\u62c9\u8d77\u8981\u6c42\u3002"

    .line 175
    .line 176
    invoke-static {v4, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .line 178
    .line 179
    goto :goto_2

    .line 180
    :goto_1
    const-string v7, "miniShellAppHotStart failed!"

    .line 181
    .line 182
    invoke-static {v4, v7, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 183
    .line 184
    .line 185
    :cond_4
    :goto_2
    const-string v3, "shell_1"

    .line 186
    .line 187
    invoke-direct {p0, v3}, Lcom/cloud/tmc/integration/ActivityHelper;->hotOpenShell(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v5, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 198
    .line 199
    iget-object v2, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 200
    .line 201
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getAppId()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_HOT_RELOAD:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 206
    .line 207
    invoke-interface {v1, v2, v3, v0, v5}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 208
    .line 209
    .line 210
    iget-object v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 211
    .line 212
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getActivePage()Lcom/cloud/tmc/integration/structure/Page;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    iget-object v1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 217
    .line 218
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getActivePage()Lcom/cloud/tmc/integration/structure/Page;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    const/4 v2, 0x0

    .line 223
    if-eqz v1, :cond_5

    .line 224
    .line 225
    iget-object v1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 226
    .line 227
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getActivePage()Lcom/cloud/tmc/integration/structure/Page;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getPageRandomIdByGAId()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    goto :goto_3

    .line 236
    :cond_5
    move-object v1, v2

    .line 237
    :goto_3
    const-string v3, "hotShellStartSelf"

    .line 238
    .line 239
    invoke-static {v0, v3, v2, v1}, Lcom/cloud/tmc/integration/utils/TrackPointUtils;->openPageActionTrack(Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    return v6
.end method

.method private setHostActivityStatusBackground(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "TmcApp:ActivityHelper"

    .line 2
    .line 3
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const-string p1, "setHostActivityStatusBackground page empty"

    .line 10
    .line 11
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v2, "setHostActivityStatusBackground page: "

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getmAppLoadResult()Lcom/cloud/tmc/integration/structure/AppLoadResult;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-nez v1, :cond_1

    .line 44
    .line 45
    const-string p1, "setHostActivityStatusBackground: appLoadResult is null"

    .line 46
    .line 47
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_1
    invoke-static {v1, p1}, Lcom/cloud/tmc/integration/utils/MiniAppConfigUtils;->getWindowOptimalConfiguration(Lcom/cloud/tmc/integration/structure/AppLoadResult;Ljava/lang/String;)Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    if-nez p1, :cond_2

    .line 56
    .line 57
    const-string p1, "setHostActivityStatusBackground: window is null"

    .line 58
    .line 59
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_2
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getContentBgColor()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_3

    .line 72
    .line 73
    const-string p1, "setHostActivityStatusBackground: contentBackgroundColor is empty"

    .line 74
    .line 75
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string v2, "setHostActivityStatusBackground: contentBackground: "

    .line 85
    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    iget-object v1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->onSetHostActivityStatusBackgroundCallback:Lcom/cloud/tmc/integration/ActivityHelper$OnSetHostActivityStatusBackgroundCallback;

    .line 104
    .line 105
    if-eqz v1, :cond_4

    .line 106
    .line 107
    new-instance v1, Lcom/cloud/tmc/integration/a;

    .line 108
    .line 109
    invoke-direct {v1, p0, p1}, Lcom/cloud/tmc/integration/a;-><init>(Lcom/cloud/tmc/integration/ActivityHelper;I)V

    .line 110
    .line 111
    .line 112
    invoke-static {v1}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->runOnMain(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :goto_0
    const-string v1, "setHostActivityStatusBackground parse color failed!"

    .line 117
    .line 118
    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 119
    .line 120
    .line 121
    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public createAppContext(Lcom/cloud/tmc/integration/structure/App;Landroidx/fragment/app/FragmentActivity;)Lcom/cloud/tmc/integration/structure/AppContext;
    .locals 3

    .line 1
    new-instance p1, Lcom/cloud/tmc/integration/structure/app/TmcAppContext;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget v1, Lcom/cloud/tmc/integration/R$id;->trv_fragment_container:I

    .line 8
    .line 9
    invoke-virtual {p2, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Landroid/view/ViewGroup;

    .line 14
    .line 15
    sget v2, Lcom/cloud/tmc/integration/R$id;->trv_tab_container:I

    .line 16
    .line 17
    invoke-virtual {p2, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Landroid/view/ViewGroup;

    .line 22
    .line 23
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/cloud/tmc/integration/structure/app/TmcAppContext;-><init>(Lcom/cloud/tmc/integration/structure/App;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentActivity;)V

    .line 24
    .line 25
    .line 26
    return-object p1
.end method

.method public declared-synchronized doCommonDestroy()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mAlreadyDoDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    :try_start_1
    iput-boolean v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mAlreadyDoDestroyed:Z

    .line 10
    .line 11
    const-class v0, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 20
    .line 21
    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->getEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->destroy()V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    goto :goto_2

    .line 33
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->isDestroyed()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    iget-object v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/cloud/tmc/kernel/node/NodeInstance;->getChildCount()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    const-string v1, "TmcApp:ActivityHelper"

    .line 50
    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string v3, "doCommonDestroy force mApp.destroy with count: "

    .line 57
    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->exit()V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_2
    iget-object v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mAppContext:Lcom/cloud/tmc/integration/structure/AppContext;

    .line 78
    .line 79
    if-eqz v0, :cond_3

    .line 80
    .line 81
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/AppContext;->destroy()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    .line 83
    .line 84
    :cond_3
    :goto_1
    monitor-exit p0

    .line 85
    return-void

    .line 86
    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    throw v0
.end method

.method public finish()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/ActivityHelper;->doCommonDestroy()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public finishAndRemoveTask()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/ActivityHelper;->doCommonDestroy()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public getApp()Lcom/cloud/tmc/integration/structure/App;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 2
    .line 3
    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onCreate()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mStartClientBundle:Lcom/cloud/tmc/integration/activity/StartClientBundle;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    iget-object v0, v0, Lcom/cloud/tmc/integration/activity/StartClientBundle;->startAction:Lcom/cloud/tmc/integration/activity/StartAction;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_1

    .line 10
    .line 11
    :cond_0
    sget-object v1, Lcom/cloud/tmc/integration/ActivityHelper$1;->$SwitchMap$com$cloud$tmc$integration$activity$StartAction:[I

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    aget v0, v1, v0

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    const-string v2, "TmcApp:ActivityHelper"

    .line 21
    .line 22
    if-eq v0, v1, :cond_3

    .line 23
    .line 24
    const/4 v1, 0x3

    .line 25
    if-eq v0, v1, :cond_1

    .line 26
    .line 27
    goto/16 :goto_1

    .line 28
    .line 29
    :cond_1
    const-class v0, Lcom/cloud/tmc/integration/structure/AppManager;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Lcom/cloud/tmc/integration/structure/AppManager;

    .line 36
    .line 37
    iget-wide v3, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mStartToken:J

    .line 38
    .line 39
    invoke-interface {v1, v3, v4}, Lcom/cloud/tmc/integration/structure/AppManager;->findAppByToken(J)Lcom/cloud/tmc/integration/structure/App;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 44
    .line 45
    iput-object v1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 46
    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string v1, "onCreate find quickStarted app! "

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v1, " appId from Param: "

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-object v1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 70
    .line 71
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getStartParams()Landroid/os/Bundle;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    const-string v3, "appId"

    .line 76
    .line 77
    invoke-static {v1, v3}, Lcom/cloud/tmc/kernel/utils/BundleUtils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-static {v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_2
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Lcom/cloud/tmc/integration/structure/AppManager;

    .line 97
    .line 98
    iget-object v1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mStartClientBundle:Lcom/cloud/tmc/integration/activity/StartClientBundle;

    .line 99
    .line 100
    iget-object v2, v1, Lcom/cloud/tmc/integration/activity/StartClientBundle;->appId:Ljava/lang/String;

    .line 101
    .line 102
    iget-object v3, v1, Lcom/cloud/tmc/integration/activity/StartClientBundle;->startParams:Landroid/os/Bundle;

    .line 103
    .line 104
    iget-object v1, v1, Lcom/cloud/tmc/integration/activity/StartClientBundle;->sceneParams:Landroid/os/Bundle;

    .line 105
    .line 106
    invoke-interface {v0, v2, v3, v1}, Lcom/cloud/tmc/integration/structure/AppManager;->startApp(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/cloud/tmc/integration/structure/App;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    check-cast v0, Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 111
    .line 112
    iput-object v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 113
    .line 114
    const-class v0, Lcom/cloud/tmc/integration/structure/VirtualAppManager;

    .line 115
    .line 116
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    check-cast v0, Lcom/cloud/tmc/integration/structure/VirtualAppManager;

    .line 121
    .line 122
    iget-object v1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 123
    .line 124
    invoke-interface {v0, v1}, Lcom/cloud/tmc/integration/structure/VirtualAppManager;->updateAppInfo(Lcom/cloud/tmc/integration/structure/App;)V

    .line 125
    .line 126
    .line 127
    :goto_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 128
    .line 129
    iget-object v1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    .line 130
    .line 131
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/structure/node/AppNode;->setAppChainContext(Lcom/cloud/tmc/integration/chain/app/AppChainContext;)V

    .line 132
    .line 133
    .line 134
    iget-object v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 135
    .line 136
    iget-object v1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    .line 137
    .line 138
    invoke-virtual {p0, v0, v1}, Lcom/cloud/tmc/integration/ActivityHelper;->createAppContext(Lcom/cloud/tmc/integration/structure/App;Landroidx/fragment/app/FragmentActivity;)Lcom/cloud/tmc/integration/structure/AppContext;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    iput-object v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mAppContext:Lcom/cloud/tmc/integration/structure/AppContext;

    .line 143
    .line 144
    iget-object v1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 145
    .line 146
    invoke-virtual {v1, v0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->bindContext(Lcom/cloud/tmc/integration/structure/AppContext;)V

    .line 147
    .line 148
    .line 149
    iget-object v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 150
    .line 151
    invoke-direct {p0, v0}, Lcom/cloud/tmc/integration/ActivityHelper;->checkBackToUrlParam(Lcom/cloud/tmc/integration/structure/App;)V

    .line 152
    .line 153
    .line 154
    iget-object v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 155
    .line 156
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->start()V

    .line 157
    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_3
    iget-object v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 161
    .line 162
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getSceneParams()Landroid/os/Bundle;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    const-string v1, "prepareExceptionCode"

    .line 167
    .line 168
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/utils/BundleUtils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    iget-object v1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 173
    .line 174
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getSceneParams()Landroid/os/Bundle;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    const-string v3, "prepareExceptionMessage"

    .line 179
    .line 180
    invoke-static {v1, v3}, Lcom/cloud/tmc/kernel/utils/BundleUtils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    new-instance v3, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .line 188
    .line 189
    const-string v4, "errorCode: "

    .line 190
    .line 191
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    const-string v0, " errorMessage: "

    .line 198
    .line 199
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-static {v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    :cond_4
    :goto_1
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/ActivityHelper;->doCommonDestroy()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5

    .line 1
    const-class v0, Lcom/cloud/tmc/integration/proxy/StartActivityProxy;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "onKeyUp "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string v1, "TmcApp:ActivityHelper"

    .line 21
    .line 22
    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    const/4 v2, 0x4

    .line 30
    const/4 v3, 0x0

    .line 31
    const/4 v4, 0x1

    .line 32
    if-ne p1, v2, :cond_0

    .line 33
    .line 34
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-nez p1, :cond_0

    .line 39
    .line 40
    move p1, v4

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    move p1, v3

    .line 43
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v2, "isBackPressed:   "

    .line 49
    .line 50
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-static {v1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    if-eqz p1, :cond_5

    .line 64
    .line 65
    iget-object p1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mAppContext:Lcom/cloud/tmc/integration/structure/AppContext;

    .line 66
    .line 67
    if-eqz p1, :cond_1

    .line 68
    .line 69
    instance-of p1, p1, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;

    .line 70
    .line 71
    if-eqz p1, :cond_1

    .line 72
    .line 73
    iget-object p1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getActivePage()Lcom/cloud/tmc/integration/structure/Page;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    if-eqz p1, :cond_1

    .line 80
    .line 81
    iget-object p1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mAppContext:Lcom/cloud/tmc/integration/structure/AppContext;

    .line 82
    .line 83
    check-cast p1, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;

    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->getFragmentManager()Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    iget-object p2, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 90
    .line 91
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getActivePage()Lcom/cloud/tmc/integration/structure/Page;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    invoke-interface {p1, p2}, Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;->findFragmentForPage(Lcom/cloud/tmc/integration/structure/Page;)Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    if-eqz p1, :cond_1

    .line 100
    .line 101
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->exitFullScreen()Ljava/lang/Boolean;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-eqz p1, :cond_1

    .line 110
    .line 111
    return v4

    .line 112
    :cond_1
    iget-object p1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 113
    .line 114
    if-eqz p1, :cond_2

    .line 115
    .line 116
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/structure/node/AppNode;->backPressed()Z

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    return p1

    .line 121
    :cond_2
    iget-object p1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    .line 122
    .line 123
    if-eqz p1, :cond_5

    .line 124
    .line 125
    :try_start_0
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    check-cast p1, Lcom/cloud/tmc/integration/proxy/StartActivityProxy;

    .line 130
    .line 131
    iget-object p2, p0, Lcom/cloud/tmc/integration/ActivityHelper;->appId:Ljava/lang/String;

    .line 132
    .line 133
    invoke-interface {p1, p2}, Lcom/cloud/tmc/integration/proxy/StartActivityProxy;->checkOpenMutipleTask(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 138
    .line 139
    .line 140
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 141
    if-eqz p1, :cond_4

    .line 142
    .line 143
    :try_start_1
    iget-object p1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->appId:Ljava/lang/String;

    .line 144
    .line 145
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    if-nez p1, :cond_3

    .line 150
    .line 151
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    check-cast p1, Lcom/cloud/tmc/integration/proxy/StartActivityProxy;

    .line 156
    .line 157
    iget-object p2, p0, Lcom/cloud/tmc/integration/ActivityHelper;->appId:Ljava/lang/String;

    .line 158
    .line 159
    iget-object v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    .line 160
    .line 161
    invoke-interface {p1, p2, v0}, Lcom/cloud/tmc/integration/proxy/StartActivityProxy;->removeMiniAppTask(Ljava/lang/String;Landroid/app/Activity;)V

    .line 162
    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_3
    iget-object p1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    .line 166
    .line 167
    invoke-virtual {p1}, Landroid/app/Activity;->finishAndRemoveTask()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    .line 169
    .line 170
    goto :goto_2

    .line 171
    :catchall_0
    :try_start_2
    iget-object p1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    .line 172
    .line 173
    invoke-virtual {p1}, Landroid/app/Activity;->finishAndRemoveTask()V

    .line 174
    .line 175
    .line 176
    goto :goto_2

    .line 177
    :catchall_1
    move-exception p1

    .line 178
    goto :goto_1

    .line 179
    :cond_4
    iget-object p1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    .line 180
    .line 181
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 182
    .line 183
    .line 184
    goto :goto_2

    .line 185
    :goto_1
    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 186
    .line 187
    .line 188
    iget-object p1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    .line 189
    .line 190
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 191
    .line 192
    .line 193
    :goto_2
    return v4

    .line 194
    :cond_5
    return v3
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 5

    .line 1
    const-string v0, "extraMiniClearAllPages"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "onNewIntent with intent: "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "TmcApp:ActivityHelper"

    .line 21
    .line 22
    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    if-nez p1, :cond_0

    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    if-eqz v1, :cond_6

    .line 33
    .line 34
    const-string v1, "IS_LITE_MOVE_TASK"

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/integration/ActivityHelper;->setupParams(Landroid/content/Intent;)Lcom/cloud/tmc/integration/activity/StartClientBundle;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    if-nez v1, :cond_2

    .line 49
    .line 50
    return-void

    .line 51
    :cond_2
    iget-object v3, v1, Lcom/cloud/tmc/integration/activity/StartClientBundle;->sceneParams:Landroid/os/Bundle;

    .line 52
    .line 53
    if-eqz v3, :cond_3

    .line 54
    .line 55
    const-string v4, "scene_id"

    .line 56
    .line 57
    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-eqz v3, :cond_3

    .line 62
    .line 63
    iget-object v3, v1, Lcom/cloud/tmc/integration/activity/StartClientBundle;->sceneParams:Landroid/os/Bundle;

    .line 64
    .line 65
    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    iput-object v3, p0, Lcom/cloud/tmc/integration/ActivityHelper;->sceneId:Ljava/lang/String;

    .line 70
    .line 71
    :cond_3
    invoke-direct {p0, p1, v1}, Lcom/cloud/tmc/integration/ActivityHelper;->checkHotStartToOpenSpecifyPage(Landroid/content/Intent;Lcom/cloud/tmc/integration/activity/StartClientBundle;)Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-eqz p1, :cond_4

    .line 76
    .line 77
    const-string p1, "\u5c0f\u7a0b\u5e8f\u5728\u540e\u53f0\u4e14\u62c9\u8d77\u6307\u5b9a\u9875\u9762\u6210\u529f\uff01"

    .line 78
    .line 79
    invoke-static {v2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :cond_4
    :try_start_0
    iget-object p1, v1, Lcom/cloud/tmc/integration/activity/StartClientBundle;->startParams:Landroid/os/Bundle;

    .line 84
    .line 85
    if-eqz p1, :cond_5

    .line 86
    .line 87
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-eqz v1, :cond_5

    .line 92
    .line 93
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :catchall_0
    move-exception p1

    .line 98
    invoke-static {v2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    .line 100
    .line 101
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/ActivityHelper;->onCreate()V

    .line 102
    .line 103
    .line 104
    :cond_6
    :goto_1
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    const-string v0, "TmcApp:ActivityHelper"

    .line 2
    .line 3
    const-string v1, "onPause"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->pause()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public onRequestPermissionResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    const-string v0, "TmcApp:ActivityHelper"

    .line 2
    .line 3
    const-string v1, "onResume"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->resume()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    const-string v0, "TmcApp:ActivityHelper"

    .line 2
    .line 3
    const-string v1, "onStop"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->stop()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public reportFailureClickReloadButton()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "Tmc"

    .line 6
    .line 7
    const-string v1, "mApp is null,reportFailureClickReloadButton"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->reportFailureClickReloadButton()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->appId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setOnSetHostActivityStatusBackgroundCallback(Lcom/cloud/tmc/integration/ActivityHelper$OnSetHostActivityStatusBackgroundCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->onSetHostActivityStatusBackgroundCallback:Lcom/cloud/tmc/integration/ActivityHelper$OnSetHostActivityStatusBackgroundCallback;

    .line 2
    .line 3
    return-void
.end method

.method public setupParams(Landroid/content/Intent;)Lcom/cloud/tmc/integration/activity/StartClientBundle;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const-string v0, "TmcApp:ActivityHelper"

    .line 2
    .line 3
    if-eqz p1, :cond_4

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_4

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-class v2, Lcom/cloud/tmc/integration/ActivityHelper;

    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string v1, "startBundle"

    .line 29
    .line 30
    invoke-static {p1, v1}, Lcom/cloud/tmc/kernel/utils/BundleUtils;->getParcelable(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Parcelable;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Lcom/cloud/tmc/integration/activity/StartClientBundle;

    .line 35
    .line 36
    iput-object p1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mStartClientBundle:Lcom/cloud/tmc/integration/activity/StartClientBundle;

    .line 37
    .line 38
    if-eqz p1, :cond_5

    .line 39
    .line 40
    new-instance p1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v1, "onCreate "

    .line 46
    .line 47
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, " with "

    .line 64
    .line 65
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mStartClientBundle:Lcom/cloud/tmc/integration/activity/StartClientBundle;

    .line 69
    .line 70
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-direct {p0}, Lcom/cloud/tmc/integration/ActivityHelper;->handleStartParams()V

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mStartClientBundle:Lcom/cloud/tmc/integration/activity/StartClientBundle;

    .line 84
    .line 85
    iget-wide v1, p1, Lcom/cloud/tmc/integration/activity/StartClientBundle;->startToken:J

    .line 86
    .line 87
    iput-wide v1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mStartToken:J

    .line 88
    .line 89
    iget-object v1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 90
    .line 91
    if-eqz v1, :cond_1

    .line 92
    .line 93
    iget-object p1, p1, Lcom/cloud/tmc/integration/activity/StartClientBundle;->startParams:Landroid/os/Bundle;

    .line 94
    .line 95
    if-eqz p1, :cond_0

    .line 96
    .line 97
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getStartParams()Landroid/os/Bundle;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    if-eqz v1, :cond_0

    .line 102
    .line 103
    iget-object v1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 104
    .line 105
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getStartParams()Landroid/os/Bundle;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :catchall_0
    move-exception p1

    .line 114
    goto :goto_2

    .line 115
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mStartClientBundle:Lcom/cloud/tmc/integration/activity/StartClientBundle;

    .line 116
    .line 117
    iget-object p1, p1, Lcom/cloud/tmc/integration/activity/StartClientBundle;->sceneParams:Landroid/os/Bundle;

    .line 118
    .line 119
    if-eqz p1, :cond_5

    .line 120
    .line 121
    iget-object v1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 122
    .line 123
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getSceneParams()Landroid/os/Bundle;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    if-eqz v1, :cond_5

    .line 128
    .line 129
    iget-object v1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 130
    .line 131
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getSceneParams()Landroid/os/Bundle;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 136
    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_1
    sget-object p1, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    .line 140
    .line 141
    const-string v1, "enableFixMiniHotOpen"

    .line 142
    .line 143
    const/4 v2, 0x1

    .line 144
    invoke-virtual {p1, v1, v2}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetBool(Ljava/lang/String;Z)Z

    .line 145
    .line 146
    .line 147
    move-result p1

    .line 148
    if-eqz p1, :cond_5

    .line 149
    .line 150
    const-string p1, "Tmc"

    .line 151
    .line 152
    const-string v1, "\u4fee\u590d\u540e\u53f0\u56de\u6536\u540e\u7684"

    .line 153
    .line 154
    invoke-static {p1, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    iget-object p1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->tempStartParams:Landroid/os/Bundle;

    .line 158
    .line 159
    if-eqz p1, :cond_3

    .line 160
    .line 161
    iget-object v1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->tempSceneParams:Landroid/os/Bundle;

    .line 162
    .line 163
    if-nez v1, :cond_2

    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_2
    iget-object v1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mStartClientBundle:Lcom/cloud/tmc/integration/activity/StartClientBundle;

    .line 167
    .line 168
    iget-object v1, v1, Lcom/cloud/tmc/integration/activity/StartClientBundle;->startParams:Landroid/os/Bundle;

    .line 169
    .line 170
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 171
    .line 172
    .line 173
    iget-object p1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mStartClientBundle:Lcom/cloud/tmc/integration/activity/StartClientBundle;

    .line 174
    .line 175
    iget-object p1, p1, Lcom/cloud/tmc/integration/activity/StartClientBundle;->sceneParams:Landroid/os/Bundle;

    .line 176
    .line 177
    iget-object v1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->tempSceneParams:Landroid/os/Bundle;

    .line 178
    .line 179
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 180
    .line 181
    .line 182
    const/4 p1, 0x0

    .line 183
    iput-object p1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->tempStartParams:Landroid/os/Bundle;

    .line 184
    .line 185
    iput-object p1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->tempSceneParams:Landroid/os/Bundle;

    .line 186
    .line 187
    goto :goto_3

    .line 188
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mStartClientBundle:Lcom/cloud/tmc/integration/activity/StartClientBundle;

    .line 189
    .line 190
    iget-object v1, p1, Lcom/cloud/tmc/integration/activity/StartClientBundle;->startParams:Landroid/os/Bundle;

    .line 191
    .line 192
    iput-object v1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->tempStartParams:Landroid/os/Bundle;

    .line 193
    .line 194
    iget-object p1, p1, Lcom/cloud/tmc/integration/activity/StartClientBundle;->sceneParams:Landroid/os/Bundle;

    .line 195
    .line 196
    iput-object p1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->tempSceneParams:Landroid/os/Bundle;

    .line 197
    .line 198
    goto :goto_3

    .line 199
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 200
    .line 201
    const-string v1, "onCreate intent null!!"

    .line 202
    .line 203
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    :goto_2
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 208
    .line 209
    .line 210
    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mStartClientBundle:Lcom/cloud/tmc/integration/activity/StartClientBundle;

    .line 211
    .line 212
    return-object p1
.end method
