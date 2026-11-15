.class Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/worker/JSI$WorkerReadyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;->createSuccess(Lcom/cloud/tmc/kernel/worker/JSI;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;

.field final synthetic val$bundle:Landroid/os/Bundle;

.field final synthetic val$bundleData:Landroid/os/Bundle;

.field final synthetic val$data:Lcom/google/gson/JsonObject;

.field final synthetic val$finalWorker:Lcom/cloud/tmc/kernel/worker/JSI;

.field final synthetic val$finalWorker2:Lcom/cloud/tmc/kernel/worker/JSI;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/cloud/tmc/kernel/worker/JSI;Lcom/google/gson/JsonObject;Lcom/cloud/tmc/kernel/worker/JSI;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->this$1:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->val$bundle:Landroid/os/Bundle;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->val$bundleData:Landroid/os/Bundle;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->val$finalWorker2:Lcom/cloud/tmc/kernel/worker/JSI;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->val$data:Lcom/google/gson/JsonObject;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->val$finalWorker:Lcom/cloud/tmc/kernel/worker/JSI;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public onWorkerReady()V
    .locals 7

    .line 1
    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->this$1:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;

    .line 10
    .line 11
    iget-object v2, v2, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;->val$app:Lcom/cloud/tmc/integration/structure/App;

    .line 12
    .line 13
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_CHAIN_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 18
    .line 19
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CreateWorker:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v5, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->val$bundle:Landroid/os/Bundle;

    .line 22
    .line 23
    invoke-interface {v1, v2, v3, v4, v5}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 31
    .line 32
    iget-object v2, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->this$1:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;

    .line 33
    .line 34
    iget-object v2, v2, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;->val$app:Lcom/cloud/tmc/integration/structure/App;

    .line 35
    .line 36
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_APP_CHAIN_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 41
    .line 42
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageCreateWorker:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v5, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->val$bundleData:Landroid/os/Bundle;

    .line 45
    .line 46
    invoke-interface {v1, v2, v3, v4, v5}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 47
    .line 48
    .line 49
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 54
    .line 55
    iget-object v2, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->this$1:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;

    .line 56
    .line 57
    iget-object v2, v2, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;->val$app:Lcom/cloud/tmc/integration/structure/App;

    .line 58
    .line 59
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PAGE_CHAIN_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 64
    .line 65
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageCreateWorker:Ljava/lang/String;

    .line 66
    .line 67
    iget-object v5, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->val$bundleData:Landroid/os/Bundle;

    .line 68
    .line 69
    invoke-interface {v1, v2, v3, v4, v5}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 70
    .line 71
    .line 72
    new-instance v1, Lcom/cloud/tmc/integration/chain/endState/CreateWorkerEndState;

    .line 73
    .line 74
    iget-object v2, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->val$bundleData:Landroid/os/Bundle;

    .line 75
    .line 76
    invoke-direct {v1, v2}, Lcom/cloud/tmc/integration/chain/endState/CreateWorkerEndState;-><init>(Landroid/os/Bundle;)V

    .line 77
    .line 78
    .line 79
    iget-object v2, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->this$1:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;

    .line 80
    .line 81
    iget-object v2, v2, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;->val$page:Lcom/cloud/tmc/integration/structure/Page;

    .line 82
    .line 83
    const/4 v3, 0x0

    .line 84
    if-nez v2, :cond_0

    .line 85
    .line 86
    move-object v2, v3

    .line 87
    goto :goto_0

    .line 88
    :cond_0
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getPageChainContext()Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    :goto_0
    invoke-virtual {v1, v2}, Lcom/cloud/tmc/integration/chain/endState/CreateWorkerEndState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V

    .line 93
    .line 94
    .line 95
    const-class v1, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 96
    .line 97
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 102
    .line 103
    iget-object v2, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->this$1:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;

    .line 104
    .line 105
    iget-object v2, v2, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;->val$app:Lcom/cloud/tmc/integration/structure/App;

    .line 106
    .line 107
    invoke-interface {v1, v2}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->getEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    if-eqz v1, :cond_1

    .line 112
    .line 113
    new-instance v2, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1$1;

    .line 114
    .line 115
    invoke-direct {v2, p0, v1}, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1$1;-><init>(Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;)V

    .line 116
    .line 117
    .line 118
    const-string v4, "workerOnMessageReady"

    .line 119
    .line 120
    invoke-interface {v1, v4, v2}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->register(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    .line 121
    .line 122
    .line 123
    :cond_1
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 128
    .line 129
    iget-object v2, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->this$1:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;

    .line 130
    .line 131
    iget-object v2, v2, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;->val$app:Lcom/cloud/tmc/integration/structure/App;

    .line 132
    .line 133
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 138
    .line 139
    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->LoadWorkerFramework:Ljava/lang/String;

    .line 140
    .line 141
    iget-object v6, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->val$bundle:Landroid/os/Bundle;

    .line 142
    .line 143
    invoke-interface {v1, v2, v4, v5, v6}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 144
    .line 145
    .line 146
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 151
    .line 152
    iget-object v2, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->this$1:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;

    .line 153
    .line 154
    iget-object v2, v2, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;->val$app:Lcom/cloud/tmc/integration/structure/App;

    .line 155
    .line 156
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_APP_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 161
    .line 162
    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageLoadWorkerFramework:Ljava/lang/String;

    .line 163
    .line 164
    iget-object v6, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->val$bundleData:Landroid/os/Bundle;

    .line 165
    .line 166
    invoke-interface {v1, v2, v4, v5, v6}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 167
    .line 168
    .line 169
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 174
    .line 175
    iget-object v1, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->this$1:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;

    .line 176
    .line 177
    iget-object v1, v1, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;->val$app:Lcom/cloud/tmc/integration/structure/App;

    .line 178
    .line 179
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PAGE_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 184
    .line 185
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageLoadWorkerFramework:Ljava/lang/String;

    .line 186
    .line 187
    iget-object v5, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->val$bundleData:Landroid/os/Bundle;

    .line 188
    .line 189
    invoke-interface {v0, v1, v2, v4, v5}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 190
    .line 191
    .line 192
    new-instance v0, Lcom/cloud/tmc/integration/chain/startState/LoadWorkerFrameworkStartState;

    .line 193
    .line 194
    iget-object v1, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->val$bundleData:Landroid/os/Bundle;

    .line 195
    .line 196
    invoke-direct {v0, v1}, Lcom/cloud/tmc/integration/chain/startState/LoadWorkerFrameworkStartState;-><init>(Landroid/os/Bundle;)V

    .line 197
    .line 198
    .line 199
    iget-object v1, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->this$1:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;

    .line 200
    .line 201
    iget-object v1, v1, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;->val$page:Lcom/cloud/tmc/integration/structure/Page;

    .line 202
    .line 203
    if-nez v1, :cond_2

    .line 204
    .line 205
    goto :goto_1

    .line 206
    :cond_2
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getPageChainContext()Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    :goto_1
    invoke-virtual {v0, v3}, Lcom/cloud/tmc/integration/chain/startState/LoadWorkerFrameworkStartState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V

    .line 211
    .line 212
    .line 213
    iget-object v0, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->val$finalWorker:Lcom/cloud/tmc/kernel/worker/JSI;

    .line 214
    .line 215
    const-string v1, "100000"

    .line 216
    .line 217
    const-string v2, "https://100000.miniapp.transsion.com/master.js"

    .line 218
    .line 219
    invoke-interface {v0, v1, v2}, Lcom/cloud/tmc/kernel/worker/JSI;->loadJS(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    iget-object v0, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->this$1:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;

    .line 223
    .line 224
    iget-object v0, v0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;->val$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 225
    .line 226
    new-instance v1, Lcom/google/gson/JsonObject;

    .line 227
    .line 228
    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 229
    .line 230
    .line 231
    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    .line 232
    .line 233
    .line 234
    iget-object v0, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->val$finalWorker:Lcom/cloud/tmc/kernel/worker/JSI;

    .line 235
    .line 236
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/worker/JSI;->setRenderReady()V

    .line 237
    .line 238
    .line 239
    return-void
.end method
