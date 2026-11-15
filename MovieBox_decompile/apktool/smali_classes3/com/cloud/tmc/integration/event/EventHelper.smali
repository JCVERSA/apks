.class public Lcom/cloud/tmc/integration/event/EventHelper;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static dispatchApiCallbackToWorker(Lcom/cloud/tmc/kernel/worker/JSI;Ljava/lang/String;Lcom/google/gson/JsonObject;)V
    .locals 10

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v9, Lcom/google/gson/JsonObject;

    .line 12
    .line 13
    invoke-direct {v9}, Lcom/google/gson/JsonObject;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {p2}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const-string v3, "dataJson"

    .line 21
    .line 22
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    invoke-static {p2}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v9, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string v2, "callbackId"

    .line 33
    .line 34
    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v9, v2, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-string v4, "abilityName"

    .line 41
    .line 42
    const-string v5, "callback"

    .line 43
    .line 44
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    const-string v4, "target"

    .line 48
    .line 49
    const-string v5, "worker"

    .line 50
    .line 51
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    const-string v4, "source"

    .line 55
    .line 56
    const-string v5, "native"

    .line 57
    .line 58
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 62
    .line 63
    .line 64
    move-result-wide v4

    .line 65
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    const-string v5, "time"

    .line 70
    .line 71
    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    new-instance v1, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;

    .line 81
    .line 82
    const-string v5, "native"

    .line 83
    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 85
    .line 86
    .line 87
    move-result-wide v6

    .line 88
    const-string v3, "callback"

    .line 89
    .line 90
    const-string v4, "worker"

    .line 91
    .line 92
    move-object v2, v1

    .line 93
    move-object v8, p1

    .line 94
    invoke-direct/range {v2 .. v9}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    if-eqz p2, :cond_0

    .line 98
    .line 99
    const-string p1, "renderId"

    .line 100
    .line 101
    invoke-virtual {p2, p1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    if-eqz v2, :cond_0

    .line 106
    .line 107
    invoke-virtual {p2, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p2, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-virtual {v1, p1}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->setRenderId(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    :cond_0
    new-instance p1, Lcom/google/gson/Gson;

    .line 130
    .line 131
    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-static {p1}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    if-eqz p2, :cond_1

    .line 147
    .line 148
    const-string v1, "action"

    .line 149
    .line 150
    invoke-virtual {p2, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    if-eqz v2, :cond_1

    .line 155
    .line 156
    invoke-virtual {p2, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    invoke-virtual {p2, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 168
    .line 169
    .line 170
    move-result-object p2

    .line 171
    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p2

    .line 175
    invoke-virtual {p1, v1, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    :cond_1
    if-nez p0, :cond_2

    .line 179
    .line 180
    return-void

    .line 181
    :cond_2
    invoke-interface {p0}, Lcom/cloud/tmc/kernel/worker/JSI;->workerType()I

    .line 182
    .line 183
    .line 184
    move-result p2

    .line 185
    const/4 v1, 0x1

    .line 186
    const/4 v2, 0x0

    .line 187
    if-ne p2, v1, :cond_3

    .line 188
    .line 189
    invoke-interface {p0, v0, v2}, Lcom/cloud/tmc/kernel/worker/JSI;->sendJsonToWorker(Ljava/util/HashMap;Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;)V

    .line 190
    .line 191
    .line 192
    goto :goto_0

    .line 193
    :cond_3
    invoke-interface {p0}, Lcom/cloud/tmc/kernel/worker/JSI;->workerType()I

    .line 194
    .line 195
    .line 196
    move-result p2

    .line 197
    const/4 v0, 0x3

    .line 198
    if-ne p2, v0, :cond_4

    .line 199
    .line 200
    invoke-interface {p0, p1, v2}, Lcom/cloud/tmc/kernel/worker/JSI;->sendJsonToWorker(Lcom/google/gson/JsonObject;Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;)V

    .line 201
    .line 202
    .line 203
    :cond_4
    :goto_0
    return-void
.end method

.method public static dispatchEventToRender(Lcom/cloud/tmc/kernel/render/IRender;Ljava/lang/String;Lcom/google/gson/JsonObject;)V
    .locals 10

    .line 1
    const-string v0, "dispatchEventToRender recive"

    .line 2
    .line 3
    const-string v1, "subPkg"

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v9, Lcom/google/gson/JsonObject;

    .line 9
    .line 10
    invoke-direct {v9}, Lcom/google/gson/JsonObject;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v0, "eventName"

    .line 14
    .line 15
    invoke-virtual {v9, v0, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string p1, "dataJson"

    .line 19
    .line 20
    invoke-static {p2}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-virtual {v9, p1, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    new-instance p1, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;

    .line 28
    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 30
    .line 31
    .line 32
    move-result-wide v6

    .line 33
    const-string v8, ""

    .line 34
    .line 35
    const-string v3, "DispatchEvent"

    .line 36
    .line 37
    const-string v4, "render"

    .line 38
    .line 39
    const-string v5, "native"

    .line 40
    .line 41
    move-object v2, p1

    .line 42
    invoke-direct/range {v2 .. v9}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    new-instance p2, Lcom/google/gson/Gson;

    .line 46
    .line 47
    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-static {p1}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    if-eqz p0, :cond_3

    .line 63
    .line 64
    const-string p2, "dispatchEventToRender recive render un null"

    .line 65
    .line 66
    invoke-static {v1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-interface {p0}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    instance-of v0, p2, Lcom/cloud/tmc/integration/structure/Page;

    .line 74
    .line 75
    const/4 v2, 0x0

    .line 76
    if-eqz v0, :cond_0

    .line 77
    .line 78
    check-cast p2, Lcom/cloud/tmc/integration/structure/Page;

    .line 79
    .line 80
    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    goto :goto_0

    .line 85
    :cond_0
    move-object p2, v2

    .line 86
    :goto_0
    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 87
    .line 88
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 93
    .line 94
    if-nez p2, :cond_1

    .line 95
    .line 96
    move-object p2, v2

    .line 97
    goto :goto_1

    .line 98
    :cond_1
    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    :goto_1
    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;->LOAD_URL:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;

    .line 103
    .line 104
    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    invoke-interface {v0, p2, v3, v4}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-static {p0}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext;->newBuilder(Lcom/cloud/tmc/kernel/render/IRender;)Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    const-string v0, "message"

    .line 116
    .line 117
    invoke-virtual {p2, v0}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->action(Ljava/lang/String;)Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    const-string v0, "call"

    .line 122
    .line 123
    invoke-virtual {p2, v0}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->type(Ljava/lang/String;)Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;

    .line 124
    .line 125
    .line 126
    move-result-object p2

    .line 127
    invoke-virtual {p2, p1}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->param(Lcom/google/gson/JsonObject;)Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-interface {p0}, Lcom/cloud/tmc/kernel/render/IRender;->getRenderBridge()Lcom/cloud/tmc/kernel/bridge/RenderBridge;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    if-eqz p2, :cond_2

    .line 136
    .line 137
    const-string p2, "dispatchEventToRender recive getRenderBridge un null"

    .line 138
    .line 139
    invoke-static {v1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-interface {p0}, Lcom/cloud/tmc/kernel/render/IRender;->getRenderBridge()Lcom/cloud/tmc/kernel/bridge/RenderBridge;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->build()Lcom/cloud/tmc/kernel/bridge/RenderCallContext;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-interface {p0, p1, v2}, Lcom/cloud/tmc/kernel/bridge/RenderBridge;->sendToRender(Lcom/cloud/tmc/kernel/bridge/RenderCallContext;Lcom/cloud/tmc/kernel/bridge/SendToRenderCallback;)V

    .line 151
    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_2
    const-string p0, "dispatchEventToRender recive getRenderBridge is null"

    .line 155
    .line 156
    invoke-static {v1, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_3
    const-string p0, "dispatchEventToRender recive render is null"

    .line 161
    .line 162
    invoke-static {v1, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    :goto_2
    return-void
.end method

.method public static dispatchEventToWorker(Lcom/cloud/tmc/kernel/worker/JSI;Ljava/lang/String;Lcom/google/gson/JsonObject;)V
    .locals 10

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v9, Lcom/google/gson/JsonObject;

    .line 12
    .line 13
    invoke-direct {v9}, Lcom/google/gson/JsonObject;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, "eventName"

    .line 17
    .line 18
    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v9, v2, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {p2}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string v2, "dataJson"

    .line 29
    .line 30
    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    invoke-static {p2}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {v9, v2, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-string p1, "abilityName"

    .line 41
    .line 42
    const-string v3, "DispatchEvent"

    .line 43
    .line 44
    invoke-virtual {v0, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    const-string p1, "target"

    .line 48
    .line 49
    const-string v3, "worker"

    .line 50
    .line 51
    invoke-virtual {v0, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    const-string p1, "source"

    .line 55
    .line 56
    const-string v3, "native"

    .line 57
    .line 58
    invoke-virtual {v0, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 62
    .line 63
    .line 64
    move-result-wide v3

    .line 65
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    const-string v3, "time"

    .line 70
    .line 71
    invoke-virtual {v0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    const-string p1, "callbackId"

    .line 75
    .line 76
    const-string v3, ""

    .line 77
    .line 78
    invoke-virtual {v0, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    new-instance p1, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;

    .line 85
    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 87
    .line 88
    .line 89
    move-result-wide v6

    .line 90
    const-string v8, ""

    .line 91
    .line 92
    const-string v3, "DispatchEvent"

    .line 93
    .line 94
    const-string v4, "worker"

    .line 95
    .line 96
    const-string v5, "native"

    .line 97
    .line 98
    move-object v2, p1

    .line 99
    invoke-direct/range {v2 .. v9}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    if-eqz p2, :cond_0

    .line 103
    .line 104
    const-string v1, "renderId"

    .line 105
    .line 106
    invoke-virtual {p2, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    if-eqz v2, :cond_0

    .line 111
    .line 112
    invoke-virtual {p2, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p2, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 124
    .line 125
    .line 126
    move-result-object p2

    .line 127
    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    invoke-virtual {p1, p2}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->setRenderId(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    :cond_0
    new-instance p2, Lcom/google/gson/Gson;

    .line 135
    .line 136
    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-static {p1}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    if-nez p0, :cond_1

    .line 152
    .line 153
    return-void

    .line 154
    :cond_1
    invoke-interface {p0}, Lcom/cloud/tmc/kernel/worker/JSI;->workerType()I

    .line 155
    .line 156
    .line 157
    move-result p2

    .line 158
    const/4 v1, 0x1

    .line 159
    const/4 v2, 0x0

    .line 160
    if-ne p2, v1, :cond_2

    .line 161
    .line 162
    invoke-interface {p0, v0, v2}, Lcom/cloud/tmc/kernel/worker/JSI;->sendJsonToWorker(Ljava/util/HashMap;Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;)V

    .line 163
    .line 164
    .line 165
    goto :goto_0

    .line 166
    :cond_2
    invoke-interface {p0}, Lcom/cloud/tmc/kernel/worker/JSI;->workerType()I

    .line 167
    .line 168
    .line 169
    move-result p2

    .line 170
    const/4 v0, 0x3

    .line 171
    if-ne p2, v0, :cond_3

    .line 172
    .line 173
    invoke-interface {p0, p1, v2}, Lcom/cloud/tmc/kernel/worker/JSI;->sendJsonToWorker(Lcom/google/gson/JsonObject;Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;)V

    .line 174
    .line 175
    .line 176
    :cond_3
    :goto_0
    return-void
.end method

.method public static dispatchLifecycleToWorker(Lcom/cloud/tmc/kernel/worker/JSI;Ljava/lang/String;Lcom/google/gson/JsonObject;)V
    .locals 10

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v9, Lcom/google/gson/JsonObject;

    .line 12
    .line 13
    invoke-direct {v9}, Lcom/google/gson/JsonObject;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, "eventName"

    .line 17
    .line 18
    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v9, v2, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {p2}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string v2, "dataJson"

    .line 29
    .line 30
    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    invoke-static {p2}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {v9, v2, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-string p1, "abilityName"

    .line 41
    .line 42
    const-string v3, "Lifecycle"

    .line 43
    .line 44
    invoke-virtual {v0, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    const-string p1, "target"

    .line 48
    .line 49
    const-string v3, "worker"

    .line 50
    .line 51
    invoke-virtual {v0, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    const-string p1, "source"

    .line 55
    .line 56
    const-string v3, "native"

    .line 57
    .line 58
    invoke-virtual {v0, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 62
    .line 63
    .line 64
    move-result-wide v3

    .line 65
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    const-string v3, "time"

    .line 70
    .line 71
    invoke-virtual {v0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    const-string p1, "callbackId"

    .line 75
    .line 76
    const-string v3, ""

    .line 77
    .line 78
    invoke-virtual {v0, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    new-instance p1, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;

    .line 85
    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 87
    .line 88
    .line 89
    move-result-wide v6

    .line 90
    const-string v8, ""

    .line 91
    .line 92
    const-string v3, "Lifecycle"

    .line 93
    .line 94
    const-string v4, "worker"

    .line 95
    .line 96
    const-string v5, "native"

    .line 97
    .line 98
    move-object v2, p1

    .line 99
    invoke-direct/range {v2 .. v9}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    if-eqz p2, :cond_0

    .line 103
    .line 104
    const-string v1, "renderId"

    .line 105
    .line 106
    invoke-virtual {p2, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    if-eqz v2, :cond_0

    .line 111
    .line 112
    invoke-virtual {p2, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p2, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 124
    .line 125
    .line 126
    move-result-object p2

    .line 127
    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    invoke-virtual {p1, p2}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->setRenderId(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    :cond_0
    new-instance p2, Lcom/google/gson/Gson;

    .line 135
    .line 136
    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-static {p1}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    if-nez p0, :cond_1

    .line 152
    .line 153
    return-void

    .line 154
    :cond_1
    invoke-interface {p0}, Lcom/cloud/tmc/kernel/worker/JSI;->workerType()I

    .line 155
    .line 156
    .line 157
    move-result p2

    .line 158
    const/4 v1, 0x1

    .line 159
    const/4 v2, 0x0

    .line 160
    if-ne p2, v1, :cond_2

    .line 161
    .line 162
    invoke-interface {p0, v0, v2}, Lcom/cloud/tmc/kernel/worker/JSI;->sendJsonToWorker(Ljava/util/HashMap;Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;)V

    .line 163
    .line 164
    .line 165
    goto :goto_0

    .line 166
    :cond_2
    invoke-interface {p0}, Lcom/cloud/tmc/kernel/worker/JSI;->workerType()I

    .line 167
    .line 168
    .line 169
    move-result p2

    .line 170
    const/4 v0, 0x3

    .line 171
    if-ne p2, v0, :cond_3

    .line 172
    .line 173
    invoke-interface {p0, p1, v2}, Lcom/cloud/tmc/kernel/worker/JSI;->sendJsonToWorker(Lcom/google/gson/JsonObject;Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;)V

    .line 174
    .line 175
    .line 176
    :cond_3
    :goto_0
    return-void
.end method
