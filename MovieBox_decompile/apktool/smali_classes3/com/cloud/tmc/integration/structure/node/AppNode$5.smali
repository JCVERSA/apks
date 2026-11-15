.class Lcom/cloud/tmc/integration/structure/node/AppNode$5;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/structure/node/AppNode;->onEngineInitSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cloud/tmc/integration/structure/node/AppNode;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/integration/structure/node/AppNode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode$5;->this$0:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "createPage "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode$5;->this$0:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/cloud/tmc/integration/structure/node/AppNode;->e(Lcom/cloud/tmc/integration/structure/node/AppNode;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "TmcApp:App"

    .line 25
    .line 26
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode$5;->this$0:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mStartParams:Landroid/os/Bundle;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/cloud/tmc/kernel/utils/BundleUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode$5;->this$0:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 38
    .line 39
    iget-object v0, v0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mSceneParams:Landroid/os/Bundle;

    .line 40
    .line 41
    invoke-static {v0}, Lcom/cloud/tmc/kernel/utils/BundleUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode$5;->this$0:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 46
    .line 47
    invoke-static {v0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->c(Lcom/cloud/tmc/integration/structure/node/AppNode;)Lcom/cloud/tmc/integration/structure/AppLoadResult;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode$5;->this$0:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 54
    .line 55
    invoke-static {v0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->c(Lcom/cloud/tmc/integration/structure/node/AppNode;)Lcom/cloud/tmc/integration/structure/AppLoadResult;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iget-object v0, v0, Lcom/cloud/tmc/integration/structure/AppLoadResult;->appConfigModel:Lcom/cloud/tmc/integration/model/MiniAppConfigModel;

    .line 60
    .line 61
    if-eqz v0, :cond_0

    .line 62
    .line 63
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode$5;->this$0:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 64
    .line 65
    invoke-static {v0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->c(Lcom/cloud/tmc/integration/structure/node/AppNode;)Lcom/cloud/tmc/integration/structure/AppLoadResult;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iget-object v0, v0, Lcom/cloud/tmc/integration/structure/AppLoadResult;->appConfigModel:Lcom/cloud/tmc/integration/model/MiniAppConfigModel;

    .line 70
    .line 71
    iget-object v0, v0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;->pages:Ljava/util/List;

    .line 72
    .line 73
    if-eqz v0, :cond_0

    .line 74
    .line 75
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode$5;->this$0:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 76
    .line 77
    invoke-static {v0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->c(Lcom/cloud/tmc/integration/structure/node/AppNode;)Lcom/cloud/tmc/integration/structure/AppLoadResult;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    iget-object v0, v0, Lcom/cloud/tmc/integration/structure/AppLoadResult;->appConfigModel:Lcom/cloud/tmc/integration/model/MiniAppConfigModel;

    .line 82
    .line 83
    iget-object v0, v0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;->pages:Ljava/util/List;

    .line 84
    .line 85
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-nez v0, :cond_0

    .line 90
    .line 91
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode$5;->this$0:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 92
    .line 93
    invoke-static {v0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->c(Lcom/cloud/tmc/integration/structure/node/AppNode;)Lcom/cloud/tmc/integration/structure/AppLoadResult;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    iget-object v0, v0, Lcom/cloud/tmc/integration/structure/AppLoadResult;->appConfigModel:Lcom/cloud/tmc/integration/model/MiniAppConfigModel;

    .line 98
    .line 99
    iget-object v0, v0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;->pages:Ljava/util/List;

    .line 100
    .line 101
    const/4 v2, 0x0

    .line 102
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    check-cast v0, Ljava/lang/String;

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_0
    const/4 v0, 0x0

    .line 110
    :goto_0
    const-string v2, "page"

    .line 111
    .line 112
    invoke-virtual {v6, v2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-static {v7, v2}, Lcom/cloud/tmc/integration/utils/AppUtils;->isLegalPath(Landroid/os/Bundle;Ljava/lang/String;)Z

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    if-nez v3, :cond_1

    .line 121
    .line 122
    const-string v2, "Page invalid, use default page"

    .line 123
    .line 124
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_1
    move-object v0, v2

    .line 129
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    if-eqz v2, :cond_2

    .line 134
    .line 135
    const-string v0, "targetPagePath is null, app cannot start"

    .line 136
    .line 137
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :cond_2
    iget-object v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode$5;->this$0:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 142
    .line 143
    const-string v2, "firstStartedPagePath"

    .line 144
    .line 145
    invoke-virtual {v1, v2, v0}, Lcom/cloud/tmc/kernel/node/NodeInstance;->putStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    const-class v1, Lcom/cloud/tmc/integration/proxy/PageFactory;

    .line 149
    .line 150
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    move-object v2, v1

    .line 155
    check-cast v2, Lcom/cloud/tmc/integration/proxy/PageFactory;

    .line 156
    .line 157
    iget-object v3, p0, Lcom/cloud/tmc/integration/structure/node/AppNode$5;->this$0:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 158
    .line 159
    invoke-static {v3}, Lcom/cloud/tmc/integration/structure/node/AppNode;->e(Lcom/cloud/tmc/integration/structure/node/AppNode;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    move-object v5, v0

    .line 164
    invoke-interface/range {v2 .. v7}, Lcom/cloud/tmc/integration/proxy/PageFactory;->createPage(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/cloud/tmc/integration/structure/node/PageNode;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    iget-object v2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode$5;->this$0:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 169
    .line 170
    invoke-static {v2}, Lcom/cloud/tmc/integration/structure/node/AppNode;->d(Lcom/cloud/tmc/integration/structure/node/AppNode;)Lcom/cloud/tmc/kernel/engine/IEngine;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    const-class v3, Lcom/cloud/tmc/integration/model/WorkerStore;

    .line 175
    .line 176
    if-nez v2, :cond_3

    .line 177
    .line 178
    new-instance v2, Lcom/cloud/tmc/integration/model/WorkerStore;

    .line 179
    .line 180
    const-string v4, ""

    .line 181
    .line 182
    invoke-direct {v2, v4}, Lcom/cloud/tmc/integration/model/WorkerStore;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1, v3, v2}, Lcom/cloud/tmc/kernel/node/NodeInstance;->setData(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    goto :goto_2

    .line 189
    :cond_3
    new-instance v2, Lcom/cloud/tmc/integration/model/WorkerStore;

    .line 190
    .line 191
    iget-object v4, p0, Lcom/cloud/tmc/integration/structure/node/AppNode$5;->this$0:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 192
    .line 193
    invoke-static {v4}, Lcom/cloud/tmc/integration/structure/node/AppNode;->d(Lcom/cloud/tmc/integration/structure/node/AppNode;)Lcom/cloud/tmc/kernel/engine/IEngine;

    .line 194
    .line 195
    .line 196
    move-result-object v4

    .line 197
    invoke-interface {v4}, Lcom/cloud/tmc/kernel/engine/IEngine;->getWorkerId()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v4

    .line 201
    invoke-direct {v2, v4}, Lcom/cloud/tmc/integration/model/WorkerStore;-><init>(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v1, v3, v2}, Lcom/cloud/tmc/kernel/node/NodeInstance;->setData(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    :goto_2
    const-string v2, "onStart"

    .line 208
    .line 209
    invoke-static {v1, v2}, Lcom/cloud/tmc/integration/utils/TrackPointUtils;->pageRouteTrackStart(Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    if-eqz v2, :cond_4

    .line 217
    .line 218
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    if-eqz v3, :cond_4

    .line 223
    .line 224
    invoke-virtual {v3}, Lcom/cloud/tmc/integration/model/AppModel;->getAppinfoCategoryType()I

    .line 225
    .line 226
    .line 227
    move-result v3

    .line 228
    sget-object v4, Lcom/cloud/tmc/kernel/constants/MiniAppType;->NORMAL:Lcom/cloud/tmc/kernel/constants/MiniAppType;

    .line 229
    .line 230
    invoke-virtual {v4}, Lcom/cloud/tmc/kernel/constants/MiniAppType;->getType()I

    .line 231
    .line 232
    .line 233
    move-result v4

    .line 234
    if-ne v3, v4, :cond_4

    .line 235
    .line 236
    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/UrlUtil;->isHttpOrHttpsUrl(Ljava/lang/String;)Z

    .line 237
    .line 238
    .line 239
    move-result v3

    .line 240
    if-eqz v3, :cond_4

    .line 241
    .line 242
    const/4 v3, 0x2

    .line 243
    invoke-interface {v2, v0, v3}, Lcom/cloud/tmc/integration/structure/App;->putPageType(Ljava/lang/String;I)V

    .line 244
    .line 245
    .line 246
    :cond_4
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode$5;->this$0:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 247
    .line 248
    iget-object v2, v0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mStartParams:Landroid/os/Bundle;

    .line 249
    .line 250
    iget-object v0, v0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mSceneParams:Landroid/os/Bundle;

    .line 251
    .line 252
    invoke-static {v2, v0}, Lcom/cloud/tmc/integration/utils/AppUtils;->checkAndRemoveExtraPage(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 253
    .line 254
    .line 255
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode$5;->this$0:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 256
    .line 257
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/kernel/node/NodeInstance;->pushChild(Lcom/cloud/tmc/kernel/node/Node;)V

    .line 258
    .line 259
    .line 260
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode$5;->this$0:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 261
    .line 262
    iget-object v0, v0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppContext:Lcom/cloud/tmc/integration/structure/AppContext;

    .line 263
    .line 264
    invoke-interface {v0, v1}, Lcom/cloud/tmc/integration/structure/AppContext;->start(Lcom/cloud/tmc/integration/structure/Page;)V

    .line 265
    .line 266
    .line 267
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode$5;->this$0:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 268
    .line 269
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/structure/node/AppNode;->onPageStarted(Lcom/cloud/tmc/integration/structure/Page;)V

    .line 270
    .line 271
    .line 272
    return-void
.end method
