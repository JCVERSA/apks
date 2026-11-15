.class public final Lcom/cloud/tmc/miniapp/bridge/NavigateMiniAppBridge;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/extension/BridgeExtension;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/bridge/NavigateMiniAppBridge$OooO00o;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/miniapp/bridge/NavigateMiniAppBridge$OooO00o;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniapp/bridge/NavigateMiniAppBridge$OooO00o;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/bridge/NavigateMiniAppBridge$OooO00o;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/tmc/miniapp/bridge/NavigateMiniAppBridge;->Companion:Lcom/cloud/tmc/miniapp/bridge/NavigateMiniAppBridge$OooO00o;

    .line 7
    .line 8
    return-void
.end method

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

.method public final navigateToMiniProgram(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/integration/structure/Page;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 15
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "appId"
            }
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "path"
            }
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "extraData"
            }
        .end annotation
    .end param
    .param p4    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p5    # Lcom/cloud/tmc/integration/structure/Page;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/Page;
        .end annotation
    .end param
    .param p6    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->UI:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    const-string v2, "mfah"

    .line 6
    .line 7
    const-string v3, "quickMode"

    .line 8
    .line 9
    const-string v4, "extraMiniClearAllPages"

    .line 10
    .line 11
    const-string v5, "extraMiniBackToUrl"

    .line 12
    .line 13
    if-eqz p4, :cond_12

    .line 14
    .line 15
    invoke-interface/range {p4 .. p4}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    .line 16
    .line 17
    .line 18
    move-result-object v6

    .line 19
    if-eqz v6, :cond_12

    .line 20
    .line 21
    invoke-interface/range {p4 .. p4}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    .line 22
    .line 23
    .line 24
    move-result-object v6

    .line 25
    const/4 v7, 0x0

    .line 26
    if-eqz v6, :cond_0

    .line 27
    .line 28
    invoke-interface {v6}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move-object v6, v7

    .line 34
    :goto_0
    if-eqz v6, :cond_12

    .line 35
    .line 36
    if-eqz v1, :cond_12

    .line 37
    .line 38
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    if-nez v6, :cond_1

    .line 43
    .line 44
    goto/16 :goto_a

    .line 45
    .line 46
    :cond_1
    invoke-interface/range {p4 .. p4}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    if-eqz v6, :cond_11

    .line 51
    .line 52
    invoke-interface {v6}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    if-eqz v6, :cond_11

    .line 57
    .line 58
    instance-of v8, v6, Landroid/app/Activity;

    .line 59
    .line 60
    if-eqz v8, :cond_11

    .line 61
    .line 62
    sget-object v8, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    .line 63
    .line 64
    invoke-virtual {v8, v1, v6}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getLaunchContext(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Context;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    new-instance v8, Landroid/os/Bundle;

    .line 69
    .line 70
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 71
    .line 72
    .line 73
    const-string v9, "page"

    .line 74
    .line 75
    const-string v10, "NavigateMiniAppBridge"

    .line 76
    .line 77
    const/4 v11, 0x1

    .line 78
    const/4 v12, 0x2

    .line 79
    const/4 v13, 0x0

    .line 80
    if-eqz v0, :cond_2

    .line 81
    .line 82
    const-string v14, "http://"

    .line 83
    .line 84
    invoke-static {v0, v14, v13, v12, v7}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v14

    .line 88
    if-ne v14, v11, :cond_2

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_2
    if-eqz v0, :cond_3

    .line 92
    .line 93
    const-string v14, "https://"

    .line 94
    .line 95
    invoke-static {v0, v14, v13, v12, v7}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v12

    .line 99
    if-ne v12, v11, :cond_3

    .line 100
    .line 101
    :goto_1
    invoke-virtual {v8, v9, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    goto :goto_5

    .line 105
    :cond_3
    if-eqz v0, :cond_7

    .line 106
    .line 107
    :try_start_0
    invoke-static/range {p2 .. p2}, Lcom/cloud/tmc/kernel/utils/UrlUtils;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    if-eqz v0, :cond_5

    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 114
    .line 115
    .line 116
    move-result v11

    .line 117
    if-nez v11, :cond_4

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_4
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 121
    .line 122
    .line 123
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    goto :goto_4

    .line 125
    :catchall_0
    move-exception v0

    .line 126
    goto :goto_3

    .line 127
    :cond_5
    :goto_2
    move-object v0, v7

    .line 128
    goto :goto_4

    .line 129
    :goto_3
    const-string v11, "Unable to decode"

    .line 130
    .line 131
    invoke-static {v10, v11, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 132
    .line 133
    .line 134
    goto :goto_2

    .line 135
    :goto_4
    if-eqz v0, :cond_7

    .line 136
    .line 137
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v11

    .line 141
    if-eqz v11, :cond_7

    .line 142
    .line 143
    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    .line 144
    .line 145
    .line 146
    move-result v11

    .line 147
    if-nez v11, :cond_6

    .line 148
    .line 149
    goto :goto_5

    .line 150
    :cond_6
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v11

    .line 154
    invoke-virtual {v8, v9, v11}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    const-string v9, "query"

    .line 162
    .line 163
    invoke-virtual {v8, v9, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    :cond_7
    :goto_5
    :try_start_1
    invoke-static/range {p3 .. p3}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtils;->mapFromJson(Ljava/lang/String;)Ljava/util/Map;

    .line 167
    .line 168
    .line 169
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 170
    const-string v9, "scene_id"

    .line 171
    .line 172
    if-eqz v0, :cond_8

    .line 173
    .line 174
    :try_start_2
    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v11

    .line 178
    check-cast v11, Ljava/lang/String;

    .line 179
    .line 180
    goto :goto_6

    .line 181
    :catchall_1
    move-exception v0

    .line 182
    goto/16 :goto_8

    .line 183
    .line 184
    :cond_8
    move-object v11, v7

    .line 185
    :goto_6
    const-string v12, "100000"

    .line 186
    .line 187
    invoke-static {v11, v12}, Lcom/cloud/tmc/integration/utils/ext/StringExtKt;->orDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v11

    .line 191
    invoke-virtual {v8, v9, v11}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 192
    .line 193
    .line 194
    const-string v9, "feedback_miniappId"

    .line 195
    .line 196
    if-eqz v0, :cond_9

    .line 197
    .line 198
    :try_start_3
    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v11

    .line 202
    check-cast v11, Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 203
    .line 204
    goto :goto_7

    .line 205
    :cond_9
    move-object v11, v7

    .line 206
    :goto_7
    const-string v12, "feedback_miniappVersion"

    .line 207
    .line 208
    if-eqz v0, :cond_a

    .line 209
    .line 210
    :try_start_4
    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v7

    .line 214
    check-cast v7, Ljava/lang/String;

    .line 215
    .line 216
    :cond_a
    if-eqz v11, :cond_b

    .line 217
    .line 218
    invoke-virtual {v8, v9, v11}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    :cond_b
    if-eqz v7, :cond_c

    .line 222
    .line 223
    invoke-virtual {v8, v12, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    :cond_c
    if-eqz v0, :cond_d

    .line 227
    .line 228
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v7

    .line 232
    check-cast v7, Ljava/lang/String;

    .line 233
    .line 234
    if-eqz v7, :cond_d

    .line 235
    .line 236
    invoke-virtual {v8, v5, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    :cond_d
    if-eqz v0, :cond_e

    .line 240
    .line 241
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v5

    .line 245
    check-cast v5, Ljava/lang/String;

    .line 246
    .line 247
    if-eqz v5, :cond_e

    .line 248
    .line 249
    invoke-static {v5}, Lkotlin/text/StringsKt;->m1(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 250
    .line 251
    .line 252
    move-result-object v5

    .line 253
    if-eqz v5, :cond_e

    .line 254
    .line 255
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 256
    .line 257
    .line 258
    move-result v5

    .line 259
    invoke-virtual {v8, v4, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 260
    .line 261
    .line 262
    :cond_e
    if-eqz v0, :cond_f

    .line 263
    .line 264
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v4

    .line 268
    check-cast v4, Ljava/lang/String;

    .line 269
    .line 270
    if-eqz v4, :cond_f

    .line 271
    .line 272
    invoke-static {v4}, Lkotlin/text/StringsKt;->m1(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 273
    .line 274
    .line 275
    move-result-object v4

    .line 276
    if-eqz v4, :cond_f

    .line 277
    .line 278
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 279
    .line 280
    .line 281
    move-result v4

    .line 282
    invoke-virtual {v8, v3, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 283
    .line 284
    .line 285
    :cond_f
    if-eqz v0, :cond_10

    .line 286
    .line 287
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    check-cast v0, Ljava/lang/String;

    .line 292
    .line 293
    if-eqz v0, :cond_10

    .line 294
    .line 295
    invoke-virtual {v8, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    :cond_10
    const-string v0, "extraData"

    .line 299
    .line 300
    move-object/from16 v2, p3

    .line 301
    .line 302
    invoke-virtual {v8, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 303
    .line 304
    .line 305
    goto :goto_9

    .line 306
    :goto_8
    invoke-static {v10, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 307
    .line 308
    .line 309
    :goto_9
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 310
    .line 311
    invoke-static {v6, v1, v8}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->launchMiniAppForId(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 312
    .line 313
    .line 314
    if-eqz p6, :cond_11

    .line 315
    .line 316
    invoke-interface/range {p6 .. p6}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse()V

    .line 317
    .line 318
    .line 319
    :cond_11
    return-void

    .line 320
    :cond_12
    :goto_a
    if-eqz p6, :cond_13

    .line 321
    .line 322
    invoke-interface/range {p6 .. p6}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 323
    .line 324
    .line 325
    :cond_13
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
