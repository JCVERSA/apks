.class Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->onWorkerReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;

.field final synthetic val$eventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1$1;->this$2:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1$1;->val$eventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onEvent(Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)Z
    .locals 5

    .line 1
    const-class p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1$1;->this$2:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->this$1:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;->val$app:Lcom/cloud/tmc/integration/structure/App;

    .line 14
    .line 15
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_CHAIN_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 20
    .line 21
    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->LoadWorkerFramework:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v4, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1$1;->this$2:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;

    .line 24
    .line 25
    iget-object v4, v4, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->val$bundle:Landroid/os/Bundle;

    .line 26
    .line 27
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1$1;->this$2:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;

    .line 37
    .line 38
    iget-object v1, v1, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->this$1:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;

    .line 39
    .line 40
    iget-object v1, v1, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;->val$app:Lcom/cloud/tmc/integration/structure/App;

    .line 41
    .line 42
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_APP_CHAIN_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 47
    .line 48
    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageLoadWorkerFramework:Ljava/lang/String;

    .line 49
    .line 50
    iget-object v4, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1$1;->this$2:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;

    .line 51
    .line 52
    iget-object v4, v4, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->val$bundleData:Landroid/os/Bundle;

    .line 53
    .line 54
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 55
    .line 56
    .line 57
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 62
    .line 63
    iget-object v1, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1$1;->this$2:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;

    .line 64
    .line 65
    iget-object v1, v1, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->this$1:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;

    .line 66
    .line 67
    iget-object v1, v1, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;->val$app:Lcom/cloud/tmc/integration/structure/App;

    .line 68
    .line 69
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PAGE_CHAIN_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 74
    .line 75
    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageLoadWorkerFramework:Ljava/lang/String;

    .line 76
    .line 77
    iget-object v4, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1$1;->this$2:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;

    .line 78
    .line 79
    iget-object v4, v4, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->val$bundleData:Landroid/os/Bundle;

    .line 80
    .line 81
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 82
    .line 83
    .line 84
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 89
    .line 90
    iget-object v1, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1$1;->this$2:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;

    .line 91
    .line 92
    iget-object v1, v1, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->this$1:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;

    .line 93
    .line 94
    iget-object v1, v1, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;->val$app:Lcom/cloud/tmc/integration/structure/App;

    .line 95
    .line 96
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_APP_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 101
    .line 102
    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageDrawView:Ljava/lang/String;

    .line 103
    .line 104
    iget-object v4, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1$1;->this$2:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;

    .line 105
    .line 106
    iget-object v4, v4, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->val$bundleData:Landroid/os/Bundle;

    .line 107
    .line 108
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 109
    .line 110
    .line 111
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 116
    .line 117
    iget-object v0, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1$1;->this$2:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;

    .line 118
    .line 119
    iget-object v0, v0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->this$1:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;

    .line 120
    .line 121
    iget-object v0, v0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;->val$app:Lcom/cloud/tmc/integration/structure/App;

    .line 122
    .line 123
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PAGE_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 128
    .line 129
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageDrawView:Ljava/lang/String;

    .line 130
    .line 131
    iget-object v3, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1$1;->this$2:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;

    .line 132
    .line 133
    iget-object v3, v3, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->val$bundleData:Landroid/os/Bundle;

    .line 134
    .line 135
    invoke-interface {p1, v0, v1, v2, v3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 136
    .line 137
    .line 138
    new-instance p1, Lcom/cloud/tmc/integration/chain/endState/LoadWorkerFrameworkEndState;

    .line 139
    .line 140
    iget-object v0, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1$1;->this$2:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;

    .line 141
    .line 142
    iget-object v0, v0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->val$bundleData:Landroid/os/Bundle;

    .line 143
    .line 144
    invoke-direct {p1, v0}, Lcom/cloud/tmc/integration/chain/endState/LoadWorkerFrameworkEndState;-><init>(Landroid/os/Bundle;)V

    .line 145
    .line 146
    .line 147
    iget-object v0, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1$1;->this$2:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;

    .line 148
    .line 149
    iget-object v0, v0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->this$1:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;

    .line 150
    .line 151
    iget-object v0, v0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;->val$page:Lcom/cloud/tmc/integration/structure/Page;

    .line 152
    .line 153
    const/4 v1, 0x0

    .line 154
    if-nez v0, :cond_0

    .line 155
    .line 156
    move-object v0, v1

    .line 157
    goto :goto_0

    .line 158
    :cond_0
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getPageChainContext()Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    :goto_0
    invoke-virtual {p1, v0}, Lcom/cloud/tmc/integration/chain/endState/LoadWorkerFrameworkEndState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V

    .line 163
    .line 164
    .line 165
    new-instance p1, Lcom/cloud/tmc/integration/chain/startState/ChainMidStartState;

    .line 166
    .line 167
    iget-object v0, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1$1;->this$2:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;

    .line 168
    .line 169
    iget-object v0, v0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->val$bundleData:Landroid/os/Bundle;

    .line 170
    .line 171
    invoke-direct {p1, v0}, Lcom/cloud/tmc/integration/chain/startState/ChainMidStartState;-><init>(Landroid/os/Bundle;)V

    .line 172
    .line 173
    .line 174
    iget-object v0, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1$1;->this$2:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;

    .line 175
    .line 176
    iget-object v0, v0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->this$1:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;

    .line 177
    .line 178
    iget-object v0, v0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;->val$page:Lcom/cloud/tmc/integration/structure/Page;

    .line 179
    .line 180
    if-nez v0, :cond_1

    .line 181
    .line 182
    goto :goto_1

    .line 183
    :cond_1
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getPageChainContext()Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    :goto_1
    invoke-virtual {p1, v1}, Lcom/cloud/tmc/integration/chain/startState/ChainMidStartState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V

    .line 188
    .line 189
    .line 190
    iget-object p1, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1$1;->this$2:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;

    .line 191
    .line 192
    iget-object p1, p1, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->val$finalWorker2:Lcom/cloud/tmc/kernel/worker/JSI;

    .line 193
    .line 194
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/worker/JSI;->workerOnMessageReady()V

    .line 195
    .line 196
    .line 197
    sget-object p1, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppPrepareUtils;

    .line 198
    .line 199
    iget-object v0, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1$1;->this$2:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;

    .line 200
    .line 201
    iget-object v0, v0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->this$1:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;

    .line 202
    .line 203
    iget-object v0, v0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;->val$app:Lcom/cloud/tmc/integration/structure/App;

    .line 204
    .line 205
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-virtual {p1, v0}, Lcom/cloud/tmc/integration/utils/BaseAppPrepareUtils;->isShellType(Lcom/cloud/tmc/integration/model/AppModel;)Z

    .line 210
    .line 211
    .line 212
    move-result p1

    .line 213
    const/4 v0, 0x1

    .line 214
    const-string v1, "workerOnMessageReady"

    .line 215
    .line 216
    if-nez p1, :cond_3

    .line 217
    .line 218
    iget-object p1, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1$1;->this$2:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;

    .line 219
    .line 220
    iget-object p1, p1, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->this$1:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;

    .line 221
    .line 222
    iget-object p1, p1, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;->val$app:Lcom/cloud/tmc/integration/structure/App;

    .line 223
    .line 224
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getDevMode()I

    .line 229
    .line 230
    .line 231
    move-result p1

    .line 232
    const/4 v2, 0x2

    .line 233
    if-ne p1, v2, :cond_3

    .line 234
    .line 235
    const-class p1, Lcom/cloud/tmc/integration/point/IIDEDispatcherPoint;

    .line 236
    .line 237
    invoke-static {p1}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->as(Ljava/lang/Class;)Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    iget-object v2, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1$1;->this$2:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;

    .line 242
    .line 243
    iget-object v2, v2, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->this$1:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;

    .line 244
    .line 245
    iget-object v2, v2, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;->val$app:Lcom/cloud/tmc/integration/structure/App;

    .line 246
    .line 247
    invoke-virtual {p1, v2}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->node(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->create()Lcom/cloud/tmc/kernel/extension/Extension;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    check-cast p1, Lcom/cloud/tmc/integration/point/IIDEDispatcherPoint;

    .line 256
    .line 257
    if-eqz p1, :cond_2

    .line 258
    .line 259
    iget-object v2, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1$1;->this$2:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;

    .line 260
    .line 261
    iget-object v2, v2, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->val$data:Lcom/google/gson/JsonObject;

    .line 262
    .line 263
    const-string v3, "miniapp.workerInit"

    .line 264
    .line 265
    invoke-interface {p1, v3, v2}, Lcom/cloud/tmc/integration/point/IIDEDispatcherPoint;->sendMsg(Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    .line 266
    .line 267
    .line 268
    :cond_2
    iget-object p1, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1$1;->val$eventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 269
    .line 270
    invoke-interface {p1, v1, p0}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->unregister(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    .line 271
    .line 272
    .line 273
    return v0

    .line 274
    :cond_3
    iget-object p1, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1$1;->this$2:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;

    .line 275
    .line 276
    iget-object v2, p1, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->val$finalWorker:Lcom/cloud/tmc/kernel/worker/JSI;

    .line 277
    .line 278
    const-string v3, "workerInit"

    .line 279
    .line 280
    iget-object p1, p1, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->val$data:Lcom/google/gson/JsonObject;

    .line 281
    .line 282
    invoke-static {v2, v3, p1}, Lcom/cloud/tmc/integration/event/EventHelper;->dispatchEventToWorker(Lcom/cloud/tmc/kernel/worker/JSI;Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    .line 283
    .line 284
    .line 285
    iget-object p1, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1$1;->val$eventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 286
    .line 287
    invoke-interface {p1, v1, p0}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->unregister(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    .line 288
    .line 289
    .line 290
    return v0
.end method
