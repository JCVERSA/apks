.class public Lcom/cloud/tmc/integration/MsgDispatcher;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/bridge/IMsgDispatcher;


# static fields
.field private static final TAG:Ljava/lang/String; = "MsgDispatcher"


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

.method public static synthetic a(Lcom/cloud/tmc/integration/structure/App;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/integration/MsgDispatcher;->lambda$checkShowPermissionDialog$0(Lcom/cloud/tmc/integration/structure/App;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic b(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/integration/MsgDispatcher;->checkShowPermissionDialog(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static checkShowPermissionDialog(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/App;->getInterectCallbackId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    invoke-interface {p0, p1}, Lcom/cloud/tmc/integration/structure/App;->updateInterectCallbackId(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    new-instance p1, Lcom/cloud/tmc/integration/c;

    .line 18
    .line 19
    invoke-direct {p1, p0}, Lcom/cloud/tmc/integration/c;-><init>(Lcom/cloud/tmc/integration/structure/App;)V

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->runOnMain(Ljava/lang/Runnable;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method private consumeTime(Ljava/lang/Object;Lcom/cloud/tmc/kernel/render/IRender;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/cloud/tmc/kernel/render/IRender;",
            ")V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/cloud/tmc/integration/structure/App;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/node/Node;->bubbleFindNode(Ljava/lang/Class;)Lcom/cloud/tmc/kernel/node/Node;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/cloud/tmc/integration/structure/App;

    .line 12
    .line 13
    check-cast p1, Lcom/google/gson/internal/LinkedTreeMap;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$ConsumeTimeDataJson;->parse(Lcom/google/gson/internal/LinkedTreeMap;)Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$ConsumeTimeDataJson;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-class v1, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 20
    .line 21
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 26
    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    check-cast p2, Lcom/cloud/tmc/integration/structure/Page;

    .line 37
    .line 38
    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string p2, ""

    .line 46
    .line 47
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-interface {v1, p2}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->createEvent(Ljava/lang/String;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    new-instance v2, Ljava/util/HashMap;

    .line 59
    .line 60
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 61
    .line 62
    .line 63
    const-string v3, "eventData"

    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$ConsumeTimeDataJson;->getDataJson()Ljava/util/HashMap;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    const-string v4, "time"

    .line 70
    .line 71
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    invoke-interface {p2, v2}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;->setData(Ljava/util/Map;)V

    .line 79
    .line 80
    .line 81
    invoke-interface {v1, v0}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->getEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    if-eqz p1, :cond_0

    .line 86
    .line 87
    const-string v0, "consumeTime"

    .line 88
    .line 89
    invoke-interface {p1, v0, p2}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->postEvent(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :catch_0
    const-string p1, "miniapp"

    .line 94
    .line 95
    const-string p2, "parse consumeTime from dataJson fail"

    .line 96
    .line 97
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/utils/TraceLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    :cond_0
    :goto_0
    return-void
.end method

.method private getActiveRenderId(Lcom/cloud/tmc/kernel/engine/EngineRouter;)Ljava/lang/String;
    .locals 2
    .param p1    # Lcom/cloud/tmc/kernel/engine/EngineRouter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/engine/EngineRouter;->getTopRender()Lcom/cloud/tmc/kernel/render/IRender;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, ""

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-class v1, Lcom/cloud/tmc/integration/structure/App;

    .line 15
    .line 16
    invoke-interface {p1, v1}, Lcom/cloud/tmc/kernel/node/Node;->bubbleFindNode(Ljava/lang/Class;)Lcom/cloud/tmc/kernel/node/Node;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/cloud/tmc/integration/structure/App;

    .line 21
    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_1
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getActivePage()Lcom/cloud/tmc/integration/structure/Page;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    if-eqz p1, :cond_3

    .line 30
    .line 31
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    if-nez v1, :cond_2

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getRenderId()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    return-object p1

    .line 47
    :cond_3
    :goto_0
    return-object v0
.end method

.method private handleAsyncMsgFromWorker(Lcom/cloud/tmc/kernel/worker/JSI;Lcom/google/gson/JsonObject;)Z
    .locals 18

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "handleJSMsgFroworker msg = "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "MsgDispatcher"

    .line 23
    .line 24
    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    const-string v0, "handleAsyncMsgFromWorker error !!! (worker is null)"

    .line 31
    .line 32
    invoke-static {v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return v1

    .line 36
    :cond_0
    const-class v3, Lcom/cloud/tmc/kernel/engine/EngineRouterManager;

    .line 37
    .line 38
    invoke-static {v3}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Lcom/cloud/tmc/kernel/engine/EngineRouterManager;

    .line 43
    .line 44
    invoke-interface/range {p1 .. p1}, Lcom/cloud/tmc/kernel/worker/JSI;->getWorkerId()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-interface {v3, v4}, Lcom/cloud/tmc/kernel/engine/EngineRouterManager;->getByWorkerId(Ljava/lang/String;)Lcom/cloud/tmc/kernel/engine/EngineRouter;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    if-nez v3, :cond_1

    .line 53
    .line 54
    const-string v0, "handleAsyncMsgFromWorker error !!! (engineRouter is null)"

    .line 55
    .line 56
    invoke-static {v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return v1

    .line 60
    :cond_1
    sget-object v4, Lcom/cloud/tmc/integration/utils/JsonUtil;->INSTANCE:Lcom/cloud/tmc/integration/utils/JsonUtil;

    .line 61
    .line 62
    invoke-virtual/range {p2 .. p2}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    const-class v7, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;

    .line 67
    .line 68
    invoke-virtual {v4, v5, v7}, Lcom/cloud/tmc/integration/utils/JsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    check-cast v4, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;

    .line 73
    .line 74
    invoke-interface/range {p1 .. p1}, Lcom/cloud/tmc/kernel/worker/JSI;->getWorkerId()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    const-string v7, "eventData"

    .line 79
    .line 80
    const-string v8, "native"

    .line 81
    .line 82
    const-string v9, "DispatchEvent"

    .line 83
    .line 84
    const-class v10, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 85
    .line 86
    const/4 v11, 0x1

    .line 87
    if-eqz v5, :cond_4

    .line 88
    .line 89
    invoke-interface/range {p1 .. p1}, Lcom/cloud/tmc/kernel/worker/JSI;->getWorkerId()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    const-string v12, "warmup_worker_id_"

    .line 94
    .line 95
    invoke-virtual {v5, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    if-eqz v5, :cond_4

    .line 100
    .line 101
    invoke-virtual {v4}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->getAbilityName()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    if-eqz v5, :cond_4

    .line 110
    .line 111
    invoke-virtual {v4}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->getTarget()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v5

    .line 119
    if-eqz v5, :cond_4

    .line 120
    .line 121
    const-string v0, "handleAsyncMsgFromWorker \u9884\u70ed\u6a21\u5f0f"

    .line 122
    .line 123
    invoke-static {v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v4}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->getDataJson()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    check-cast v0, Lcom/google/gson/internal/LinkedTreeMap;

    .line 131
    .line 132
    invoke-static {v0}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$DispatchEventDataJson;->parse(Lcom/google/gson/internal/LinkedTreeMap;)Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$DispatchEventDataJson;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-virtual {v0}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$DispatchEventDataJson;->getEventName()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-static {v10}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    check-cast v3, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 145
    .line 146
    invoke-interface {v3, v2}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->createEvent(Ljava/lang/String;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    new-instance v5, Ljava/util/HashMap;

    .line 151
    .line 152
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$DispatchEventDataJson;->getDataJson()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-virtual {v5, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    invoke-interface {v4, v5}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;->setData(Ljava/util/Map;)V

    .line 163
    .line 164
    .line 165
    const-class v0, Lcom/cloud/tmc/integration/structure/WarmupNode;

    .line 166
    .line 167
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    check-cast v0, Lcom/cloud/tmc/integration/structure/WarmupNode;

    .line 172
    .line 173
    invoke-interface/range {p1 .. p1}, Lcom/cloud/tmc/kernel/worker/JSI;->getWorkerId()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v5

    .line 177
    invoke-interface {v0, v5}, Lcom/cloud/tmc/integration/structure/WarmupNode;->getNode(Ljava/lang/String;)Lcom/cloud/tmc/kernel/node/Node;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    if-nez v0, :cond_2

    .line 182
    .line 183
    return v1

    .line 184
    :cond_2
    invoke-interface {v3, v0}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->getEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    if-eqz v0, :cond_3

    .line 189
    .line 190
    invoke-interface {v0, v2, v4}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->postEvent(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)V

    .line 191
    .line 192
    .line 193
    :cond_3
    return v11

    .line 194
    :cond_4
    invoke-virtual {v4}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->getRenderId()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v5

    .line 198
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 199
    .line 200
    .line 201
    move-result v5

    .line 202
    if-nez v5, :cond_5

    .line 203
    .line 204
    invoke-virtual {v4}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->getRenderId()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v5

    .line 208
    goto :goto_0

    .line 209
    :cond_5
    invoke-direct {v6, v3}, Lcom/cloud/tmc/integration/MsgDispatcher;->getActiveRenderId(Lcom/cloud/tmc/kernel/engine/EngineRouter;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v5

    .line 213
    :goto_0
    invoke-interface {v3, v5}, Lcom/cloud/tmc/kernel/engine/EngineRouter;->getRenderById(Ljava/lang/String;)Lcom/cloud/tmc/kernel/render/IRender;

    .line 214
    .line 215
    .line 216
    move-result-object v3

    .line 217
    const-string v5, "Api"

    .line 218
    .line 219
    const-string v12, ""

    .line 220
    .line 221
    if-nez v3, :cond_c

    .line 222
    .line 223
    const-string v0, "handleMsgFromJs: \u627e\u4e0d\u5230 render\uff0c\u4f7f\u7528 worker \u515c\u5e95\u5206\u53d1"

    .line 224
    .line 225
    invoke-static {v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    invoke-interface/range {p1 .. p1}, Lcom/cloud/tmc/kernel/worker/JSI;->getNode()Lcom/cloud/tmc/kernel/node/Node;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    instance-of v0, v0, Lcom/cloud/tmc/integration/structure/App;

    .line 233
    .line 234
    if-eqz v0, :cond_6

    .line 235
    .line 236
    invoke-interface/range {p1 .. p1}, Lcom/cloud/tmc/kernel/worker/JSI;->getNode()Lcom/cloud/tmc/kernel/node/Node;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    check-cast v0, Lcom/cloud/tmc/integration/structure/App;

    .line 241
    .line 242
    move-object v7, v0

    .line 243
    goto :goto_1

    .line 244
    :cond_6
    const/4 v7, 0x0

    .line 245
    :goto_1
    if-nez v7, :cond_7

    .line 246
    .line 247
    const-string v0, "handleMsgFromJs: render is null, app is null, jsapi \u65e0\u6cd5\u8c03\u7528"

    .line 248
    .line 249
    invoke-static {v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    return v1

    .line 253
    :cond_7
    invoke-virtual {v4}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->getAbilityName()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    move-result v0

    .line 261
    if-eqz v0, :cond_b

    .line 262
    .line 263
    invoke-virtual {v4}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->getDataJson()Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    check-cast v0, Lcom/google/gson/internal/LinkedTreeMap;

    .line 268
    .line 269
    invoke-static {v0}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$ApiDataJson;->parse(Lcom/google/gson/internal/LinkedTreeMap;)Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$ApiDataJson;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    invoke-virtual {v0}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$ApiDataJson;->getMethodName()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v2

    .line 277
    invoke-virtual {v0}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$ApiDataJson;->getArgs()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 282
    .line 283
    .line 284
    move-result v3

    .line 285
    if-nez v3, :cond_8

    .line 286
    .line 287
    invoke-static {v0}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 292
    .line 293
    .line 294
    move-result-object v13

    .line 295
    goto :goto_2

    .line 296
    :cond_8
    const/4 v13, 0x0

    .line 297
    :goto_2
    invoke-virtual {v4}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->getCallbackId()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v3

    .line 301
    new-instance v0, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;

    .line 302
    .line 303
    invoke-direct {v0}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;-><init>()V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v0, v2}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;->name(Ljava/lang/String;)Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    invoke-virtual {v0, v13}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;->params(Lcom/google/gson/JsonObject;)Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    invoke-virtual {v0, v7}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;->node(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    invoke-virtual {v0, v3}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;->callbackId(Ljava/lang/String;)Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    new-instance v4, Ljava/lang/StringBuilder;

    .line 323
    .line 324
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 331
    .line 332
    .line 333
    move-result-wide v8

    .line 334
    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v4

    .line 341
    invoke-virtual {v0, v4}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;->id(Ljava/lang/String;)Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    invoke-virtual {v0}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;->build()Lcom/cloud/tmc/kernel/bridge/NativeCallContext;

    .line 346
    .line 347
    .line 348
    move-result-object v8

    .line 349
    invoke-interface {v7}, Lcom/cloud/tmc/integration/structure/App;->getEngineProxy()Lcom/cloud/tmc/kernel/engine/IEngine;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    if-nez v0, :cond_9

    .line 354
    .line 355
    return v1

    .line 356
    :cond_9
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/engine/IEngine;->getBridge()Lcom/cloud/tmc/kernel/bridge/NativeBridge;

    .line 357
    .line 358
    .line 359
    move-result-object v9

    .line 360
    if-nez v9, :cond_a

    .line 361
    .line 362
    return v1

    .line 363
    :cond_a
    new-instance v10, Lcom/cloud/tmc/integration/MsgDispatcher$5;

    .line 364
    .line 365
    move-object v0, v10

    .line 366
    move-object/from16 v1, p0

    .line 367
    .line 368
    move-object/from16 v4, p1

    .line 369
    .line 370
    move-object v5, v7

    .line 371
    invoke-direct/range {v0 .. v5}, Lcom/cloud/tmc/integration/MsgDispatcher$5;-><init>(Lcom/cloud/tmc/integration/MsgDispatcher;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/worker/JSI;Lcom/cloud/tmc/integration/structure/App;)V

    .line 372
    .line 373
    .line 374
    invoke-interface {v9, v8, v10}, Lcom/cloud/tmc/kernel/bridge/NativeBridge;->sendToNative(Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/bridge/SendToNativeCallback;)Z

    .line 375
    .line 376
    .line 377
    return v11

    .line 378
    :cond_b
    return v1

    .line 379
    :cond_c
    invoke-interface {v3}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    .line 380
    .line 381
    .line 382
    move-result-object v2

    .line 383
    const-class v14, Lcom/cloud/tmc/integration/structure/App;

    .line 384
    .line 385
    invoke-interface {v2, v14}, Lcom/cloud/tmc/kernel/node/Node;->bubbleFindNode(Ljava/lang/Class;)Lcom/cloud/tmc/kernel/node/Node;

    .line 386
    .line 387
    .line 388
    move-result-object v2

    .line 389
    move-object v14, v2

    .line 390
    check-cast v14, Lcom/cloud/tmc/integration/structure/App;

    .line 391
    .line 392
    invoke-virtual {v4}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->getDataJson()Ljava/lang/Object;

    .line 393
    .line 394
    .line 395
    move-result-object v2

    .line 396
    invoke-direct {v6, v2, v3}, Lcom/cloud/tmc/integration/MsgDispatcher;->consumeTime(Ljava/lang/Object;Lcom/cloud/tmc/kernel/render/IRender;)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {v4}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->getAbilityName()Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v2

    .line 403
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 404
    .line 405
    .line 406
    move-result v2

    .line 407
    if-eqz v2, :cond_e

    .line 408
    .line 409
    invoke-virtual {v4}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->getDataJson()Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    move-result-object v0

    .line 413
    check-cast v0, Lcom/google/gson/internal/LinkedTreeMap;

    .line 414
    .line 415
    invoke-static {v0}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$ApiDataJson;->parse(Lcom/google/gson/internal/LinkedTreeMap;)Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$ApiDataJson;

    .line 416
    .line 417
    .line 418
    move-result-object v0

    .line 419
    invoke-virtual {v0}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$ApiDataJson;->getMethodName()Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v2

    .line 423
    invoke-virtual {v0}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$ApiDataJson;->getArgs()Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v0

    .line 427
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 428
    .line 429
    .line 430
    move-result v1

    .line 431
    if-nez v1, :cond_d

    .line 432
    .line 433
    invoke-static {v0}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 434
    .line 435
    .line 436
    move-result-object v0

    .line 437
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 438
    .line 439
    .line 440
    move-result-object v13

    .line 441
    goto :goto_3

    .line 442
    :cond_d
    const/4 v13, 0x0

    .line 443
    :goto_3
    invoke-virtual {v4}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->getCallbackId()Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v4

    .line 447
    new-instance v0, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;

    .line 448
    .line 449
    invoke-direct {v0}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;-><init>()V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v0, v2}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;->name(Ljava/lang/String;)Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;

    .line 453
    .line 454
    .line 455
    move-result-object v0

    .line 456
    invoke-virtual {v0, v13}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;->params(Lcom/google/gson/JsonObject;)Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;

    .line 457
    .line 458
    .line 459
    move-result-object v0

    .line 460
    invoke-interface {v3}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    .line 461
    .line 462
    .line 463
    move-result-object v1

    .line 464
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;->node(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;

    .line 465
    .line 466
    .line 467
    move-result-object v0

    .line 468
    invoke-virtual {v0, v3}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;->render(Lcom/cloud/tmc/kernel/render/IRender;)Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;

    .line 469
    .line 470
    .line 471
    move-result-object v0

    .line 472
    invoke-virtual {v0, v4}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;->callbackId(Ljava/lang/String;)Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;

    .line 473
    .line 474
    .line 475
    move-result-object v0

    .line 476
    new-instance v1, Ljava/lang/StringBuilder;

    .line 477
    .line 478
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 479
    .line 480
    .line 481
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    .line 483
    .line 484
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 485
    .line 486
    .line 487
    move-result-wide v7

    .line 488
    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 489
    .line 490
    .line 491
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object v1

    .line 495
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;->id(Ljava/lang/String;)Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;

    .line 496
    .line 497
    .line 498
    move-result-object v0

    .line 499
    invoke-virtual {v0}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;->build()Lcom/cloud/tmc/kernel/bridge/NativeCallContext;

    .line 500
    .line 501
    .line 502
    move-result-object v7

    .line 503
    invoke-interface {v3}, Lcom/cloud/tmc/kernel/render/IRender;->getEngine()Lcom/cloud/tmc/kernel/engine/IEngine;

    .line 504
    .line 505
    .line 506
    move-result-object v0

    .line 507
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/engine/IEngine;->getBridge()Lcom/cloud/tmc/kernel/bridge/NativeBridge;

    .line 508
    .line 509
    .line 510
    move-result-object v8

    .line 511
    new-instance v9, Lcom/cloud/tmc/integration/MsgDispatcher$6;

    .line 512
    .line 513
    move-object v0, v9

    .line 514
    move-object/from16 v1, p0

    .line 515
    .line 516
    move-object v3, v4

    .line 517
    move-object/from16 v4, p1

    .line 518
    .line 519
    move-object v5, v14

    .line 520
    invoke-direct/range {v0 .. v5}, Lcom/cloud/tmc/integration/MsgDispatcher$6;-><init>(Lcom/cloud/tmc/integration/MsgDispatcher;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/worker/JSI;Lcom/cloud/tmc/integration/structure/App;)V

    .line 521
    .line 522
    .line 523
    invoke-interface {v8, v7, v9}, Lcom/cloud/tmc/kernel/bridge/NativeBridge;->sendToNative(Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/bridge/SendToNativeCallback;)Z

    .line 524
    .line 525
    .line 526
    return v11

    .line 527
    :cond_e
    invoke-virtual {v4}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->getAbilityName()Ljava/lang/String;

    .line 528
    .line 529
    .line 530
    move-result-object v2

    .line 531
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 532
    .line 533
    .line 534
    move-result v2

    .line 535
    if-eqz v2, :cond_11

    .line 536
    .line 537
    invoke-virtual {v4}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->getTarget()Ljava/lang/String;

    .line 538
    .line 539
    .line 540
    move-result-object v2

    .line 541
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 542
    .line 543
    .line 544
    move-result v2

    .line 545
    if-eqz v2, :cond_11

    .line 546
    .line 547
    invoke-virtual {v4}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->getDataJson()Ljava/lang/Object;

    .line 548
    .line 549
    .line 550
    move-result-object v0

    .line 551
    check-cast v0, Lcom/google/gson/internal/LinkedTreeMap;

    .line 552
    .line 553
    invoke-static {v0}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$DispatchEventDataJson;->parse(Lcom/google/gson/internal/LinkedTreeMap;)Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$DispatchEventDataJson;

    .line 554
    .line 555
    .line 556
    move-result-object v0

    .line 557
    invoke-virtual {v0}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$DispatchEventDataJson;->getEventName()Ljava/lang/String;

    .line 558
    .line 559
    .line 560
    move-result-object v2

    .line 561
    invoke-static {v10}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 562
    .line 563
    .line 564
    move-result-object v3

    .line 565
    check-cast v3, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 566
    .line 567
    invoke-interface {v3, v2}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->createEvent(Ljava/lang/String;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;

    .line 568
    .line 569
    .line 570
    move-result-object v4

    .line 571
    new-instance v5, Ljava/util/HashMap;

    .line 572
    .line 573
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 574
    .line 575
    .line 576
    invoke-virtual {v0}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$DispatchEventDataJson;->getDataJson()Ljava/lang/String;

    .line 577
    .line 578
    .line 579
    move-result-object v0

    .line 580
    invoke-virtual {v5, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    .line 582
    .line 583
    invoke-interface {v4, v5}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;->setData(Ljava/util/Map;)V

    .line 584
    .line 585
    .line 586
    invoke-interface/range {p1 .. p1}, Lcom/cloud/tmc/kernel/worker/JSI;->getNode()Lcom/cloud/tmc/kernel/node/Node;

    .line 587
    .line 588
    .line 589
    move-result-object v0

    .line 590
    instance-of v0, v0, Lcom/cloud/tmc/integration/structure/AppManager;

    .line 591
    .line 592
    if-eqz v0, :cond_f

    .line 593
    .line 594
    invoke-interface/range {p1 .. p1}, Lcom/cloud/tmc/kernel/worker/JSI;->getNode()Lcom/cloud/tmc/kernel/node/Node;

    .line 595
    .line 596
    .line 597
    move-result-object v14

    .line 598
    :cond_f
    invoke-interface {v3, v14}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->getEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 599
    .line 600
    .line 601
    move-result-object v0

    .line 602
    if-eqz v0, :cond_10

    .line 603
    .line 604
    invoke-interface {v0, v2, v4}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->postEvent(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)V

    .line 605
    .line 606
    .line 607
    :cond_10
    move v0, v1

    .line 608
    goto/16 :goto_b

    .line 609
    .line 610
    :cond_11
    const-string v2, "render"

    .line 611
    .line 612
    invoke-virtual {v4}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->getTarget()Ljava/lang/String;

    .line 613
    .line 614
    .line 615
    move-result-object v5

    .line 616
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 617
    .line 618
    .line 619
    move-result v2

    .line 620
    if-eqz v2, :cond_10

    .line 621
    .line 622
    invoke-virtual {v4}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->getDataJson()Ljava/lang/Object;

    .line 623
    .line 624
    .line 625
    move-result-object v2

    .line 626
    check-cast v2, Lcom/google/gson/internal/LinkedTreeMap;

    .line 627
    .line 628
    invoke-static {v2}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$DispatchEventDataJson;->parse(Lcom/google/gson/internal/LinkedTreeMap;)Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$DispatchEventDataJson;

    .line 629
    .line 630
    .line 631
    move-result-object v2

    .line 632
    invoke-virtual {v2}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$DispatchEventDataJson;->getEventName()Ljava/lang/String;

    .line 633
    .line 634
    .line 635
    move-result-object v2

    .line 636
    const-string v5, "onPageReady"

    .line 637
    .line 638
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 639
    .line 640
    .line 641
    move-result v2

    .line 642
    if-eqz v2, :cond_1a

    .line 643
    .line 644
    const-class v2, Lcom/cloud/tmc/integration/performanceanalyse/screen/IScreenInspectProxy;

    .line 645
    .line 646
    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 647
    .line 648
    .line 649
    move-result-object v2

    .line 650
    check-cast v2, Lcom/cloud/tmc/integration/performanceanalyse/screen/IScreenInspectProxy;

    .line 651
    .line 652
    invoke-interface {v3}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    .line 653
    .line 654
    .line 655
    move-result-object v7

    .line 656
    check-cast v7, Lcom/cloud/tmc/integration/structure/Page;

    .line 657
    .line 658
    invoke-interface {v7}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    .line 659
    .line 660
    .line 661
    move-result-object v7

    .line 662
    invoke-interface {v2, v14, v7}, Lcom/cloud/tmc/integration/performanceanalyse/screen/IScreenInspectProxy;->checkNow(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)V

    .line 663
    .line 664
    .line 665
    if-eqz v14, :cond_12

    .line 666
    .line 667
    invoke-interface {v14, v11}, Lcom/cloud/tmc/integration/structure/App;->setMiniAppLoadStatus(Z)V

    .line 668
    .line 669
    .line 670
    invoke-interface {v14}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    .line 671
    .line 672
    .line 673
    move-result-object v2

    .line 674
    if-eqz v2, :cond_12

    .line 675
    .line 676
    invoke-interface {v14}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    .line 677
    .line 678
    .line 679
    move-result-object v2

    .line 680
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    .line 681
    .line 682
    .line 683
    move-result-object v2

    .line 684
    if-eqz v2, :cond_12

    .line 685
    .line 686
    sget-object v2, Lcom/cloud/tmc/integration/utils/PrivacyUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/PrivacyUtils;

    .line 687
    .line 688
    invoke-interface {v14}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    .line 689
    .line 690
    .line 691
    move-result-object v7

    .line 692
    invoke-interface {v7}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    .line 693
    .line 694
    .line 695
    move-result-object v7

    .line 696
    invoke-interface {v14}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 697
    .line 698
    .line 699
    move-result-object v8

    .line 700
    invoke-virtual {v2, v7, v8}, Lcom/cloud/tmc/integration/utils/PrivacyUtils;->updateNewUserStatus(Landroid/content/Context;Ljava/lang/String;)V

    .line 701
    .line 702
    .line 703
    :cond_12
    invoke-static {v10}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 704
    .line 705
    .line 706
    move-result-object v2

    .line 707
    check-cast v2, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 708
    .line 709
    invoke-interface {v3}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    .line 710
    .line 711
    .line 712
    move-result-object v7

    .line 713
    check-cast v7, Lcom/cloud/tmc/integration/structure/Page;

    .line 714
    .line 715
    invoke-interface {v2, v7}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->getEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 716
    .line 717
    .line 718
    move-result-object v2

    .line 719
    if-eqz v2, :cond_13

    .line 720
    .line 721
    new-instance v7, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEvent;

    .line 722
    .line 723
    invoke-direct {v7, v5}, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEvent;-><init>(Ljava/lang/String;)V

    .line 724
    .line 725
    .line 726
    invoke-interface {v2, v5, v7}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->postEvent(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)V

    .line 727
    .line 728
    .line 729
    :cond_13
    new-instance v2, Landroid/os/Bundle;

    .line 730
    .line 731
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 732
    .line 733
    .line 734
    new-instance v5, Ljava/lang/StringBuilder;

    .line 735
    .line 736
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 737
    .line 738
    .line 739
    invoke-interface/range {p1 .. p1}, Lcom/cloud/tmc/kernel/worker/JSI;->fromWarmup()Ljava/lang/Boolean;

    .line 740
    .line 741
    .line 742
    move-result-object v7

    .line 743
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 744
    .line 745
    .line 746
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    .line 748
    .line 749
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 750
    .line 751
    .line 752
    move-result-object v5

    .line 753
    const-string v7, "workerFromWarmup"

    .line 754
    .line 755
    invoke-virtual {v2, v7, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    .line 757
    .line 758
    new-instance v5, Ljava/lang/StringBuilder;

    .line 759
    .line 760
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 761
    .line 762
    .line 763
    invoke-interface/range {p1 .. p1}, Lcom/cloud/tmc/kernel/worker/JSI;->getWarmupChannel()I

    .line 764
    .line 765
    .line 766
    move-result v8

    .line 767
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 768
    .line 769
    .line 770
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 771
    .line 772
    .line 773
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 774
    .line 775
    .line 776
    move-result-object v5

    .line 777
    const-string v8, "workerFromWarmupChannel"

    .line 778
    .line 779
    invoke-virtual {v2, v8, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    .line 781
    .line 782
    new-instance v5, Ljava/lang/StringBuilder;

    .line 783
    .line 784
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 785
    .line 786
    .line 787
    invoke-interface {v3}, Lcom/cloud/tmc/kernel/render/IRender;->fromWarmup()Z

    .line 788
    .line 789
    .line 790
    move-result v9

    .line 791
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 792
    .line 793
    .line 794
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 795
    .line 796
    .line 797
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 798
    .line 799
    .line 800
    move-result-object v5

    .line 801
    const-string v9, "renderFromWarmup"

    .line 802
    .line 803
    invoke-virtual {v2, v9, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    .line 805
    .line 806
    new-instance v5, Ljava/lang/StringBuilder;

    .line 807
    .line 808
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 809
    .line 810
    .line 811
    invoke-interface {v3}, Lcom/cloud/tmc/kernel/render/IRender;->getWarmupChannel()I

    .line 812
    .line 813
    .line 814
    move-result v10

    .line 815
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 816
    .line 817
    .line 818
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 819
    .line 820
    .line 821
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 822
    .line 823
    .line 824
    move-result-object v5

    .line 825
    const-string v10, "renderFromWarmupChannel"

    .line 826
    .line 827
    invoke-virtual {v2, v10, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    .line 829
    .line 830
    invoke-interface {v3}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    .line 831
    .line 832
    .line 833
    move-result-object v5

    .line 834
    check-cast v5, Lcom/cloud/tmc/integration/structure/Page;

    .line 835
    .line 836
    invoke-interface {v5}, Lcom/cloud/tmc/integration/structure/Page;->getPageRandomIdByGAId()Ljava/lang/String;

    .line 837
    .line 838
    .line 839
    move-result-object v5

    .line 840
    const-string v15, "pageRandomId"

    .line 841
    .line 842
    invoke-virtual {v2, v15, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    .line 844
    .line 845
    new-instance v5, Landroid/os/Bundle;

    .line 846
    .line 847
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 848
    .line 849
    .line 850
    sget-object v11, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TYPE:Ljava/lang/String;

    .line 851
    .line 852
    const-string v13, "page"

    .line 853
    .line 854
    invoke-virtual {v5, v11, v13}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    .line 856
    .line 857
    sget-object v11, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_ID:Ljava/lang/String;

    .line 858
    .line 859
    invoke-interface {v3}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    .line 860
    .line 861
    .line 862
    move-result-object v13

    .line 863
    check-cast v13, Lcom/cloud/tmc/integration/structure/Page;

    .line 864
    .line 865
    invoke-interface {v13}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 866
    .line 867
    .line 868
    move-result-object v13

    .line 869
    invoke-interface {v13}, Lcom/cloud/tmc/integration/structure/App;->getStartParams()Landroid/os/Bundle;

    .line 870
    .line 871
    .line 872
    move-result-object v13

    .line 873
    const-string v1, "uniqueChainID"

    .line 874
    .line 875
    const-string v6, "-1"

    .line 876
    .line 877
    invoke-virtual {v13, v1, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 878
    .line 879
    .line 880
    move-result-object v13

    .line 881
    invoke-virtual {v5, v11, v13}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    .line 883
    .line 884
    sget-object v11, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    .line 885
    .line 886
    invoke-interface {v3}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    .line 887
    .line 888
    .line 889
    move-result-object v13

    .line 890
    check-cast v13, Lcom/cloud/tmc/integration/structure/Page;

    .line 891
    .line 892
    invoke-interface {v13}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    .line 893
    .line 894
    .line 895
    move-result-object v13

    .line 896
    invoke-virtual {v5, v11, v13}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    .line 898
    .line 899
    invoke-virtual {v5, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 900
    .line 901
    .line 902
    const-class v11, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 903
    .line 904
    invoke-static {v11}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 905
    .line 906
    .line 907
    move-result-object v13

    .line 908
    check-cast v13, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 909
    .line 910
    if-nez v14, :cond_14

    .line 911
    .line 912
    move-object/from16 v16, v4

    .line 913
    .line 914
    const/4 v0, 0x0

    .line 915
    goto :goto_4

    .line 916
    :cond_14
    invoke-interface {v14}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 917
    .line 918
    .line 919
    move-result-object v16

    .line 920
    move-object/from16 v0, v16

    .line 921
    .line 922
    move-object/from16 v16, v4

    .line 923
    .line 924
    :goto_4
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_RENDER_T1:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 925
    .line 926
    move-object/from16 v17, v15

    .line 927
    .line 928
    const-string v15, "\u9875\u9762\u6253\u5f00"

    .line 929
    .line 930
    invoke-interface {v13, v0, v4, v15, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 931
    .line 932
    .line 933
    invoke-static {v11}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 934
    .line 935
    .line 936
    move-result-object v0

    .line 937
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 938
    .line 939
    if-nez v14, :cond_15

    .line 940
    .line 941
    const/4 v4, 0x0

    .line 942
    goto :goto_5

    .line 943
    :cond_15
    invoke-interface {v14}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 944
    .line 945
    .line 946
    move-result-object v4

    .line 947
    :goto_5
    sget-object v13, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_CHAIN_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 948
    .line 949
    sget-object v15, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->DrawView:Ljava/lang/String;

    .line 950
    .line 951
    invoke-interface {v0, v4, v13, v15, v5}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 952
    .line 953
    .line 954
    const-class v0, Lcom/cloud/tmc/integration/proxy/IUpdateLoadingStepProxy;

    .line 955
    .line 956
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 957
    .line 958
    .line 959
    move-result-object v0

    .line 960
    check-cast v0, Lcom/cloud/tmc/integration/proxy/IUpdateLoadingStepProxy;

    .line 961
    .line 962
    invoke-interface {v3}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    .line 963
    .line 964
    .line 965
    move-result-object v4

    .line 966
    check-cast v4, Lcom/cloud/tmc/integration/structure/Page;

    .line 967
    .line 968
    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 969
    .line 970
    .line 971
    move-result-object v4

    .line 972
    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 973
    .line 974
    .line 975
    move-result-object v4

    .line 976
    sget-object v15, Lcom/cloud/tmc/integration/activity/LoadStepAction;->STEP_FINISH_MINIAPP_LOAD:Lcom/cloud/tmc/integration/activity/LoadStepAction;

    .line 977
    .line 978
    invoke-interface {v0, v4, v15}, Lcom/cloud/tmc/integration/proxy/IUpdateLoadingStepProxy;->notifyUpdateLoadingStep(Ljava/lang/String;Lcom/cloud/tmc/integration/activity/LoadStepAction;)V

    .line 979
    .line 980
    .line 981
    invoke-interface {v3}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    .line 982
    .line 983
    .line 984
    move-result-object v0

    .line 985
    check-cast v0, Lcom/cloud/tmc/integration/structure/Page;

    .line 986
    .line 987
    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/TrackPointUtils;->pageRouteTrackEnd(Lcom/cloud/tmc/integration/structure/Page;)V

    .line 988
    .line 989
    .line 990
    invoke-static {v11}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 991
    .line 992
    .line 993
    move-result-object v0

    .line 994
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 995
    .line 996
    if-nez v14, :cond_16

    .line 997
    .line 998
    const/4 v4, 0x0

    .line 999
    goto :goto_6

    .line 1000
    :cond_16
    invoke-interface {v14}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v4

    .line 1004
    :goto_6
    sget-object v15, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->page:Ljava/lang/String;

    .line 1005
    .line 1006
    invoke-interface {v0, v4, v13, v15, v5}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1007
    .line 1008
    .line 1009
    new-instance v0, Landroid/os/Bundle;

    .line 1010
    .line 1011
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1012
    .line 1013
    .line 1014
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TYPE:Ljava/lang/String;

    .line 1015
    .line 1016
    const-string v5, "app"

    .line 1017
    .line 1018
    invoke-virtual {v0, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    .line 1020
    .line 1021
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_ID:Ljava/lang/String;

    .line 1022
    .line 1023
    invoke-interface {v3}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    .line 1024
    .line 1025
    .line 1026
    move-result-object v5

    .line 1027
    check-cast v5, Lcom/cloud/tmc/integration/structure/Page;

    .line 1028
    .line 1029
    invoke-interface {v5}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 1030
    .line 1031
    .line 1032
    move-result-object v5

    .line 1033
    invoke-interface {v5}, Lcom/cloud/tmc/integration/structure/App;->getStartParams()Landroid/os/Bundle;

    .line 1034
    .line 1035
    .line 1036
    move-result-object v5

    .line 1037
    invoke-virtual {v5, v1, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v1

    .line 1041
    invoke-virtual {v0, v4, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    .line 1043
    .line 1044
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    .line 1045
    .line 1046
    invoke-interface {v3}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    .line 1047
    .line 1048
    .line 1049
    move-result-object v4

    .line 1050
    check-cast v4, Lcom/cloud/tmc/integration/structure/Page;

    .line 1051
    .line 1052
    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    .line 1053
    .line 1054
    .line 1055
    move-result-object v4

    .line 1056
    invoke-virtual {v0, v1, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    .line 1058
    .line 1059
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1060
    .line 1061
    .line 1062
    invoke-static {v11}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1063
    .line 1064
    .line 1065
    move-result-object v1

    .line 1066
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 1067
    .line 1068
    if-nez v14, :cond_17

    .line 1069
    .line 1070
    const/4 v2, 0x0

    .line 1071
    goto :goto_7

    .line 1072
    :cond_17
    invoke-interface {v14}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 1073
    .line 1074
    .line 1075
    move-result-object v2

    .line 1076
    :goto_7
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->app:Ljava/lang/String;

    .line 1077
    .line 1078
    invoke-interface {v1, v2, v13, v4, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1079
    .line 1080
    .line 1081
    new-instance v0, Landroid/os/Bundle;

    .line 1082
    .line 1083
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1084
    .line 1085
    .line 1086
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1087
    .line 1088
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1089
    .line 1090
    .line 1091
    invoke-interface/range {p1 .. p1}, Lcom/cloud/tmc/kernel/worker/JSI;->fromWarmup()Ljava/lang/Boolean;

    .line 1092
    .line 1093
    .line 1094
    move-result-object v2

    .line 1095
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1096
    .line 1097
    .line 1098
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1099
    .line 1100
    .line 1101
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1102
    .line 1103
    .line 1104
    move-result-object v1

    .line 1105
    invoke-virtual {v0, v7, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    .line 1107
    .line 1108
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1109
    .line 1110
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1111
    .line 1112
    .line 1113
    invoke-interface/range {p1 .. p1}, Lcom/cloud/tmc/kernel/worker/JSI;->getWarmupChannel()I

    .line 1114
    .line 1115
    .line 1116
    move-result v2

    .line 1117
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1118
    .line 1119
    .line 1120
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1121
    .line 1122
    .line 1123
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1124
    .line 1125
    .line 1126
    move-result-object v1

    .line 1127
    invoke-virtual {v0, v8, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    .line 1129
    .line 1130
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1131
    .line 1132
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1133
    .line 1134
    .line 1135
    invoke-interface {v3}, Lcom/cloud/tmc/kernel/render/IRender;->fromWarmup()Z

    .line 1136
    .line 1137
    .line 1138
    move-result v2

    .line 1139
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1140
    .line 1141
    .line 1142
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1143
    .line 1144
    .line 1145
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1146
    .line 1147
    .line 1148
    move-result-object v1

    .line 1149
    invoke-virtual {v0, v9, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    .line 1151
    .line 1152
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1153
    .line 1154
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1155
    .line 1156
    .line 1157
    invoke-interface {v3}, Lcom/cloud/tmc/kernel/render/IRender;->getWarmupChannel()I

    .line 1158
    .line 1159
    .line 1160
    move-result v2

    .line 1161
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1162
    .line 1163
    .line 1164
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1165
    .line 1166
    .line 1167
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1168
    .line 1169
    .line 1170
    move-result-object v1

    .line 1171
    invoke-virtual {v0, v10, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    .line 1173
    .line 1174
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    .line 1175
    .line 1176
    invoke-interface {v3}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    .line 1177
    .line 1178
    .line 1179
    move-result-object v2

    .line 1180
    check-cast v2, Lcom/cloud/tmc/integration/structure/Page;

    .line 1181
    .line 1182
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    .line 1183
    .line 1184
    .line 1185
    move-result-object v2

    .line 1186
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1187
    .line 1188
    .line 1189
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    .line 1190
    .line 1191
    invoke-interface {v3}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    .line 1192
    .line 1193
    .line 1194
    move-result-object v2

    .line 1195
    check-cast v2, Lcom/cloud/tmc/integration/structure/Page;

    .line 1196
    .line 1197
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    .line 1198
    .line 1199
    .line 1200
    move-result-object v2

    .line 1201
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1202
    .line 1203
    .line 1204
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_DRAW_END_TYPE:Ljava/lang/String;

    .line 1205
    .line 1206
    const-string v2, "1"

    .line 1207
    .line 1208
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1209
    .line 1210
    .line 1211
    invoke-static {v11}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1212
    .line 1213
    .line 1214
    move-result-object v1

    .line 1215
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 1216
    .line 1217
    if-nez v14, :cond_18

    .line 1218
    .line 1219
    const/4 v2, 0x0

    .line 1220
    goto :goto_8

    .line 1221
    :cond_18
    invoke-interface {v14}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 1222
    .line 1223
    .line 1224
    move-result-object v2

    .line 1225
    :goto_8
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_APP_CHAIN_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 1226
    .line 1227
    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageDrawView:Ljava/lang/String;

    .line 1228
    .line 1229
    invoke-interface {v1, v2, v4, v5, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1230
    .line 1231
    .line 1232
    invoke-static {v11}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1233
    .line 1234
    .line 1235
    move-result-object v1

    .line 1236
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 1237
    .line 1238
    if-nez v14, :cond_19

    .line 1239
    .line 1240
    const/4 v2, 0x0

    .line 1241
    goto :goto_9

    .line 1242
    :cond_19
    invoke-interface {v14}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 1243
    .line 1244
    .line 1245
    move-result-object v2

    .line 1246
    :goto_9
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PAGE_CHAIN_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 1247
    .line 1248
    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageDrawView:Ljava/lang/String;

    .line 1249
    .line 1250
    invoke-interface {v1, v2, v4, v5, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1251
    .line 1252
    .line 1253
    invoke-interface {v3}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    .line 1254
    .line 1255
    .line 1256
    move-result-object v1

    .line 1257
    if-eqz v1, :cond_1b

    .line 1258
    .line 1259
    invoke-interface {v3}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    .line 1260
    .line 1261
    .line 1262
    move-result-object v1

    .line 1263
    instance-of v1, v1, Lcom/cloud/tmc/integration/structure/Page;

    .line 1264
    .line 1265
    if-eqz v1, :cond_1b

    .line 1266
    .line 1267
    invoke-interface {v3}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    .line 1268
    .line 1269
    .line 1270
    move-result-object v1

    .line 1271
    check-cast v1, Lcom/cloud/tmc/integration/structure/Page;

    .line 1272
    .line 1273
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getPageRandomIdByGAId()Ljava/lang/String;

    .line 1274
    .line 1275
    .line 1276
    move-result-object v1

    .line 1277
    move-object/from16 v2, v17

    .line 1278
    .line 1279
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1280
    .line 1281
    .line 1282
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1283
    .line 1284
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1285
    .line 1286
    .line 1287
    invoke-static {}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->getGAId()Ljava/lang/String;

    .line 1288
    .line 1289
    .line 1290
    move-result-object v2

    .line 1291
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1292
    .line 1293
    .line 1294
    const-string v2, "_"

    .line 1295
    .line 1296
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1297
    .line 1298
    .line 1299
    invoke-interface {v3}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    .line 1300
    .line 1301
    .line 1302
    move-result-object v2

    .line 1303
    check-cast v2, Lcom/cloud/tmc/integration/structure/Page;

    .line 1304
    .line 1305
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    .line 1306
    .line 1307
    .line 1308
    move-result-object v2

    .line 1309
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1310
    .line 1311
    .line 1312
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1313
    .line 1314
    .line 1315
    move-result-object v1

    .line 1316
    const-string v2, "pageUniqueId"

    .line 1317
    .line 1318
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1319
    .line 1320
    .line 1321
    new-instance v1, Lcom/cloud/tmc/integration/chain/endState/DrawViewEndState;

    .line 1322
    .line 1323
    invoke-direct {v1, v0}, Lcom/cloud/tmc/integration/chain/endState/DrawViewEndState;-><init>(Landroid/os/Bundle;)V

    .line 1324
    .line 1325
    .line 1326
    invoke-interface {v3}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    .line 1327
    .line 1328
    .line 1329
    move-result-object v0

    .line 1330
    check-cast v0, Lcom/cloud/tmc/integration/structure/Page;

    .line 1331
    .line 1332
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getPageChainContext()Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    .line 1333
    .line 1334
    .line 1335
    move-result-object v0

    .line 1336
    invoke-virtual {v1, v0}, Lcom/cloud/tmc/integration/chain/endState/DrawViewEndState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V

    .line 1337
    .line 1338
    .line 1339
    goto :goto_a

    .line 1340
    :cond_1a
    move-object/from16 v16, v4

    .line 1341
    .line 1342
    :cond_1b
    :goto_a
    invoke-virtual/range {v16 .. v16}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->getRenderId()Ljava/lang/String;

    .line 1343
    .line 1344
    .line 1345
    move-result-object v0

    .line 1346
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1347
    .line 1348
    .line 1349
    move-result v0

    .line 1350
    if-eqz v0, :cond_1c

    .line 1351
    .line 1352
    const/4 v0, 0x0

    .line 1353
    return v0

    .line 1354
    :cond_1c
    invoke-static {v3}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext;->newBuilder(Lcom/cloud/tmc/kernel/render/IRender;)Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;

    .line 1355
    .line 1356
    .line 1357
    move-result-object v0

    .line 1358
    const-string v1, "message"

    .line 1359
    .line 1360
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->action(Ljava/lang/String;)Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;

    .line 1361
    .line 1362
    .line 1363
    move-result-object v0

    .line 1364
    const-string v1, "call"

    .line 1365
    .line 1366
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->type(Ljava/lang/String;)Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;

    .line 1367
    .line 1368
    .line 1369
    move-result-object v0

    .line 1370
    move-object/from16 v1, p2

    .line 1371
    .line 1372
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->param(Lcom/google/gson/JsonObject;)Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;

    .line 1373
    .line 1374
    .line 1375
    move-result-object v0

    .line 1376
    invoke-interface {v3}, Lcom/cloud/tmc/kernel/render/IRender;->getRenderBridge()Lcom/cloud/tmc/kernel/bridge/RenderBridge;

    .line 1377
    .line 1378
    .line 1379
    move-result-object v1

    .line 1380
    if-eqz v1, :cond_1d

    .line 1381
    .line 1382
    invoke-interface {v3}, Lcom/cloud/tmc/kernel/render/IRender;->getRenderBridge()Lcom/cloud/tmc/kernel/bridge/RenderBridge;

    .line 1383
    .line 1384
    .line 1385
    move-result-object v1

    .line 1386
    invoke-virtual {v0}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->build()Lcom/cloud/tmc/kernel/bridge/RenderCallContext;

    .line 1387
    .line 1388
    .line 1389
    move-result-object v0

    .line 1390
    const/4 v2, 0x0

    .line 1391
    invoke-interface {v1, v0, v2}, Lcom/cloud/tmc/kernel/bridge/RenderBridge;->sendToRender(Lcom/cloud/tmc/kernel/bridge/RenderCallContext;Lcom/cloud/tmc/kernel/bridge/SendToRenderCallback;)V

    .line 1392
    .line 1393
    .line 1394
    :cond_1d
    const/4 v0, 0x1

    .line 1395
    :goto_b
    return v0
.end method

.method private static synthetic lambda$checkShowPermissionDialog$0(Lcom/cloud/tmc/integration/structure/App;)V
    .locals 4

    .line 1
    const-class v0, Lcom/cloud/tmc/integration/point/PermissionDialogPoint;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->as(Ljava/lang/Class;)Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->create()Lcom/cloud/tmc/kernel/extension/Extension;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/cloud/tmc/integration/point/PermissionDialogPoint;

    .line 12
    .line 13
    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/App;->getStartToken()J

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    invoke-interface {v0, v1, v2, v3}, Lcom/cloud/tmc/integration/point/PermissionDialogPoint;->privacyDialogDismiss(Ljava/lang/String;J)V

    .line 22
    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public handleMsgFromRender(Lcom/cloud/tmc/kernel/engine/EngineRouter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    .line 1
    const-string v0, "slaveLoaded"

    .line 2
    .line 3
    invoke-static {p4}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    sget-object v2, Lcom/cloud/tmc/integration/utils/JsonUtil;->INSTANCE:Lcom/cloud/tmc/integration/utils/JsonUtil;

    .line 12
    .line 13
    const-class v3, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;

    .line 14
    .line 15
    invoke-virtual {v2, p4, v3}, Lcom/cloud/tmc/integration/utils/JsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p4

    .line 19
    check-cast p4, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;

    .line 20
    .line 21
    invoke-virtual {p4}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->getAbilityName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-interface {p1, p2}, Lcom/cloud/tmc/kernel/engine/EngineRouter;->getWorkerById(Ljava/lang/String;)Lcom/cloud/tmc/kernel/worker/JSI;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {p4}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->getRenderId()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-nez v3, :cond_0

    .line 38
    .line 39
    invoke-virtual {p4}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->getRenderId()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/MsgDispatcher;->getActiveRenderId(Lcom/cloud/tmc/kernel/engine/EngineRouter;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    :goto_0
    invoke-interface {p1, v3}, Lcom/cloud/tmc/kernel/engine/EngineRouter;->getRenderById(Ljava/lang/String;)Lcom/cloud/tmc/kernel/render/IRender;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p4}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->getDataJson()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-direct {p0, v3, p1}, Lcom/cloud/tmc/integration/MsgDispatcher;->consumeTime(Ljava/lang/Object;Lcom/cloud/tmc/kernel/render/IRender;)V

    .line 57
    .line 58
    .line 59
    const-string v3, "Api"

    .line 60
    .line 61
    invoke-virtual {p4}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->getAbilityName()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    const/4 v4, 0x0

    .line 70
    const-string v5, ""

    .line 71
    .line 72
    if-eqz v3, :cond_2

    .line 73
    .line 74
    invoke-virtual {p4}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->getDataJson()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    check-cast p2, Lcom/google/gson/internal/LinkedTreeMap;

    .line 79
    .line 80
    invoke-static {p2}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$ApiDataJson;->parse(Lcom/google/gson/internal/LinkedTreeMap;)Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$ApiDataJson;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    invoke-virtual {p2}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$ApiDataJson;->getMethodName()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p3

    .line 88
    invoke-virtual {p2}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$ApiDataJson;->getArgs()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-nez v0, :cond_1

    .line 97
    .line 98
    invoke-static {p2}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    :cond_1
    invoke-virtual {p4}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->getCallbackId()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    new-instance p4, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;

    .line 111
    .line 112
    invoke-direct {p4}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;-><init>()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p4, p3}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;->name(Ljava/lang/String;)Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;

    .line 116
    .line 117
    .line 118
    move-result-object p4

    .line 119
    invoke-virtual {p4, v4}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;->params(Lcom/google/gson/JsonObject;)Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;

    .line 120
    .line 121
    .line 122
    move-result-object p4

    .line 123
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {p4, v0}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;->node(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;

    .line 128
    .line 129
    .line 130
    move-result-object p4

    .line 131
    invoke-virtual {p4, p1}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;->render(Lcom/cloud/tmc/kernel/render/IRender;)Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;

    .line 132
    .line 133
    .line 134
    move-result-object p4

    .line 135
    invoke-virtual {p4, p2}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;->callbackId(Ljava/lang/String;)Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;

    .line 136
    .line 137
    .line 138
    move-result-object p4

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 148
    .line 149
    .line 150
    move-result-wide v1

    .line 151
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-virtual {p4, v0}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;->id(Ljava/lang/String;)Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;

    .line 159
    .line 160
    .line 161
    move-result-object p4

    .line 162
    invoke-virtual {p4}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;->build()Lcom/cloud/tmc/kernel/bridge/NativeCallContext;

    .line 163
    .line 164
    .line 165
    move-result-object p4

    .line 166
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getEngine()Lcom/cloud/tmc/kernel/engine/IEngine;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/engine/IEngine;->getBridge()Lcom/cloud/tmc/kernel/bridge/NativeBridge;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    new-instance v1, Lcom/cloud/tmc/integration/MsgDispatcher$1;

    .line 175
    .line 176
    invoke-direct {v1, p0, p3, p2, p1}, Lcom/cloud/tmc/integration/MsgDispatcher$1;-><init>(Lcom/cloud/tmc/integration/MsgDispatcher;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/render/IRender;)V

    .line 177
    .line 178
    .line 179
    invoke-interface {v0, p4, v1}, Lcom/cloud/tmc/kernel/bridge/NativeBridge;->sendToNative(Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/bridge/SendToNativeCallback;)Z

    .line 180
    .line 181
    .line 182
    goto/16 :goto_6

    .line 183
    .line 184
    :cond_2
    const-string v3, "DispatchEvent"

    .line 185
    .line 186
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v3

    .line 190
    const/4 v6, 0x1

    .line 191
    const-string v7, "native"

    .line 192
    .line 193
    if-eqz v3, :cond_b

    .line 194
    .line 195
    invoke-virtual {p4}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->getTarget()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result v2

    .line 203
    const-class v3, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 204
    .line 205
    if-eqz v2, :cond_5

    .line 206
    .line 207
    invoke-virtual {p4}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->getDataJson()Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object p2

    .line 211
    check-cast p2, Lcom/google/gson/internal/LinkedTreeMap;

    .line 212
    .line 213
    invoke-static {p2}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$DispatchEventDataJson;->parse(Lcom/google/gson/internal/LinkedTreeMap;)Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$DispatchEventDataJson;

    .line 214
    .line 215
    .line 216
    move-result-object p2

    .line 217
    invoke-virtual {p2}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$DispatchEventDataJson;->getEventName()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object p4

    .line 221
    invoke-static {v3}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 226
    .line 227
    invoke-interface {v0, p4}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->createEvent(Ljava/lang/String;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    new-instance v2, Ljava/util/HashMap;

    .line 232
    .line 233
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 234
    .line 235
    .line 236
    const-string v3, "eventData"

    .line 237
    .line 238
    invoke-virtual {p2}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$DispatchEventDataJson;->getDataJson()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object p2

    .line 242
    invoke-virtual {v2, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    invoke-interface {v1, v2}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;->setData(Ljava/util/Map;)V

    .line 246
    .line 247
    .line 248
    invoke-interface {v1, p3}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;->setRenderId(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 252
    .line 253
    .line 254
    move-result p2

    .line 255
    if-nez p2, :cond_3

    .line 256
    .line 257
    const-string p2, "warmup_render_id_"

    .line 258
    .line 259
    invoke-virtual {p3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 260
    .line 261
    .line 262
    move-result p2

    .line 263
    if-eqz p2, :cond_3

    .line 264
    .line 265
    const-class p1, Lcom/cloud/tmc/integration/structure/WarmupNode;

    .line 266
    .line 267
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    check-cast p1, Lcom/cloud/tmc/integration/structure/WarmupNode;

    .line 272
    .line 273
    invoke-interface {p1, p3}, Lcom/cloud/tmc/integration/structure/WarmupNode;->getNode(Ljava/lang/String;)Lcom/cloud/tmc/kernel/node/Node;

    .line 274
    .line 275
    .line 276
    move-result-object v4

    .line 277
    goto :goto_1

    .line 278
    :cond_3
    if-eqz p1, :cond_4

    .line 279
    .line 280
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    .line 281
    .line 282
    .line 283
    move-result-object p1

    .line 284
    const-class p2, Lcom/cloud/tmc/integration/structure/App;

    .line 285
    .line 286
    invoke-interface {p1, p2}, Lcom/cloud/tmc/kernel/node/Node;->bubbleFindNode(Ljava/lang/Class;)Lcom/cloud/tmc/kernel/node/Node;

    .line 287
    .line 288
    .line 289
    move-result-object v4

    .line 290
    :cond_4
    :goto_1
    if-eqz v4, :cond_a

    .line 291
    .line 292
    invoke-interface {v0, v4}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->getEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 293
    .line 294
    .line 295
    move-result-object p1

    .line 296
    if-eqz p1, :cond_a

    .line 297
    .line 298
    invoke-interface {p1, p4, v1}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->postEvent(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)V

    .line 299
    .line 300
    .line 301
    goto/16 :goto_5

    .line 302
    .line 303
    :cond_5
    :try_start_0
    const-string p3, "render"

    .line 304
    .line 305
    invoke-virtual {p4}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->getTarget()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v2

    .line 309
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 310
    .line 311
    .line 312
    move-result p3

    .line 313
    if-eqz p3, :cond_9

    .line 314
    .line 315
    if-eqz p1, :cond_9

    .line 316
    .line 317
    invoke-virtual {p4}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->getDataJson()Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object p3

    .line 321
    check-cast p3, Lcom/google/gson/internal/LinkedTreeMap;

    .line 322
    .line 323
    invoke-static {p3}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$DispatchEventDataJson;->parse(Lcom/google/gson/internal/LinkedTreeMap;)Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$DispatchEventDataJson;

    .line 324
    .line 325
    .line 326
    move-result-object p3

    .line 327
    invoke-virtual {p3}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$DispatchEventDataJson;->getEventName()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object p3

    .line 331
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    move-result p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    const-string v2, "slaveAttached"

    .line 336
    .line 337
    if-nez p4, :cond_6

    .line 338
    .line 339
    :try_start_1
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 340
    .line 341
    .line 342
    move-result p4

    .line 343
    if-eqz p4, :cond_7

    .line 344
    .line 345
    goto :goto_2

    .line 346
    :catchall_0
    move-exception p1

    .line 347
    goto/16 :goto_3

    .line 348
    .line 349
    :cond_6
    :goto_2
    invoke-static {v3}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    move-result-object p4

    .line 353
    check-cast p4, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 354
    .line 355
    invoke-interface {p4, p3}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->createEvent(Ljava/lang/String;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;

    .line 356
    .line 357
    .line 358
    move-result-object v4

    .line 359
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    .line 360
    .line 361
    .line 362
    move-result-object v7

    .line 363
    invoke-interface {p4, v7}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->getEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 364
    .line 365
    .line 366
    move-result-object p4

    .line 367
    if-eqz p4, :cond_7

    .line 368
    .line 369
    invoke-interface {p4, p3, v4}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->postEvent(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)V

    .line 370
    .line 371
    .line 372
    :cond_7
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 373
    .line 374
    .line 375
    move-result p4

    .line 376
    if-eqz p4, :cond_8

    .line 377
    .line 378
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    .line 379
    .line 380
    .line 381
    move-result-object p4

    .line 382
    if-eqz p4, :cond_8

    .line 383
    .line 384
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    .line 385
    .line 386
    .line 387
    move-result-object p4

    .line 388
    instance-of p4, p4, Lcom/cloud/tmc/integration/structure/Page;

    .line 389
    .line 390
    if-eqz p4, :cond_8

    .line 391
    .line 392
    new-instance p4, Landroid/os/Bundle;

    .line 393
    .line 394
    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    .line 395
    .line 396
    .line 397
    const-string v0, "workerFromWarmup"

    .line 398
    .line 399
    new-instance v4, Ljava/lang/StringBuilder;

    .line 400
    .line 401
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 402
    .line 403
    .line 404
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/worker/JSI;->fromWarmup()Ljava/lang/Boolean;

    .line 405
    .line 406
    .line 407
    move-result-object v7

    .line 408
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v4

    .line 418
    invoke-virtual {p4, v0, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    const-string v0, "workerFromWarmupChannel"

    .line 422
    .line 423
    new-instance v4, Ljava/lang/StringBuilder;

    .line 424
    .line 425
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 426
    .line 427
    .line 428
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/worker/JSI;->getWarmupChannel()I

    .line 429
    .line 430
    .line 431
    move-result v7

    .line 432
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 433
    .line 434
    .line 435
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v4

    .line 442
    invoke-virtual {p4, v0, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    .line 444
    .line 445
    const-string v0, "renderFromWarmup"

    .line 446
    .line 447
    new-instance v4, Ljava/lang/StringBuilder;

    .line 448
    .line 449
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 450
    .line 451
    .line 452
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->fromWarmup()Z

    .line 453
    .line 454
    .line 455
    move-result v7

    .line 456
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 457
    .line 458
    .line 459
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v4

    .line 466
    invoke-virtual {p4, v0, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    .line 468
    .line 469
    const-string v0, "renderFromWarmupChannel"

    .line 470
    .line 471
    new-instance v4, Ljava/lang/StringBuilder;

    .line 472
    .line 473
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 474
    .line 475
    .line 476
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getWarmupChannel()I

    .line 477
    .line 478
    .line 479
    move-result v7

    .line 480
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    .line 485
    .line 486
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object v4

    .line 490
    invoke-virtual {p4, v0, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    .line 492
    .line 493
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    .line 494
    .line 495
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    .line 496
    .line 497
    .line 498
    move-result-object v4

    .line 499
    check-cast v4, Lcom/cloud/tmc/integration/structure/Page;

    .line 500
    .line 501
    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object v4

    .line 505
    invoke-virtual {p4, v0, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    .line 507
    .line 508
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    .line 509
    .line 510
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    .line 511
    .line 512
    .line 513
    move-result-object v4

    .line 514
    check-cast v4, Lcom/cloud/tmc/integration/structure/Page;

    .line 515
    .line 516
    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    .line 517
    .line 518
    .line 519
    move-result-object v4

    .line 520
    invoke-virtual {p4, v0, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    .line 522
    .line 523
    const-string v0, "pageRandomId"

    .line 524
    .line 525
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    .line 526
    .line 527
    .line 528
    move-result-object v4

    .line 529
    check-cast v4, Lcom/cloud/tmc/integration/structure/Page;

    .line 530
    .line 531
    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/Page;->getPageRandomIdByGAId()Ljava/lang/String;

    .line 532
    .line 533
    .line 534
    move-result-object v4

    .line 535
    invoke-virtual {p4, v0, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    .line 537
    .line 538
    const-string v0, "pageUniqueId"

    .line 539
    .line 540
    new-instance v4, Ljava/lang/StringBuilder;

    .line 541
    .line 542
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 543
    .line 544
    .line 545
    invoke-static {}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->getGAId()Ljava/lang/String;

    .line 546
    .line 547
    .line 548
    move-result-object v7

    .line 549
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    .line 551
    .line 552
    const-string v7, "_"

    .line 553
    .line 554
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    .line 556
    .line 557
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    .line 558
    .line 559
    .line 560
    move-result-object v7

    .line 561
    check-cast v7, Lcom/cloud/tmc/integration/structure/Page;

    .line 562
    .line 563
    invoke-interface {v7}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    .line 564
    .line 565
    .line 566
    move-result-object v7

    .line 567
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    .line 569
    .line 570
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 571
    .line 572
    .line 573
    move-result-object v4

    .line 574
    invoke-virtual {p4, v0, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    .line 576
    .line 577
    new-instance v0, Lcom/cloud/tmc/integration/chain/endState/ChainMidEndState;

    .line 578
    .line 579
    invoke-direct {v0, p4}, Lcom/cloud/tmc/integration/chain/endState/ChainMidEndState;-><init>(Landroid/os/Bundle;)V

    .line 580
    .line 581
    .line 582
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    .line 583
    .line 584
    .line 585
    move-result-object v4

    .line 586
    check-cast v4, Lcom/cloud/tmc/integration/structure/Page;

    .line 587
    .line 588
    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/Page;->getPageChainContext()Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    .line 589
    .line 590
    .line 591
    move-result-object v4

    .line 592
    invoke-virtual {v0, v4}, Lcom/cloud/tmc/integration/chain/endState/ChainMidEndState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V

    .line 593
    .line 594
    .line 595
    new-instance v0, Lcom/cloud/tmc/integration/chain/startState/DrawViewStartState;

    .line 596
    .line 597
    invoke-direct {v0, p4}, Lcom/cloud/tmc/integration/chain/startState/DrawViewStartState;-><init>(Landroid/os/Bundle;)V

    .line 598
    .line 599
    .line 600
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    .line 601
    .line 602
    .line 603
    move-result-object p4

    .line 604
    check-cast p4, Lcom/cloud/tmc/integration/structure/Page;

    .line 605
    .line 606
    invoke-interface {p4}, Lcom/cloud/tmc/integration/structure/Page;->getPageChainContext()Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    .line 607
    .line 608
    .line 609
    move-result-object p4

    .line 610
    invoke-virtual {v0, p4}, Lcom/cloud/tmc/integration/chain/startState/DrawViewStartState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V

    .line 611
    .line 612
    .line 613
    :cond_8
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 614
    .line 615
    .line 616
    move-result p3

    .line 617
    if-eqz p3, :cond_9

    .line 618
    .line 619
    sget-object p3, Lcom/cloud/tmc/integration/utils/VersionUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/VersionUtils;

    .line 620
    .line 621
    const-string p4, "5.1.1"

    .line 622
    .line 623
    const-class v0, Lcom/cloud/tmc/kernel/intf/IPackageConfig;

    .line 624
    .line 625
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 626
    .line 627
    .line 628
    move-result-object v0

    .line 629
    check-cast v0, Lcom/cloud/tmc/kernel/intf/IPackageConfig;

    .line 630
    .line 631
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/intf/IPackageConfig;->getFrameworkVersion()Ljava/lang/String;

    .line 632
    .line 633
    .line 634
    move-result-object v0

    .line 635
    invoke-virtual {p3, p4, v0}, Lcom/cloud/tmc/integration/utils/VersionUtils;->isSupportH5PageStack(Ljava/lang/String;Ljava/lang/String;)Z

    .line 636
    .line 637
    .line 638
    move-result p3

    .line 639
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 640
    .line 641
    .line 642
    move-result-object p4

    .line 643
    const-string v0, "pom"

    .line 644
    .line 645
    new-instance v2, Ljava/lang/StringBuilder;

    .line 646
    .line 647
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 648
    .line 649
    .line 650
    const-string v4, "ret:"

    .line 651
    .line 652
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    .line 654
    .line 655
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 656
    .line 657
    .line 658
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 659
    .line 660
    .line 661
    move-result-object p4

    .line 662
    invoke-static {v0, p4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    .line 664
    .line 665
    if-eqz p3, :cond_9

    .line 666
    .line 667
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    .line 668
    .line 669
    .line 670
    move-result-object p3

    .line 671
    if-eqz p3, :cond_9

    .line 672
    .line 673
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    .line 674
    .line 675
    .line 676
    move-result-object p3

    .line 677
    instance-of p3, p3, Lcom/cloud/tmc/integration/structure/Page;

    .line 678
    .line 679
    if-eqz p3, :cond_9

    .line 680
    .line 681
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    .line 682
    .line 683
    .line 684
    move-result-object p3

    .line 685
    check-cast p3, Lcom/cloud/tmc/integration/structure/Page;

    .line 686
    .line 687
    invoke-interface {p3}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 688
    .line 689
    .line 690
    move-result-object p3

    .line 691
    if-eqz p3, :cond_9

    .line 692
    .line 693
    invoke-static {v3}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 694
    .line 695
    .line 696
    move-result-object p3

    .line 697
    check-cast p3, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 698
    .line 699
    const-string p4, "resendH5PageStack"

    .line 700
    .line 701
    invoke-interface {p3, p4}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->createEvent(Ljava/lang/String;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;

    .line 702
    .line 703
    .line 704
    move-result-object p4

    .line 705
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    .line 706
    .line 707
    .line 708
    move-result-object v0

    .line 709
    check-cast v0, Lcom/cloud/tmc/integration/structure/Page;

    .line 710
    .line 711
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 712
    .line 713
    .line 714
    move-result-object v0

    .line 715
    invoke-interface {p3, v0}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->getEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 716
    .line 717
    .line 718
    move-result-object p3

    .line 719
    if-eqz p3, :cond_9

    .line 720
    .line 721
    new-instance v0, Ljava/lang/StringBuilder;

    .line 722
    .line 723
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 724
    .line 725
    .line 726
    const-string v2, "resendH5PageStack_"

    .line 727
    .line 728
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    .line 730
    .line 731
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    .line 732
    .line 733
    .line 734
    move-result-object p1

    .line 735
    check-cast p1, Lcom/cloud/tmc/integration/structure/Page;

    .line 736
    .line 737
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 738
    .line 739
    .line 740
    move-result-object p1

    .line 741
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 742
    .line 743
    .line 744
    move-result-object p1

    .line 745
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    .line 747
    .line 748
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 749
    .line 750
    .line 751
    move-result-object p1

    .line 752
    invoke-interface {p3, p1, p4}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->postEvent(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 753
    .line 754
    .line 755
    goto :goto_4

    .line 756
    :goto_3
    const-string p3, "MsgDispatcher"

    .line 757
    .line 758
    invoke-static {p3, v5, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 759
    .line 760
    .line 761
    :cond_9
    :goto_4
    new-instance p1, Lcom/cloud/tmc/integration/MsgDispatcher$2;

    .line 762
    .line 763
    invoke-direct {p1, p0, p2, v1}, Lcom/cloud/tmc/integration/MsgDispatcher$2;-><init>(Lcom/cloud/tmc/integration/MsgDispatcher;Lcom/cloud/tmc/kernel/worker/JSI;Lcom/google/gson/JsonObject;)V

    .line 764
    .line 765
    .line 766
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/utils/EngineUtils;->postOnWorker(Lcom/cloud/tmc/kernel/worker/JSI;Ljava/lang/Runnable;)V

    .line 767
    .line 768
    .line 769
    :cond_a
    :goto_5
    return v6

    .line 770
    :cond_b
    const-string p3, "LifeCycle"

    .line 771
    .line 772
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 773
    .line 774
    .line 775
    move-result p3

    .line 776
    if-eqz p3, :cond_c

    .line 777
    .line 778
    new-instance p1, Lcom/cloud/tmc/integration/MsgDispatcher$3;

    .line 779
    .line 780
    invoke-direct {p1, p0, p2, v1}, Lcom/cloud/tmc/integration/MsgDispatcher$3;-><init>(Lcom/cloud/tmc/integration/MsgDispatcher;Lcom/cloud/tmc/kernel/worker/JSI;Lcom/google/gson/JsonObject;)V

    .line 781
    .line 782
    .line 783
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/utils/EngineUtils;->postOnWorker(Lcom/cloud/tmc/kernel/worker/JSI;Ljava/lang/Runnable;)V

    .line 784
    .line 785
    .line 786
    return v6

    .line 787
    :cond_c
    const-string p3, "setData"

    .line 788
    .line 789
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 790
    .line 791
    .line 792
    move-result p3

    .line 793
    if-eqz p3, :cond_d

    .line 794
    .line 795
    new-instance p1, Lcom/cloud/tmc/integration/MsgDispatcher$4;

    .line 796
    .line 797
    invoke-direct {p1, p0, p2, v1}, Lcom/cloud/tmc/integration/MsgDispatcher$4;-><init>(Lcom/cloud/tmc/integration/MsgDispatcher;Lcom/cloud/tmc/kernel/worker/JSI;Lcom/google/gson/JsonObject;)V

    .line 798
    .line 799
    .line 800
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/utils/EngineUtils;->postOnWorker(Lcom/cloud/tmc/kernel/worker/JSI;Ljava/lang/Runnable;)V

    .line 801
    .line 802
    .line 803
    goto :goto_6

    .line 804
    :cond_d
    const-string p2, "DispatchNativeComponent"

    .line 805
    .line 806
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 807
    .line 808
    .line 809
    move-result p2

    .line 810
    if-eqz p2, :cond_e

    .line 811
    .line 812
    invoke-virtual {p4}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->getTarget()Ljava/lang/String;

    .line 813
    .line 814
    .line 815
    move-result-object p2

    .line 816
    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 817
    .line 818
    .line 819
    move-result p2

    .line 820
    if-eqz p2, :cond_f

    .line 821
    .line 822
    invoke-virtual {p4}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->getDataJson()Ljava/lang/Object;

    .line 823
    .line 824
    .line 825
    move-result-object p2

    .line 826
    check-cast p2, Lcom/google/gson/internal/LinkedTreeMap;

    .line 827
    .line 828
    invoke-static {p2}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$NativeComponentDataJson;->parse(Lcom/google/gson/internal/LinkedTreeMap;)Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$NativeComponentDataJson;

    .line 829
    .line 830
    .line 831
    move-result-object p2

    .line 832
    sget-object p3, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter;->INSTANCE:Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter;

    .line 833
    .line 834
    invoke-virtual {p3, p1, p2}, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter;->dispatchToComponentCenter(Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$NativeComponentDataJson;)V

    .line 835
    .line 836
    .line 837
    goto :goto_6

    .line 838
    :cond_e
    const-string p2, "DispatchNativeEvent"

    .line 839
    .line 840
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 841
    .line 842
    .line 843
    move-result p2

    .line 844
    if-eqz p2, :cond_f

    .line 845
    .line 846
    invoke-virtual {p4}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->getTarget()Ljava/lang/String;

    .line 847
    .line 848
    .line 849
    move-result-object p2

    .line 850
    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 851
    .line 852
    .line 853
    move-result p2

    .line 854
    if-eqz p2, :cond_f

    .line 855
    .line 856
    invoke-virtual {p4}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->getDataJson()Ljava/lang/Object;

    .line 857
    .line 858
    .line 859
    move-result-object p2

    .line 860
    check-cast p2, Lcom/google/gson/internal/LinkedTreeMap;

    .line 861
    .line 862
    invoke-static {p2}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$NativeComponentDataJson;->parse(Lcom/google/gson/internal/LinkedTreeMap;)Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$NativeComponentDataJson;

    .line 863
    .line 864
    .line 865
    move-result-object p2

    .line 866
    sget-object p3, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter;->INSTANCE:Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter;

    .line 867
    .line 868
    invoke-virtual {p3, p1, p2}, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter;->dispatchToEventCenter(Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$NativeComponentDataJson;)V

    .line 869
    .line 870
    .line 871
    :cond_f
    :goto_6
    const/4 p1, 0x0

    .line 872
    return p1
.end method

.method public handleMsgFromWorker(Lcom/cloud/tmc/kernel/worker/JSI;Lcom/google/gson/JsonObject;)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "handleMsgFroworker msg = "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "MsgDispatcher"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    if-nez p2, :cond_0

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    return p1

    .line 27
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/integration/MsgDispatcher;->handleAsyncMsgFromWorker(Lcom/cloud/tmc/kernel/worker/JSI;Lcom/google/gson/JsonObject;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    return p1
.end method
