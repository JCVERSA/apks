.class Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/worker/IWorkerManagerFactory$IWorkerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge;->registerWorker(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Lcom/cloud/tmc/integration/structure/Page;Lcom/cloud/tmc/integration/structure/App;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge;

.field final synthetic val$app:Lcom/cloud/tmc/integration/structure/App;

.field final synthetic val$appLoadResult:Lcom/cloud/tmc/integration/structure/AppLoadResult;

.field final synthetic val$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

.field final synthetic val$page:Lcom/cloud/tmc/integration/structure/Page;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge;Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/integration/structure/Page;Lcom/cloud/tmc/integration/structure/AppLoadResult;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;->this$0:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;->val$app:Lcom/cloud/tmc/integration/structure/App;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;->val$page:Lcom/cloud/tmc/integration/structure/Page;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;->val$appLoadResult:Lcom/cloud/tmc/integration/structure/AppLoadResult;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;->val$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public createSuccess(Lcom/cloud/tmc/kernel/worker/JSI;)V
    .locals 10
    .param p1    # Lcom/cloud/tmc/kernel/worker/JSI;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;->val$app:Lcom/cloud/tmc/integration/structure/App;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getEngineProxy()Lcom/cloud/tmc/kernel/engine/IEngine;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/engine/IEngine;->getEngineRouter()Lcom/cloud/tmc/kernel/engine/EngineRouter;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0, p1}, Lcom/cloud/tmc/kernel/engine/EngineRouter;->registerWorker(Lcom/cloud/tmc/kernel/worker/JSI;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;->val$page:Lcom/cloud/tmc/integration/structure/Page;

    .line 15
    .line 16
    new-instance v1, Lcom/cloud/tmc/integration/model/WorkerStore;

    .line 17
    .line 18
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/worker/JSI;->getWorkerId()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-direct {v1, v2}, Lcom/cloud/tmc/integration/model/WorkerStore;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-class v2, Lcom/cloud/tmc/integration/model/WorkerStore;

    .line 26
    .line 27
    invoke-interface {v0, v2, v1}, Lcom/cloud/tmc/kernel/node/DataNode;->setData(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    new-instance v8, Lcom/google/gson/JsonObject;

    .line 31
    .line 32
    invoke-direct {v8}, Lcom/google/gson/JsonObject;-><init>()V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;->val$page:Lcom/cloud/tmc/integration/structure/Page;

    .line 36
    .line 37
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v1, "homepageUrl"

    .line 42
    .line 43
    invoke-virtual {v8, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;->val$app:Lcom/cloud/tmc/integration/structure/App;

    .line 47
    .line 48
    const/4 v1, 0x0

    .line 49
    invoke-interface {v0, v1}, Lcom/cloud/tmc/integration/structure/App;->getPageByIndex(I)Lcom/cloud/tmc/integration/structure/Page;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iget-object v2, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;->val$app:Lcom/cloud/tmc/integration/structure/App;

    .line 58
    .line 59
    invoke-interface {v2}, Lcom/cloud/tmc/kernel/node/Node;->getChildCount()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-lez v2, :cond_1

    .line 64
    .line 65
    :goto_0
    if-ge v1, v2, :cond_1

    .line 66
    .line 67
    iget-object v3, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;->val$app:Lcom/cloud/tmc/integration/structure/App;

    .line 68
    .line 69
    invoke-interface {v3, v1}, Lcom/cloud/tmc/integration/structure/App;->getPageByIndex(I)Lcom/cloud/tmc/integration/structure/Page;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    if-eqz v3, :cond_0

    .line 78
    .line 79
    iget-object v3, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;->val$app:Lcom/cloud/tmc/integration/structure/App;

    .line 80
    .line 81
    invoke-interface {v3, v1}, Lcom/cloud/tmc/integration/structure/App;->getPageByIndex(I)Lcom/cloud/tmc/integration/structure/Page;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    invoke-interface {v3, v4}, Lcom/cloud/tmc/integration/structure/App;->getPageType(Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    const/4 v4, 0x1

    .line 94
    if-ne v3, v4, :cond_0

    .line 95
    .line 96
    iget-object v0, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;->val$app:Lcom/cloud/tmc/integration/structure/App;

    .line 97
    .line 98
    invoke-interface {v0, v1}, Lcom/cloud/tmc/integration/structure/App;->getPageByIndex(I)Lcom/cloud/tmc/integration/structure/Page;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    goto :goto_1

    .line 107
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_1
    :goto_1
    const-string v1, "homepageRenderId"

    .line 111
    .line 112
    invoke-virtual {v8, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    new-instance v0, Lcom/google/gson/Gson;

    .line 116
    .line 117
    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 118
    .line 119
    .line 120
    iget-object v1, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;->val$appLoadResult:Lcom/cloud/tmc/integration/structure/AppLoadResult;

    .line 121
    .line 122
    iget-object v1, v1, Lcom/cloud/tmc/integration/structure/AppLoadResult;->appConfigModel:Lcom/cloud/tmc/integration/model/MiniAppConfigModel;

    .line 123
    .line 124
    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    const-string v1, "appJson"

    .line 129
    .line 130
    invoke-virtual {v8, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    :try_start_0
    const-string v0, "miniappId"

    .line 134
    .line 135
    iget-object v1, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;->val$app:Lcom/cloud/tmc/integration/structure/App;

    .line 136
    .line 137
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-virtual {v8, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    sget-object v0, Lcom/cloud/tmc/integration/utils/AppUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppUtils;

    .line 145
    .line 146
    iget-object v1, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;->val$app:Lcom/cloud/tmc/integration/structure/App;

    .line 147
    .line 148
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/AppModel;->getMiniappSubtype()Ljava/lang/Integer;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/utils/AppUtils;->checkUesCommonresApp(Ljava/lang/Integer;)Z

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    if-eqz v0, :cond_2

    .line 161
    .line 162
    const-string v0, "commonresId"

    .line 163
    .line 164
    iget-object v1, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;->val$app:Lcom/cloud/tmc/integration/structure/App;

    .line 165
    .line 166
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/AppModel;->getTemplateMiniappId()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    invoke-virtual {v8, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    .line 176
    .line 177
    goto :goto_2

    .line 178
    :catchall_0
    move-exception v0

    .line 179
    const-string v1, "RegisterWorkerBridge"

    .line 180
    .line 181
    const-string v2, ""

    .line 182
    .line 183
    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 184
    .line 185
    .line 186
    :cond_2
    :goto_2
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/worker/JSI;->fromWarmup()Ljava/lang/Boolean;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    const-class v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 195
    .line 196
    if-eqz v0, :cond_5

    .line 197
    .line 198
    new-instance v0, Landroid/os/Bundle;

    .line 199
    .line 200
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 201
    .line 202
    .line 203
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    .line 204
    .line 205
    iget-object v3, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;->val$page:Lcom/cloud/tmc/integration/structure/Page;

    .line 206
    .line 207
    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v3

    .line 211
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    .line 215
    .line 216
    iget-object v3, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;->val$page:Lcom/cloud/tmc/integration/structure/Page;

    .line 217
    .line 218
    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    check-cast v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 230
    .line 231
    iget-object v3, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;->val$app:Lcom/cloud/tmc/integration/structure/App;

    .line 232
    .line 233
    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v3

    .line 237
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_APP_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 238
    .line 239
    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageDrawView:Ljava/lang/String;

    .line 240
    .line 241
    invoke-interface {v2, v3, v4, v5, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 242
    .line 243
    .line 244
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 249
    .line 250
    iget-object v2, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;->val$app:Lcom/cloud/tmc/integration/structure/App;

    .line 251
    .line 252
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PAGE_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 257
    .line 258
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageDrawView:Ljava/lang/String;

    .line 259
    .line 260
    invoke-interface {v1, v2, v3, v4, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 261
    .line 262
    .line 263
    sget-object v0, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppPrepareUtils;

    .line 264
    .line 265
    iget-object v1, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;->val$app:Lcom/cloud/tmc/integration/structure/App;

    .line 266
    .line 267
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/utils/BaseAppPrepareUtils;->isShellType(Lcom/cloud/tmc/integration/model/AppModel;)Z

    .line 272
    .line 273
    .line 274
    move-result v0

    .line 275
    if-nez v0, :cond_4

    .line 276
    .line 277
    iget-object v0, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;->val$app:Lcom/cloud/tmc/integration/structure/App;

    .line 278
    .line 279
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getDevMode()I

    .line 284
    .line 285
    .line 286
    move-result v0

    .line 287
    const/4 v1, 0x2

    .line 288
    if-ne v0, v1, :cond_4

    .line 289
    .line 290
    const-class p1, Lcom/cloud/tmc/integration/point/IIDEDispatcherPoint;

    .line 291
    .line 292
    invoke-static {p1}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->as(Ljava/lang/Class;)Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;

    .line 293
    .line 294
    .line 295
    move-result-object p1

    .line 296
    iget-object v0, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;->val$app:Lcom/cloud/tmc/integration/structure/App;

    .line 297
    .line 298
    invoke-virtual {p1, v0}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->node(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;

    .line 299
    .line 300
    .line 301
    move-result-object p1

    .line 302
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->create()Lcom/cloud/tmc/kernel/extension/Extension;

    .line 303
    .line 304
    .line 305
    move-result-object p1

    .line 306
    check-cast p1, Lcom/cloud/tmc/integration/point/IIDEDispatcherPoint;

    .line 307
    .line 308
    if-eqz p1, :cond_3

    .line 309
    .line 310
    const-string v0, "miniapp.workerInit"

    .line 311
    .line 312
    invoke-interface {p1, v0, v8}, Lcom/cloud/tmc/integration/point/IIDEDispatcherPoint;->sendMsg(Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    .line 313
    .line 314
    .line 315
    :cond_3
    return-void

    .line 316
    :cond_4
    const-string v0, "workerInit"

    .line 317
    .line 318
    invoke-static {p1, v0, v8}, Lcom/cloud/tmc/integration/event/EventHelper;->dispatchEventToWorker(Lcom/cloud/tmc/kernel/worker/JSI;Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    .line 319
    .line 320
    .line 321
    iget-object v0, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;->val$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 322
    .line 323
    new-instance v1, Lcom/google/gson/JsonObject;

    .line 324
    .line 325
    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 326
    .line 327
    .line 328
    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    .line 329
    .line 330
    .line 331
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/worker/JSI;->setRenderReady()V

    .line 332
    .line 333
    .line 334
    goto/16 :goto_4

    .line 335
    .line 336
    :cond_5
    new-instance v5, Landroid/os/Bundle;

    .line 337
    .line 338
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 339
    .line 340
    .line 341
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TYPE:Ljava/lang/String;

    .line 342
    .line 343
    const-string v2, "page"

    .line 344
    .line 345
    invoke-virtual {v5, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_ID:Ljava/lang/String;

    .line 349
    .line 350
    iget-object v2, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;->val$app:Lcom/cloud/tmc/integration/structure/App;

    .line 351
    .line 352
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getStartParams()Landroid/os/Bundle;

    .line 353
    .line 354
    .line 355
    move-result-object v2

    .line 356
    const-string v3, "uniqueChainID"

    .line 357
    .line 358
    const-string v4, "-1"

    .line 359
    .line 360
    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v2

    .line 364
    invoke-virtual {v5, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    .line 368
    .line 369
    iget-object v2, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;->val$page:Lcom/cloud/tmc/integration/structure/Page;

    .line 370
    .line 371
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v2

    .line 375
    invoke-virtual {v5, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 383
    .line 384
    iget-object v2, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;->val$app:Lcom/cloud/tmc/integration/structure/App;

    .line 385
    .line 386
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v2

    .line 390
    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 391
    .line 392
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CreateWorker:Ljava/lang/String;

    .line 393
    .line 394
    invoke-interface {v0, v2, v3, v4, v5}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 395
    .line 396
    .line 397
    new-instance v6, Landroid/os/Bundle;

    .line 398
    .line 399
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 400
    .line 401
    .line 402
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    .line 403
    .line 404
    iget-object v2, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;->val$page:Lcom/cloud/tmc/integration/structure/Page;

    .line 405
    .line 406
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v2

    .line 410
    invoke-virtual {v6, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    .line 412
    .line 413
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    .line 414
    .line 415
    iget-object v2, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;->val$page:Lcom/cloud/tmc/integration/structure/Page;

    .line 416
    .line 417
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v2

    .line 421
    invoke-virtual {v6, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    move-result-object v0

    .line 428
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 429
    .line 430
    iget-object v2, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;->val$app:Lcom/cloud/tmc/integration/structure/App;

    .line 431
    .line 432
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v2

    .line 436
    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_APP_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 437
    .line 438
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageCreateWorker:Ljava/lang/String;

    .line 439
    .line 440
    invoke-interface {v0, v2, v3, v4, v6}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 441
    .line 442
    .line 443
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 444
    .line 445
    .line 446
    move-result-object v0

    .line 447
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 448
    .line 449
    iget-object v1, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;->val$app:Lcom/cloud/tmc/integration/structure/App;

    .line 450
    .line 451
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v1

    .line 455
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PAGE_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 456
    .line 457
    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageCreateWorker:Ljava/lang/String;

    .line 458
    .line 459
    invoke-interface {v0, v1, v2, v3, v6}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 460
    .line 461
    .line 462
    new-instance v0, Lcom/cloud/tmc/integration/chain/startState/CreateWorkerStartState;

    .line 463
    .line 464
    invoke-direct {v0, v6}, Lcom/cloud/tmc/integration/chain/startState/CreateWorkerStartState;-><init>(Landroid/os/Bundle;)V

    .line 465
    .line 466
    .line 467
    iget-object v1, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;->val$page:Lcom/cloud/tmc/integration/structure/Page;

    .line 468
    .line 469
    if-nez v1, :cond_6

    .line 470
    .line 471
    const/4 v1, 0x0

    .line 472
    goto :goto_3

    .line 473
    :cond_6
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getPageChainContext()Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    .line 474
    .line 475
    .line 476
    move-result-object v1

    .line 477
    :goto_3
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/chain/startState/CreateWorkerStartState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V

    .line 478
    .line 479
    .line 480
    new-instance v0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;

    .line 481
    .line 482
    move-object v3, v0

    .line 483
    move-object v4, p0

    .line 484
    move-object v7, p1

    .line 485
    move-object v9, p1

    .line 486
    invoke-direct/range {v3 .. v9}, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;-><init>(Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/cloud/tmc/kernel/worker/JSI;Lcom/google/gson/JsonObject;Lcom/cloud/tmc/kernel/worker/JSI;)V

    .line 487
    .line 488
    .line 489
    invoke-interface {p1, v0}, Lcom/cloud/tmc/kernel/worker/JSI;->registerWorkerReadyListener(Lcom/cloud/tmc/kernel/worker/JSI$WorkerReadyListener;)V

    .line 490
    .line 491
    .line 492
    :goto_4
    return-void
.end method
