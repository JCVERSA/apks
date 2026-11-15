.class public final Lcom/cloud/tmc/miniapp/ui/MiniFragment$prePage$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/ui/MiniFragment;->prePage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $eventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

.field public final synthetic this$0:Lcom/cloud/tmc/miniapp/ui/MiniFragment;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/ui/MiniFragment;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$prePage$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$prePage$1;->$eventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

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
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$prePage$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->access$getPage$p$s-883329049(Lcom/cloud/tmc/miniapp/ui/MiniFragment;)Lcom/cloud/tmc/integration/structure/Page;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IRender;->getRenderId()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v0, v1

    .line 22
    :goto_0
    if-eqz p1, :cond_1

    .line 23
    .line 24
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;->getRenderId()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move-object p1, v1

    .line 30
    :goto_1
    const/4 v2, 0x2

    .line 31
    const/4 v3, 0x0

    .line 32
    invoke-static {v0, p1, v3, v2, v1}, Lkotlin/text/StringsKt;->I(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_f

    .line 37
    .line 38
    new-instance p1, Landroid/os/Bundle;

    .line 39
    .line 40
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 41
    .line 42
    .line 43
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TYPE:Ljava/lang/String;

    .line 44
    .line 45
    const-string v2, "page"

    .line 46
    .line 47
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_ID:Ljava/lang/String;

    .line 51
    .line 52
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$prePage$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniFragment;

    .line 53
    .line 54
    invoke-static {v2}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->access$getPage$p$s-883329049(Lcom/cloud/tmc/miniapp/ui/MiniFragment;)Lcom/cloud/tmc/integration/structure/Page;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    if-eqz v2, :cond_2

    .line 59
    .line 60
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    if-eqz v2, :cond_2

    .line 65
    .line 66
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getStartParams()Landroid/os/Bundle;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    if-eqz v2, :cond_2

    .line 71
    .line 72
    const-string v3, "uniqueChainID"

    .line 73
    .line 74
    const-string v4, "-1"

    .line 75
    .line 76
    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    goto :goto_2

    .line 81
    :cond_2
    move-object v2, v1

    .line 82
    :goto_2
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    .line 90
    .line 91
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$prePage$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniFragment;

    .line 92
    .line 93
    invoke-static {v2}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->access$getPage$p$s-883329049(Lcom/cloud/tmc/miniapp/ui/MiniFragment;)Lcom/cloud/tmc/integration/structure/Page;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    if-eqz v2, :cond_3

    .line 98
    .line 99
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    goto :goto_3

    .line 104
    :cond_3
    move-object v2, v1

    .line 105
    :goto_3
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 113
    .line 114
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    check-cast v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 119
    .line 120
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$prePage$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniFragment;

    .line 121
    .line 122
    invoke-static {v3}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->access$getPage$p$s-883329049(Lcom/cloud/tmc/miniapp/ui/MiniFragment;)Lcom/cloud/tmc/integration/structure/Page;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    if-eqz v3, :cond_4

    .line 127
    .line 128
    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    if-eqz v3, :cond_4

    .line 133
    .line 134
    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    goto :goto_4

    .line 139
    :cond_4
    move-object v3, v1

    .line 140
    :goto_4
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_CHAIN_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 141
    .line 142
    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->LoadRenderFramework:Ljava/lang/String;

    .line 143
    .line 144
    invoke-interface {v2, v3, v4, v5, p1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 145
    .line 146
    .line 147
    new-instance p1, Landroid/os/Bundle;

    .line 148
    .line 149
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 150
    .line 151
    .line 152
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$prePage$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniFragment;

    .line 153
    .line 154
    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    .line 155
    .line 156
    invoke-static {v2}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->access$getPage$p$s-883329049(Lcom/cloud/tmc/miniapp/ui/MiniFragment;)Lcom/cloud/tmc/integration/structure/Page;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    if-eqz v4, :cond_5

    .line 161
    .line 162
    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    goto :goto_5

    .line 167
    :cond_5
    move-object v4, v1

    .line 168
    :goto_5
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    invoke-virtual {p1, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    .line 176
    .line 177
    invoke-static {v2}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->access$getPage$p$s-883329049(Lcom/cloud/tmc/miniapp/ui/MiniFragment;)Lcom/cloud/tmc/integration/structure/Page;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    if-eqz v2, :cond_6

    .line 182
    .line 183
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    goto :goto_6

    .line 188
    :cond_6
    move-object v2, v1

    .line 189
    :goto_6
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    invoke-virtual {p1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    check-cast v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 201
    .line 202
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$prePage$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniFragment;

    .line 203
    .line 204
    invoke-static {v3}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->access$getPage$p$s-883329049(Lcom/cloud/tmc/miniapp/ui/MiniFragment;)Lcom/cloud/tmc/integration/structure/Page;

    .line 205
    .line 206
    .line 207
    move-result-object v3

    .line 208
    if-eqz v3, :cond_7

    .line 209
    .line 210
    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    if-eqz v3, :cond_7

    .line 215
    .line 216
    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v3

    .line 220
    goto :goto_7

    .line 221
    :cond_7
    move-object v3, v1

    .line 222
    :goto_7
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_APP_CHAIN_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 223
    .line 224
    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageLoadRenderFramework:Ljava/lang/String;

    .line 225
    .line 226
    invoke-interface {v2, v3, v4, v5, p1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 227
    .line 228
    .line 229
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 234
    .line 235
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$prePage$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniFragment;

    .line 236
    .line 237
    invoke-static {v2}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->access$getPage$p$s-883329049(Lcom/cloud/tmc/miniapp/ui/MiniFragment;)Lcom/cloud/tmc/integration/structure/Page;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    if-eqz v2, :cond_8

    .line 242
    .line 243
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    if-eqz v2, :cond_8

    .line 248
    .line 249
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v2

    .line 253
    goto :goto_8

    .line 254
    :cond_8
    move-object v2, v1

    .line 255
    :goto_8
    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PAGE_CHAIN_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 256
    .line 257
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageLoadRenderFramework:Ljava/lang/String;

    .line 258
    .line 259
    invoke-interface {v0, v2, v3, v4, p1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 260
    .line 261
    .line 262
    new-instance v0, Lcom/cloud/tmc/integration/chain/endState/LoadRenderFrameworkEndState;

    .line 263
    .line 264
    invoke-direct {v0, p1}, Lcom/cloud/tmc/integration/chain/endState/LoadRenderFrameworkEndState;-><init>(Landroid/os/Bundle;)V

    .line 265
    .line 266
    .line 267
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$prePage$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniFragment;

    .line 268
    .line 269
    invoke-static {p1}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->access$getPage$p$s-883329049(Lcom/cloud/tmc/miniapp/ui/MiniFragment;)Lcom/cloud/tmc/integration/structure/Page;

    .line 270
    .line 271
    .line 272
    move-result-object p1

    .line 273
    if-eqz p1, :cond_9

    .line 274
    .line 275
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getPageChainContext()Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    goto :goto_9

    .line 280
    :cond_9
    move-object p1, v1

    .line 281
    :goto_9
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/integration/chain/endState/LoadRenderFrameworkEndState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V

    .line 282
    .line 283
    .line 284
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$prePage$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniFragment;

    .line 285
    .line 286
    invoke-static {p1}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->access$getPage$p$s-883329049(Lcom/cloud/tmc/miniapp/ui/MiniFragment;)Lcom/cloud/tmc/integration/structure/Page;

    .line 287
    .line 288
    .line 289
    move-result-object p1

    .line 290
    if-eqz p1, :cond_a

    .line 291
    .line 292
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 293
    .line 294
    .line 295
    move-result-object p1

    .line 296
    if-eqz p1, :cond_a

    .line 297
    .line 298
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object p1

    .line 302
    if-eqz p1, :cond_a

    .line 303
    .line 304
    const-class v0, Lcom/cloud/tmc/integration/proxy/IUpdateLoadingStepProxy;

    .line 305
    .line 306
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    check-cast v0, Lcom/cloud/tmc/integration/proxy/IUpdateLoadingStepProxy;

    .line 311
    .line 312
    sget-object v2, Lcom/cloud/tmc/integration/activity/LoadStepAction;->STEP_FINISH_LOAD_RENDER:Lcom/cloud/tmc/integration/activity/LoadStepAction;

    .line 313
    .line 314
    invoke-interface {v0, p1, v2}, Lcom/cloud/tmc/integration/proxy/IUpdateLoadingStepProxy;->notifyUpdateLoadingStep(Ljava/lang/String;Lcom/cloud/tmc/integration/activity/LoadStepAction;)V

    .line 315
    .line 316
    .line 317
    :cond_a
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$prePage$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniFragment;

    .line 318
    .line 319
    invoke-static {p1}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->access$getPage$p$s-883329049(Lcom/cloud/tmc/miniapp/ui/MiniFragment;)Lcom/cloud/tmc/integration/structure/Page;

    .line 320
    .line 321
    .line 322
    move-result-object p1

    .line 323
    if-eqz p1, :cond_b

    .line 324
    .line 325
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    .line 326
    .line 327
    .line 328
    move-result-object p1

    .line 329
    if-eqz p1, :cond_b

    .line 330
    .line 331
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getView()Landroid/view/View;

    .line 332
    .line 333
    .line 334
    move-result-object p1

    .line 335
    goto :goto_a

    .line 336
    :cond_b
    move-object p1, v1

    .line 337
    :goto_a
    instance-of v0, p1, Lcom/cloud/tmc/render/system/SystemWebView;

    .line 338
    .line 339
    if-eqz v0, :cond_c

    .line 340
    .line 341
    move-object v1, p1

    .line 342
    check-cast v1, Lcom/cloud/tmc/render/system/SystemWebView;

    .line 343
    .line 344
    :cond_c
    if-eqz v1, :cond_d

    .line 345
    .line 346
    invoke-virtual {v1}, Lcom/cloud/tmc/render/system/SystemWebView;->getWebviewBridgeHelper()Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;

    .line 347
    .line 348
    .line 349
    move-result-object p1

    .line 350
    if-eqz p1, :cond_d

    .line 351
    .line 352
    invoke-virtual {p1}, Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;->registerMessageChannel()V

    .line 353
    .line 354
    .line 355
    :cond_d
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$prePage$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniFragment;

    .line 356
    .line 357
    invoke-static {p1}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->access$openPage(Lcom/cloud/tmc/miniapp/ui/MiniFragment;)V

    .line 358
    .line 359
    .line 360
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$prePage$1;->$eventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 361
    .line 362
    if-eqz p1, :cond_e

    .line 363
    .line 364
    const-string v0, "renderOnMessageReady"

    .line 365
    .line 366
    invoke-interface {p1, v0, p0}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->unregister(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    .line 367
    .line 368
    .line 369
    :cond_e
    const/4 v3, 0x1

    .line 370
    :cond_f
    return v3
.end method
