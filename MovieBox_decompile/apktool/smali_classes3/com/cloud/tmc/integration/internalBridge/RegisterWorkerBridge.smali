.class public Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/extension/BridgeExtension;


# static fields
.field private static final TAG:Ljava/lang/String; = "RegisterWorkerBridge"


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


# virtual methods
.method public synthetic callbackFail(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/cloud/tmc/kernel/extension/a;->a(Lcom/cloud/tmc/kernel/extension/BridgeExtension;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onFinalized()V
    .locals 0

    .line 1
    return-void
.end method

.method public onInitialized()V
    .locals 0

    .line 1
    return-void
.end method

.method public permit()Lcom/cloud/tmc/kernel/security/Permission;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public registerWorker(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Lcom/cloud/tmc/integration/structure/Page;Lcom/cloud/tmc/integration/structure/App;)V
    .locals 14
    .param p1    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .param p2    # Lcom/cloud/tmc/integration/structure/Page;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/Page;
        .end annotation
    .end param
    .param p3    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->UI:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    move-object/from16 v0, p3

    .line 2
    .line 3
    invoke-interface/range {p3 .. p3}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v7

    .line 11
    if-nez v7, :cond_0

    .line 12
    .line 13
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const-class v1, Lcom/cloud/tmc/integration/structure/AppLoadResult;

    .line 18
    .line 19
    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    move-object v5, v1

    .line 24
    check-cast v5, Lcom/cloud/tmc/integration/structure/AppLoadResult;

    .line 25
    .line 26
    if-nez v5, :cond_1

    .line 27
    .line 28
    const-string v0, "RegisterWorkerBridge"

    .line 29
    .line 30
    const-string v1, "loadJS failed, appLoadResult is null"

    .line 31
    .line 32
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    invoke-interface/range {p3 .. p3}, Lcom/cloud/tmc/integration/structure/App;->getEngineProxy()Lcom/cloud/tmc/kernel/engine/IEngine;

    .line 40
    .line 41
    .line 42
    move-result-object v8

    .line 43
    :try_start_0
    sget-boolean v1, Lcom/cloud/tmc/kernel/debug/DebugConfig;->DEBUG_REFRESH:Z

    .line 44
    .line 45
    if-eqz v1, :cond_6

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    sput-boolean v1, Lcom/cloud/tmc/kernel/debug/DebugConfig;->DEBUG_REFRESH:Z

    .line 49
    .line 50
    invoke-interface/range {p3 .. p3}, Lcom/cloud/tmc/integration/structure/App;->getEngineProxy()Lcom/cloud/tmc/kernel/engine/IEngine;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-interface {v2}, Lcom/cloud/tmc/kernel/engine/IEngine;->getEngineRouter()Lcom/cloud/tmc/kernel/engine/EngineRouter;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-interface/range {p3 .. p3}, Lcom/cloud/tmc/integration/structure/App;->getEngineProxy()Lcom/cloud/tmc/kernel/engine/IEngine;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-interface {v3}, Lcom/cloud/tmc/kernel/engine/IEngine;->getWorkerId()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-interface {v2, v3}, Lcom/cloud/tmc/kernel/engine/EngineRouter;->getWorkerById(Ljava/lang/String;)Lcom/cloud/tmc/kernel/worker/JSI;

    .line 67
    .line 68
    .line 69
    move-result-object v8

    .line 70
    new-instance v6, Lcom/google/gson/JsonObject;

    .line 71
    .line 72
    invoke-direct {v6}, Lcom/google/gson/JsonObject;-><init>()V

    .line 73
    .line 74
    .line 75
    const-string v2, "homepageUrl"

    .line 76
    .line 77
    invoke-interface/range {p2 .. p2}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {v6, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-interface {v0, v1}, Lcom/cloud/tmc/integration/structure/App;->getPageByIndex(I)Lcom/cloud/tmc/integration/structure/Page;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-interface/range {p3 .. p3}, Lcom/cloud/tmc/kernel/node/Node;->getChildCount()I

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    if-lez v3, :cond_3

    .line 97
    .line 98
    :goto_0
    if-ge v1, v3, :cond_3

    .line 99
    .line 100
    invoke-interface {v0, v1}, Lcom/cloud/tmc/integration/structure/App;->getPageByIndex(I)Lcom/cloud/tmc/integration/structure/Page;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    if-eqz v4, :cond_2

    .line 109
    .line 110
    invoke-interface {v0, v1}, Lcom/cloud/tmc/integration/structure/App;->getPageByIndex(I)Lcom/cloud/tmc/integration/structure/Page;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    invoke-interface {v0, v4}, Lcom/cloud/tmc/integration/structure/App;->getPageType(Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    const/4 v7, 0x1

    .line 123
    if-ne v4, v7, :cond_2

    .line 124
    .line 125
    invoke-interface {v0, v1}, Lcom/cloud/tmc/integration/structure/App;->getPageByIndex(I)Lcom/cloud/tmc/integration/structure/Page;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    goto :goto_1

    .line 134
    :catchall_0
    move-exception v0

    .line 135
    move-object v9, p1

    .line 136
    goto/16 :goto_2

    .line 137
    .line 138
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_3
    :goto_1
    const-string v1, "homepageRenderId"

    .line 142
    .line 143
    invoke-virtual {v6, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    const-string v1, "appJson"

    .line 147
    .line 148
    new-instance v2, Lcom/google/gson/Gson;

    .line 149
    .line 150
    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 151
    .line 152
    .line 153
    iget-object v3, v5, Lcom/cloud/tmc/integration/structure/AppLoadResult;->appConfigModel:Lcom/cloud/tmc/integration/model/MiniAppConfigModel;

    .line 154
    .line 155
    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    invoke-virtual {v6, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    .line 161
    .line 162
    :try_start_1
    const-string v1, "miniappId"

    .line 163
    .line 164
    invoke-interface/range {p3 .. p3}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    invoke-virtual {v6, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    sget-object v1, Lcom/cloud/tmc/integration/utils/AppUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppUtils;

    .line 172
    .line 173
    invoke-interface/range {p3 .. p3}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/AppModel;->getMiniappSubtype()Ljava/lang/Integer;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    invoke-virtual {v1, v2}, Lcom/cloud/tmc/integration/utils/AppUtils;->checkUesCommonresApp(Ljava/lang/Integer;)Z

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    if-eqz v1, :cond_4

    .line 186
    .line 187
    const-string v1, "commonresId"

    .line 188
    .line 189
    invoke-interface/range {p3 .. p3}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/AppModel;->getTemplateMiniappId()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    invoke-virtual {v6, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 198
    .line 199
    .line 200
    :catchall_1
    :cond_4
    :try_start_2
    const-class v1, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 201
    .line 202
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 207
    .line 208
    invoke-interface {v1, v0}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->getEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 209
    .line 210
    .line 211
    move-result-object v9

    .line 212
    if-eqz v9, :cond_5

    .line 213
    .line 214
    const-string v10, "workerOnMessageReady"

    .line 215
    .line 216
    new-instance v11, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$1;

    .line 217
    .line 218
    move-object v1, v11

    .line 219
    move-object v2, p0

    .line 220
    move-object v3, v8

    .line 221
    move-object/from16 v4, p3

    .line 222
    .line 223
    move-object v5, v6

    .line 224
    move-object v6, v9

    .line 225
    move-object v7, v8

    .line 226
    invoke-direct/range {v1 .. v7}, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$1;-><init>(Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge;Lcom/cloud/tmc/kernel/worker/JSI;Lcom/cloud/tmc/integration/structure/App;Lcom/google/gson/JsonObject;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;Lcom/cloud/tmc/kernel/worker/JSI;)V

    .line 227
    .line 228
    .line 229
    invoke-interface {v9, v10, v11}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->register(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    .line 230
    .line 231
    .line 232
    :cond_5
    const-string v0, "100000"

    .line 233
    .line 234
    const-string v1, "https://100000.miniapp.transsion.com/master.js"

    .line 235
    .line 236
    invoke-interface {v8, v0, v1}, Lcom/cloud/tmc/kernel/worker/JSI;->loadJS(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    new-instance v0, Lcom/google/gson/JsonObject;

    .line 240
    .line 241
    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 242
    .line 243
    .line 244
    move-object v9, p1

    .line 245
    :try_start_3
    invoke-interface {p1, v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    .line 246
    .line 247
    .line 248
    invoke-interface {v8}, Lcom/cloud/tmc/kernel/worker/JSI;->setRenderReady()V

    .line 249
    .line 250
    .line 251
    goto :goto_3

    .line 252
    :catchall_2
    move-exception v0

    .line 253
    goto :goto_2

    .line 254
    :cond_6
    move-object v9, p1

    .line 255
    const-class v1, Lcom/cloud/tmc/worker/IWorkerManagerFactory;

    .line 256
    .line 257
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    move-object v10, v1

    .line 262
    check-cast v10, Lcom/cloud/tmc/worker/IWorkerManagerFactory;

    .line 263
    .line 264
    const-string v11, ""

    .line 265
    .line 266
    invoke-static {}, Lcom/cloud/tmc/integration/core/TmcEngineImpl;->generateWorkerId()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v12

    .line 270
    new-instance v13, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;

    .line 271
    .line 272
    move-object v1, v13

    .line 273
    move-object v2, p0

    .line 274
    move-object/from16 v3, p3

    .line 275
    .line 276
    move-object/from16 v4, p2

    .line 277
    .line 278
    move-object v6, p1

    .line 279
    invoke-direct/range {v1 .. v6}, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;-><init>(Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge;Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/integration/structure/Page;Lcom/cloud/tmc/integration/structure/AppLoadResult;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 280
    .line 281
    .line 282
    move-object v2, v10

    .line 283
    move-object v3, v8

    .line 284
    move-object v4, v7

    .line 285
    move-object/from16 v5, p2

    .line 286
    .line 287
    move-object v6, v11

    .line 288
    move-object v7, v12

    .line 289
    move-object v8, v13

    .line 290
    invoke-interface/range {v2 .. v8}, Lcom/cloud/tmc/worker/IWorkerManagerFactory;->createWorker(Lcom/cloud/tmc/kernel/engine/IEngine;Landroid/content/Context;Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/worker/IWorkerManagerFactory$IWorkerListener;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 291
    .line 292
    .line 293
    goto :goto_3

    .line 294
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 295
    .line 296
    .line 297
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 298
    .line 299
    .line 300
    :goto_3
    return-void
.end method
