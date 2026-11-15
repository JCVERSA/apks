.class public final Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/AppStageOpenFailState;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/integration/chain/hotopen/channel/IHotOpenState;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0018\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u0008H\u0002J\u0018\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u0008H\u0002J\u0018\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0018\u0010\r\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0018\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0002J\u0018\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0002J\u0018\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/AppStageOpenFailState;",
        "Lcom/cloud/tmc/integration/chain/hotopen/channel/IHotOpenState;",
        "()V",
        "keepSituation",
        "",
        "appChainContext",
        "Lcom/cloud/tmc/integration/chain/app/AppChainContext;",
        "dataBundle",
        "Landroid/os/Bundle;",
        "reportAppOpenEndFail",
        "data",
        "reportAppOpenMidFail",
        "reportNew",
        "reportOld",
        "reportPageOpenEndFail",
        "reportPageOpenMidFail",
        "reset",
        "com.cloud.tmc.integration"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


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

.method private final reportAppOpenEndFail(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V
    .locals 9

    .line 1
    const-class v0, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/AppStageOpenFailState;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v0, "_reportAppOpenEndFail"

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "chainPoint"

    .line 25
    .line 26
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    new-instance v0, Landroid/os/Bundle;

    .line 30
    .line 31
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 35
    .line 36
    .line 37
    const-string p2, "openMiniAppResult"

    .line 38
    .line 39
    const-string v1, "false"

    .line 40
    .line 41
    invoke-virtual {v0, p2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getOpenMiniAppFailedReason()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    const-string v1, "openMiniAppFailedReason"

    .line 49
    .line 50
    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const-string p2, "maxStage"

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getMaxStage()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    invoke-virtual {v0, p2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 60
    .line 61
    .line 62
    const-string p2, "syncType"

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getSyncType()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    invoke-virtual {v0, p2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 69
    .line 70
    .line 71
    const-string p2, "open_channel"

    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getOpenChannel()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v0, p2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    sget-object p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TIME:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v0, p2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    if-eqz p2, :cond_0

    .line 87
    .line 88
    sget-object p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TIME:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v0, p2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 91
    .line 92
    .line 93
    move-result-wide v1

    .line 94
    goto :goto_0

    .line 95
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 96
    .line 97
    .line 98
    move-result-wide v1

    .line 99
    :goto_0
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getCurrentChainStartState()Lcom/cloud/tmc/integration/chain/ChainState;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    const/4 v3, 0x0

    .line 104
    const/4 v4, 0x1

    .line 105
    if-eqz p2, :cond_1

    .line 106
    .line 107
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getCurrentChainEndState()Lcom/cloud/tmc/integration/chain/ChainState;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    if-nez p2, :cond_1

    .line 112
    .line 113
    move p2, v4

    .line 114
    goto :goto_1

    .line 115
    :cond_1
    move p2, v3

    .line 116
    :goto_1
    const-string v5, "isExitInStage"

    .line 117
    .line 118
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    invoke-virtual {v0, v5, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    new-instance v5, Ljava/util/LinkedHashMap;

    .line 126
    .line 127
    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getStateRangeTime()Ljava/util/Map;

    .line 131
    .line 132
    .line 133
    move-result-object v6

    .line 134
    invoke-interface {v5, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 135
    .line 136
    .line 137
    new-instance v6, Ljava/util/LinkedHashMap;

    .line 138
    .line 139
    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getStateCostTime()Ljava/util/Map;

    .line 143
    .line 144
    .line 145
    move-result-object v7

    .line 146
    invoke-interface {v6, v7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 147
    .line 148
    .line 149
    if-eqz p2, :cond_5

    .line 150
    .line 151
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getCurrentChainStartState()Lcom/cloud/tmc/integration/chain/ChainState;

    .line 152
    .line 153
    .line 154
    move-result-object p2

    .line 155
    if-eqz p2, :cond_5

    .line 156
    .line 157
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getCurrentChainStartState()Lcom/cloud/tmc/integration/chain/ChainState;

    .line 158
    .line 159
    .line 160
    move-result-object p2

    .line 161
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    invoke-interface {p2}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    .line 165
    .line 166
    .line 167
    move-result p2

    .line 168
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p2

    .line 172
    invoke-interface {v5, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object p2

    .line 176
    if-eqz p2, :cond_5

    .line 177
    .line 178
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getCurrentChainStartState()Lcom/cloud/tmc/integration/chain/ChainState;

    .line 179
    .line 180
    .line 181
    move-result-object p2

    .line 182
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    invoke-interface {p2}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    .line 186
    .line 187
    .line 188
    move-result p2

    .line 189
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p2

    .line 193
    invoke-interface {v5, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object p2

    .line 197
    check-cast p2, Ljava/util/List;

    .line 198
    .line 199
    if-eqz p2, :cond_5

    .line 200
    .line 201
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 202
    .line 203
    .line 204
    move-result p2

    .line 205
    if-ne p2, v4, :cond_5

    .line 206
    .line 207
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getCurrentChainStartState()Lcom/cloud/tmc/integration/chain/ChainState;

    .line 208
    .line 209
    .line 210
    move-result-object p2

    .line 211
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    invoke-interface {p2}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    .line 215
    .line 216
    .line 217
    move-result p2

    .line 218
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p2

    .line 222
    invoke-interface {v5, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object p2

    .line 226
    check-cast p2, Ljava/util/List;

    .line 227
    .line 228
    if-eqz p2, :cond_2

    .line 229
    .line 230
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    :cond_2
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getCurrentChainStartState()Lcom/cloud/tmc/integration/chain/ChainState;

    .line 238
    .line 239
    .line 240
    move-result-object p2

    .line 241
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    invoke-interface {p2}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    .line 245
    .line 246
    .line 247
    move-result p2

    .line 248
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object p2

    .line 252
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getCurrentChainStartState()Lcom/cloud/tmc/integration/chain/ChainState;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 257
    .line 258
    .line 259
    invoke-interface {v1}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    .line 260
    .line 261
    .line 262
    move-result v1

    .line 263
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    check-cast v1, Ljava/util/List;

    .line 272
    .line 273
    const-wide/16 v7, 0x0

    .line 274
    .line 275
    if-eqz v1, :cond_3

    .line 276
    .line 277
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    check-cast v1, Ljava/lang/Number;

    .line 282
    .line 283
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 284
    .line 285
    .line 286
    move-result-wide v1

    .line 287
    goto :goto_2

    .line 288
    :cond_3
    move-wide v1, v7

    .line 289
    :goto_2
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getCurrentChainStartState()Lcom/cloud/tmc/integration/chain/ChainState;

    .line 290
    .line 291
    .line 292
    move-result-object v4

    .line 293
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 294
    .line 295
    .line 296
    invoke-interface {v4}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    .line 297
    .line 298
    .line 299
    move-result v4

    .line 300
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v4

    .line 304
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v4

    .line 308
    check-cast v4, Ljava/util/List;

    .line 309
    .line 310
    if-eqz v4, :cond_4

    .line 311
    .line 312
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v3

    .line 316
    check-cast v3, Ljava/lang/Number;

    .line 317
    .line 318
    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    .line 319
    .line 320
    .line 321
    move-result-wide v7

    .line 322
    :cond_4
    sub-long/2addr v1, v7

    .line 323
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    invoke-interface {v6, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    :cond_5
    const-string p2, "stageCostTime"

    .line 331
    .line 332
    invoke-static {v6}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v1

    .line 336
    invoke-virtual {v0, p2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    const-string p2, "stageRangeTime"

    .line 340
    .line 341
    invoke-static {v5}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v1

    .line 345
    invoke-virtual {v0, p2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    const-string p2, "scene"

    .line 349
    .line 350
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getScene()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v1

    .line 354
    invoke-virtual {v0, p2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    sget-object p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    .line 358
    .line 359
    invoke-virtual {v0, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object p2

    .line 363
    if-eqz p2, :cond_6

    .line 364
    .line 365
    const-string v1, "page_path"

    .line 366
    .line 367
    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    :cond_6
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getOpenedPageCount()Ljava/util/concurrent/atomic/AtomicInteger;

    .line 371
    .line 372
    .line 373
    move-result-object p2

    .line 374
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 375
    .line 376
    .line 377
    move-result p2

    .line 378
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object p2

    .line 382
    const-string v1, "openedPageCount"

    .line 383
    .line 384
    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    sget-object p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    .line 388
    .line 389
    invoke-virtual {v0, p2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    sget-object p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    .line 393
    .line 394
    invoke-virtual {v0, p2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    const-class p2, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    .line 398
    .line 399
    invoke-static {p2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    move-result-object p2

    .line 403
    check-cast p2, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    .line 404
    .line 405
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getAppId()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object p1

    .line 409
    const-string v1, "mini_app_open_end"

    .line 410
    .line 411
    invoke-interface {p2, p1, v1, v0}, Lcom/cloud/tmc/integration/proxy/ReportProxy;->report(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 412
    .line 413
    .line 414
    return-void
.end method

.method private final reportAppOpenMidFail(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V
    .locals 9

    .line 1
    const-class v0, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/AppStageOpenFailState;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v0, "_reportAppOpenMidFail"

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "chainPoint"

    .line 25
    .line 26
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    new-instance v0, Landroid/os/Bundle;

    .line 30
    .line 31
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 35
    .line 36
    .line 37
    const-string p2, "openMiniAppResult"

    .line 38
    .line 39
    const-string v1, "false"

    .line 40
    .line 41
    invoke-virtual {v0, p2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getOpenMiniAppFailedReason()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    const-string v1, "openMiniAppFailedReason"

    .line 49
    .line 50
    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const-string p2, "maxStage"

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getMaxStage()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    invoke-virtual {v0, p2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 60
    .line 61
    .line 62
    const-string p2, "syncType"

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getSyncType()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    invoke-virtual {v0, p2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 69
    .line 70
    .line 71
    const-string p2, "open_channel"

    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getOpenChannel()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v0, p2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    sget-object p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TIME:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v0, p2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    if-eqz p2, :cond_0

    .line 87
    .line 88
    sget-object p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TIME:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v0, p2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 91
    .line 92
    .line 93
    move-result-wide v1

    .line 94
    goto :goto_0

    .line 95
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 96
    .line 97
    .line 98
    move-result-wide v1

    .line 99
    :goto_0
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getCurrentChainStartState()Lcom/cloud/tmc/integration/chain/ChainState;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    const/4 v3, 0x0

    .line 104
    const/4 v4, 0x1

    .line 105
    if-eqz p2, :cond_1

    .line 106
    .line 107
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getCurrentChainEndState()Lcom/cloud/tmc/integration/chain/ChainState;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    if-nez p2, :cond_1

    .line 112
    .line 113
    move p2, v4

    .line 114
    goto :goto_1

    .line 115
    :cond_1
    move p2, v3

    .line 116
    :goto_1
    const-string v5, "isExitInStage"

    .line 117
    .line 118
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    invoke-virtual {v0, v5, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    new-instance v5, Ljava/util/LinkedHashMap;

    .line 126
    .line 127
    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getStateRangeTime()Ljava/util/Map;

    .line 131
    .line 132
    .line 133
    move-result-object v6

    .line 134
    invoke-interface {v5, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 135
    .line 136
    .line 137
    new-instance v6, Ljava/util/LinkedHashMap;

    .line 138
    .line 139
    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getStateCostTime()Ljava/util/Map;

    .line 143
    .line 144
    .line 145
    move-result-object v7

    .line 146
    invoke-interface {v6, v7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 147
    .line 148
    .line 149
    if-eqz p2, :cond_5

    .line 150
    .line 151
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getCurrentChainStartState()Lcom/cloud/tmc/integration/chain/ChainState;

    .line 152
    .line 153
    .line 154
    move-result-object p2

    .line 155
    if-eqz p2, :cond_5

    .line 156
    .line 157
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getCurrentChainStartState()Lcom/cloud/tmc/integration/chain/ChainState;

    .line 158
    .line 159
    .line 160
    move-result-object p2

    .line 161
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    invoke-interface {p2}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    .line 165
    .line 166
    .line 167
    move-result p2

    .line 168
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p2

    .line 172
    invoke-interface {v5, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object p2

    .line 176
    if-eqz p2, :cond_5

    .line 177
    .line 178
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getCurrentChainStartState()Lcom/cloud/tmc/integration/chain/ChainState;

    .line 179
    .line 180
    .line 181
    move-result-object p2

    .line 182
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    invoke-interface {p2}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    .line 186
    .line 187
    .line 188
    move-result p2

    .line 189
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p2

    .line 193
    invoke-interface {v5, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object p2

    .line 197
    check-cast p2, Ljava/util/List;

    .line 198
    .line 199
    if-eqz p2, :cond_5

    .line 200
    .line 201
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 202
    .line 203
    .line 204
    move-result p2

    .line 205
    if-ne p2, v4, :cond_5

    .line 206
    .line 207
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getCurrentChainStartState()Lcom/cloud/tmc/integration/chain/ChainState;

    .line 208
    .line 209
    .line 210
    move-result-object p2

    .line 211
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    invoke-interface {p2}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    .line 215
    .line 216
    .line 217
    move-result p2

    .line 218
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p2

    .line 222
    invoke-interface {v5, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object p2

    .line 226
    check-cast p2, Ljava/util/List;

    .line 227
    .line 228
    if-eqz p2, :cond_2

    .line 229
    .line 230
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    :cond_2
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getCurrentChainStartState()Lcom/cloud/tmc/integration/chain/ChainState;

    .line 238
    .line 239
    .line 240
    move-result-object p2

    .line 241
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    invoke-interface {p2}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    .line 245
    .line 246
    .line 247
    move-result p2

    .line 248
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object p2

    .line 252
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getCurrentChainStartState()Lcom/cloud/tmc/integration/chain/ChainState;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 257
    .line 258
    .line 259
    invoke-interface {v1}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    .line 260
    .line 261
    .line 262
    move-result v1

    .line 263
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    check-cast v1, Ljava/util/List;

    .line 272
    .line 273
    const-wide/16 v7, 0x0

    .line 274
    .line 275
    if-eqz v1, :cond_3

    .line 276
    .line 277
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    check-cast v1, Ljava/lang/Number;

    .line 282
    .line 283
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 284
    .line 285
    .line 286
    move-result-wide v1

    .line 287
    goto :goto_2

    .line 288
    :cond_3
    move-wide v1, v7

    .line 289
    :goto_2
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getCurrentChainStartState()Lcom/cloud/tmc/integration/chain/ChainState;

    .line 290
    .line 291
    .line 292
    move-result-object v4

    .line 293
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 294
    .line 295
    .line 296
    invoke-interface {v4}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    .line 297
    .line 298
    .line 299
    move-result v4

    .line 300
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v4

    .line 304
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v4

    .line 308
    check-cast v4, Ljava/util/List;

    .line 309
    .line 310
    if-eqz v4, :cond_4

    .line 311
    .line 312
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v3

    .line 316
    check-cast v3, Ljava/lang/Number;

    .line 317
    .line 318
    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    .line 319
    .line 320
    .line 321
    move-result-wide v7

    .line 322
    :cond_4
    sub-long/2addr v1, v7

    .line 323
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    invoke-interface {v6, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    :cond_5
    const-string p2, "stageCostTime"

    .line 331
    .line 332
    invoke-static {v6}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v1

    .line 336
    invoke-virtual {v0, p2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    const-string p2, "stageRangeTime"

    .line 340
    .line 341
    invoke-static {v5}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v1

    .line 345
    invoke-virtual {v0, p2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    const-string p2, "scene"

    .line 349
    .line 350
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getScene()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v1

    .line 354
    invoke-virtual {v0, p2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    sget-object p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    .line 358
    .line 359
    invoke-virtual {v0, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object p2

    .line 363
    if-eqz p2, :cond_6

    .line 364
    .line 365
    const-string v1, "page_path"

    .line 366
    .line 367
    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    :cond_6
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getOpenedPageCount()Ljava/util/concurrent/atomic/AtomicInteger;

    .line 371
    .line 372
    .line 373
    move-result-object p2

    .line 374
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 375
    .line 376
    .line 377
    move-result p2

    .line 378
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object p2

    .line 382
    const-string v1, "openedPageCount"

    .line 383
    .line 384
    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    sget-object p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    .line 388
    .line 389
    invoke-virtual {v0, p2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    sget-object p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    .line 393
    .line 394
    invoke-virtual {v0, p2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    const-class p2, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    .line 398
    .line 399
    invoke-static {p2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    move-result-object p2

    .line 403
    check-cast p2, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    .line 404
    .line 405
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getAppId()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object p1

    .line 409
    const-string v1, "mini_app_open_mid"

    .line 410
    .line 411
    invoke-interface {p2, p1, v1, v0}, Lcom/cloud/tmc/integration/proxy/ReportProxy;->report(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 412
    .line 413
    .line 414
    return-void
.end method

.method private final reportPageOpenEndFail(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V
    .locals 10

    .line 1
    const-class v0, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/AppStageOpenFailState;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v0, "_reportPageOpenEndFail"

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "chainPoint"

    .line 25
    .line 26
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    new-instance v0, Landroid/os/Bundle;

    .line 30
    .line 31
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 35
    .line 36
    .line 37
    const-string p2, "openPageResult"

    .line 38
    .line 39
    const-string v1, "false"

    .line 40
    .line 41
    invoke-virtual {v0, p2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getOpenMiniAppFailedReason()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    const-string v2, "openPageFailedReason"

    .line 49
    .line 50
    invoke-virtual {v0, v2, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const-string p2, "maxStage"

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getMaxStage()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    invoke-virtual {v0, p2, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 60
    .line 61
    .line 62
    const-string p2, "open_channel"

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getOpenChannel()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v0, p2, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sget-object p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TIME:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v0, p2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    if-eqz p2, :cond_0

    .line 78
    .line 79
    sget-object p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TIME:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {v0, p2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 82
    .line 83
    .line 84
    move-result-wide v2

    .line 85
    goto :goto_0

    .line 86
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 87
    .line 88
    .line 89
    move-result-wide v2

    .line 90
    :goto_0
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getCurrentChainStartState()Lcom/cloud/tmc/integration/chain/ChainState;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    const/4 v4, 0x0

    .line 95
    const/4 v5, 0x1

    .line 96
    if-eqz p2, :cond_1

    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getCurrentChainEndState()Lcom/cloud/tmc/integration/chain/ChainState;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    if-nez p2, :cond_1

    .line 103
    .line 104
    move p2, v5

    .line 105
    goto :goto_1

    .line 106
    :cond_1
    move p2, v4

    .line 107
    :goto_1
    const-string v6, "isExitInStage"

    .line 108
    .line 109
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v7

    .line 113
    invoke-virtual {v0, v6, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    new-instance v6, Ljava/util/LinkedHashMap;

    .line 117
    .line 118
    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getStateRangeTime()Ljava/util/Map;

    .line 122
    .line 123
    .line 124
    move-result-object v7

    .line 125
    invoke-interface {v6, v7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 126
    .line 127
    .line 128
    new-instance v7, Ljava/util/LinkedHashMap;

    .line 129
    .line 130
    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getStateCostTime()Ljava/util/Map;

    .line 134
    .line 135
    .line 136
    move-result-object v8

    .line 137
    invoke-interface {v7, v8}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 138
    .line 139
    .line 140
    if-eqz p2, :cond_5

    .line 141
    .line 142
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getCurrentChainStartState()Lcom/cloud/tmc/integration/chain/ChainState;

    .line 143
    .line 144
    .line 145
    move-result-object p2

    .line 146
    if-eqz p2, :cond_5

    .line 147
    .line 148
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getCurrentChainStartState()Lcom/cloud/tmc/integration/chain/ChainState;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    invoke-interface {p2}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    .line 156
    .line 157
    .line 158
    move-result p2

    .line 159
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p2

    .line 163
    invoke-interface {v6, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object p2

    .line 167
    if-eqz p2, :cond_5

    .line 168
    .line 169
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getCurrentChainStartState()Lcom/cloud/tmc/integration/chain/ChainState;

    .line 170
    .line 171
    .line 172
    move-result-object p2

    .line 173
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    invoke-interface {p2}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    .line 177
    .line 178
    .line 179
    move-result p2

    .line 180
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p2

    .line 184
    invoke-interface {v6, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object p2

    .line 188
    check-cast p2, Ljava/util/List;

    .line 189
    .line 190
    if-eqz p2, :cond_5

    .line 191
    .line 192
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 193
    .line 194
    .line 195
    move-result p2

    .line 196
    if-ne p2, v5, :cond_5

    .line 197
    .line 198
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getCurrentChainStartState()Lcom/cloud/tmc/integration/chain/ChainState;

    .line 199
    .line 200
    .line 201
    move-result-object p2

    .line 202
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    invoke-interface {p2}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    .line 206
    .line 207
    .line 208
    move-result p2

    .line 209
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p2

    .line 213
    invoke-interface {v6, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object p2

    .line 217
    check-cast p2, Ljava/util/List;

    .line 218
    .line 219
    if-eqz p2, :cond_2

    .line 220
    .line 221
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    :cond_2
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getCurrentChainStartState()Lcom/cloud/tmc/integration/chain/ChainState;

    .line 229
    .line 230
    .line 231
    move-result-object p2

    .line 232
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 233
    .line 234
    .line 235
    invoke-interface {p2}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    .line 236
    .line 237
    .line 238
    move-result p2

    .line 239
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object p2

    .line 243
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getCurrentChainStartState()Lcom/cloud/tmc/integration/chain/ChainState;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 248
    .line 249
    .line 250
    invoke-interface {v2}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    .line 251
    .line 252
    .line 253
    move-result v2

    .line 254
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v2

    .line 262
    check-cast v2, Ljava/util/List;

    .line 263
    .line 264
    const-wide/16 v8, 0x0

    .line 265
    .line 266
    if-eqz v2, :cond_3

    .line 267
    .line 268
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v2

    .line 272
    check-cast v2, Ljava/lang/Number;

    .line 273
    .line 274
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    .line 275
    .line 276
    .line 277
    move-result-wide v2

    .line 278
    goto :goto_2

    .line 279
    :cond_3
    move-wide v2, v8

    .line 280
    :goto_2
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getCurrentChainStartState()Lcom/cloud/tmc/integration/chain/ChainState;

    .line 281
    .line 282
    .line 283
    move-result-object v5

    .line 284
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 285
    .line 286
    .line 287
    invoke-interface {v5}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    .line 288
    .line 289
    .line 290
    move-result v5

    .line 291
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v5

    .line 295
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v5

    .line 299
    check-cast v5, Ljava/util/List;

    .line 300
    .line 301
    if-eqz v5, :cond_4

    .line 302
    .line 303
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v4

    .line 307
    check-cast v4, Ljava/lang/Number;

    .line 308
    .line 309
    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    .line 310
    .line 311
    .line 312
    move-result-wide v8

    .line 313
    :cond_4
    sub-long/2addr v2, v8

    .line 314
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 315
    .line 316
    .line 317
    move-result-object v2

    .line 318
    invoke-interface {v7, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    :cond_5
    const-string p2, "stageCostTime"

    .line 322
    .line 323
    invoke-static {v7}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v2

    .line 327
    invoke-virtual {v0, p2, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    const-string p2, "stageRangeTime"

    .line 331
    .line 332
    invoke-static {v6}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v2

    .line 336
    invoke-virtual {v0, p2, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    const-string p2, "scene"

    .line 340
    .line 341
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getScene()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v2

    .line 345
    invoke-virtual {v0, p2, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    sget-object p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    .line 349
    .line 350
    invoke-virtual {v0, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object p2

    .line 354
    if-eqz p2, :cond_6

    .line 355
    .line 356
    const-string v2, "page_path"

    .line 357
    .line 358
    invoke-virtual {v0, v2, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    :cond_6
    const-string p2, "pageIndex"

    .line 362
    .line 363
    const-string v2, "1"

    .line 364
    .line 365
    invoke-virtual {v0, p2, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    const-string p2, "isAdd"

    .line 369
    .line 370
    invoke-virtual {v0, p2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    sget-object p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    .line 374
    .line 375
    invoke-virtual {v0, p2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    sget-object p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    .line 379
    .line 380
    invoke-virtual {v0, p2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    const-class p2, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    .line 384
    .line 385
    invoke-static {p2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    move-result-object p2

    .line 389
    check-cast p2, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    .line 390
    .line 391
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getAppId()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object p1

    .line 395
    const-string v1, "mini_page_open_end"

    .line 396
    .line 397
    invoke-interface {p2, p1, v1, v0}, Lcom/cloud/tmc/integration/proxy/ReportProxy;->report(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 398
    .line 399
    .line 400
    return-void
.end method

.method private final reportPageOpenMidFail(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V
    .locals 10

    .line 1
    const-class v0, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/AppStageOpenFailState;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v0, "_reportPageOpenMidFail"

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "chainPoint"

    .line 25
    .line 26
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    new-instance v0, Landroid/os/Bundle;

    .line 30
    .line 31
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 35
    .line 36
    .line 37
    const-string p2, "openPageResult"

    .line 38
    .line 39
    const-string v1, "false"

    .line 40
    .line 41
    invoke-virtual {v0, p2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getOpenMiniAppFailedReason()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    const-string v2, "openPageFailedReason"

    .line 49
    .line 50
    invoke-virtual {v0, v2, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const-string p2, "maxStage"

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getMaxStage()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    invoke-virtual {v0, p2, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 60
    .line 61
    .line 62
    const-string p2, "open_channel"

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getOpenChannel()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v0, p2, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sget-object p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TIME:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v0, p2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    if-eqz p2, :cond_0

    .line 78
    .line 79
    sget-object p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TIME:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {v0, p2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 82
    .line 83
    .line 84
    move-result-wide v2

    .line 85
    goto :goto_0

    .line 86
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 87
    .line 88
    .line 89
    move-result-wide v2

    .line 90
    :goto_0
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getCurrentChainStartState()Lcom/cloud/tmc/integration/chain/ChainState;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    const/4 v4, 0x0

    .line 95
    const/4 v5, 0x1

    .line 96
    if-eqz p2, :cond_1

    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getCurrentChainEndState()Lcom/cloud/tmc/integration/chain/ChainState;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    if-nez p2, :cond_1

    .line 103
    .line 104
    move p2, v5

    .line 105
    goto :goto_1

    .line 106
    :cond_1
    move p2, v4

    .line 107
    :goto_1
    const-string v6, "isExitInStage"

    .line 108
    .line 109
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v7

    .line 113
    invoke-virtual {v0, v6, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    new-instance v6, Ljava/util/LinkedHashMap;

    .line 117
    .line 118
    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getStateRangeTime()Ljava/util/Map;

    .line 122
    .line 123
    .line 124
    move-result-object v7

    .line 125
    invoke-interface {v6, v7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 126
    .line 127
    .line 128
    new-instance v7, Ljava/util/LinkedHashMap;

    .line 129
    .line 130
    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getStateCostTime()Ljava/util/Map;

    .line 134
    .line 135
    .line 136
    move-result-object v8

    .line 137
    invoke-interface {v7, v8}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 138
    .line 139
    .line 140
    if-eqz p2, :cond_5

    .line 141
    .line 142
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getCurrentChainStartState()Lcom/cloud/tmc/integration/chain/ChainState;

    .line 143
    .line 144
    .line 145
    move-result-object p2

    .line 146
    if-eqz p2, :cond_5

    .line 147
    .line 148
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getCurrentChainStartState()Lcom/cloud/tmc/integration/chain/ChainState;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    invoke-interface {p2}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    .line 156
    .line 157
    .line 158
    move-result p2

    .line 159
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p2

    .line 163
    invoke-interface {v6, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object p2

    .line 167
    if-eqz p2, :cond_5

    .line 168
    .line 169
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getCurrentChainStartState()Lcom/cloud/tmc/integration/chain/ChainState;

    .line 170
    .line 171
    .line 172
    move-result-object p2

    .line 173
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    invoke-interface {p2}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    .line 177
    .line 178
    .line 179
    move-result p2

    .line 180
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p2

    .line 184
    invoke-interface {v6, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object p2

    .line 188
    check-cast p2, Ljava/util/List;

    .line 189
    .line 190
    if-eqz p2, :cond_5

    .line 191
    .line 192
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 193
    .line 194
    .line 195
    move-result p2

    .line 196
    if-ne p2, v5, :cond_5

    .line 197
    .line 198
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getCurrentChainStartState()Lcom/cloud/tmc/integration/chain/ChainState;

    .line 199
    .line 200
    .line 201
    move-result-object p2

    .line 202
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    invoke-interface {p2}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    .line 206
    .line 207
    .line 208
    move-result p2

    .line 209
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p2

    .line 213
    invoke-interface {v6, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object p2

    .line 217
    check-cast p2, Ljava/util/List;

    .line 218
    .line 219
    if-eqz p2, :cond_2

    .line 220
    .line 221
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    :cond_2
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getCurrentChainStartState()Lcom/cloud/tmc/integration/chain/ChainState;

    .line 229
    .line 230
    .line 231
    move-result-object p2

    .line 232
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 233
    .line 234
    .line 235
    invoke-interface {p2}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    .line 236
    .line 237
    .line 238
    move-result p2

    .line 239
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object p2

    .line 243
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getCurrentChainStartState()Lcom/cloud/tmc/integration/chain/ChainState;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 248
    .line 249
    .line 250
    invoke-interface {v2}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    .line 251
    .line 252
    .line 253
    move-result v2

    .line 254
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v2

    .line 262
    check-cast v2, Ljava/util/List;

    .line 263
    .line 264
    const-wide/16 v8, 0x0

    .line 265
    .line 266
    if-eqz v2, :cond_3

    .line 267
    .line 268
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v2

    .line 272
    check-cast v2, Ljava/lang/Number;

    .line 273
    .line 274
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    .line 275
    .line 276
    .line 277
    move-result-wide v2

    .line 278
    goto :goto_2

    .line 279
    :cond_3
    move-wide v2, v8

    .line 280
    :goto_2
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getCurrentChainStartState()Lcom/cloud/tmc/integration/chain/ChainState;

    .line 281
    .line 282
    .line 283
    move-result-object v5

    .line 284
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 285
    .line 286
    .line 287
    invoke-interface {v5}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    .line 288
    .line 289
    .line 290
    move-result v5

    .line 291
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v5

    .line 295
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v5

    .line 299
    check-cast v5, Ljava/util/List;

    .line 300
    .line 301
    if-eqz v5, :cond_4

    .line 302
    .line 303
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v4

    .line 307
    check-cast v4, Ljava/lang/Number;

    .line 308
    .line 309
    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    .line 310
    .line 311
    .line 312
    move-result-wide v8

    .line 313
    :cond_4
    sub-long/2addr v2, v8

    .line 314
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 315
    .line 316
    .line 317
    move-result-object v2

    .line 318
    invoke-interface {v7, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    :cond_5
    const-string p2, "stageCostTime"

    .line 322
    .line 323
    invoke-static {v7}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v2

    .line 327
    invoke-virtual {v0, p2, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    const-string p2, "stageRangeTime"

    .line 331
    .line 332
    invoke-static {v6}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v2

    .line 336
    invoke-virtual {v0, p2, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    const-string p2, "scene"

    .line 340
    .line 341
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getScene()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v2

    .line 345
    invoke-virtual {v0, p2, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    sget-object p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    .line 349
    .line 350
    invoke-virtual {v0, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object p2

    .line 354
    if-eqz p2, :cond_6

    .line 355
    .line 356
    const-string v2, "page_path"

    .line 357
    .line 358
    invoke-virtual {v0, v2, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    :cond_6
    const-string p2, "pageIndex"

    .line 362
    .line 363
    const-string v2, "1"

    .line 364
    .line 365
    invoke-virtual {v0, p2, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    const-string p2, "isAdd"

    .line 369
    .line 370
    invoke-virtual {v0, p2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    sget-object p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    .line 374
    .line 375
    invoke-virtual {v0, p2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    sget-object p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    .line 379
    .line 380
    invoke-virtual {v0, p2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    const-class p2, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    .line 384
    .line 385
    invoke-static {p2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    move-result-object p2

    .line 389
    check-cast p2, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    .line 390
    .line 391
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getAppId()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object p1

    .line 395
    const-string v1, "mini_page_open_mid"

    .line 396
    .line 397
    invoke-interface {p2, p1, v1, v0}, Lcom/cloud/tmc/integration/proxy/ReportProxy;->report(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 398
    .line 399
    .line 400
    return-void
.end method


# virtual methods
.method public keepSituation(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const-string v2, "appChainContext"

    .line 5
    .line 6
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string v2, "dataBundle"

    .line 10
    .line 11
    move-object/from16 v3, p2

    .line 12
    .line 13
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v2, "keepSituation"

    .line 17
    .line 18
    move-object/from16 v3, p0

    .line 19
    .line 20
    invoke-virtual {v3, v2}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/AppStageOpenFailState;->log(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual/range {p1 .. p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getPageIndexOfApp()Ljava/util/concurrent/atomic/AtomicInteger;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const/4 v4, 0x0

    .line 28
    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual/range {p1 .. p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getOpenedPageCount()Ljava/util/concurrent/atomic/AtomicInteger;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v4}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->setReportMid(Z)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v4}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->setReportEnd(Z)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v4}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->setOpenMiniAppMidResult(Z)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v4}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->setOpenMiniAppEndResult(Z)V

    .line 48
    .line 49
    .line 50
    invoke-virtual/range {p1 .. p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getCurrentChainStartState()Lcom/cloud/tmc/integration/chain/ChainState;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    const/4 v5, 0x1

    .line 55
    if-eqz v2, :cond_0

    .line 56
    .line 57
    invoke-interface {v2}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    goto :goto_0

    .line 62
    :cond_0
    move v2, v5

    .line 63
    :goto_0
    invoke-virtual {v0, v2}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->setMaxStage(I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual/range {p1 .. p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getStateCostTime()Ljava/util/Map;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 71
    .line 72
    .line 73
    invoke-virtual/range {p1 .. p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getStateRangeTime()Ljava/util/Map;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 78
    .line 79
    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 81
    .line 82
    .line 83
    move-result-wide v6

    .line 84
    invoke-virtual/range {p1 .. p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getMaxStage()I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    const-wide/16 v8, 0x0

    .line 89
    .line 90
    if-gt v5, v2, :cond_1

    .line 91
    .line 92
    move v10, v5

    .line 93
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getStateCostTime()Ljava/util/Map;

    .line 94
    .line 95
    .line 96
    move-result-object v11

    .line 97
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v12

    .line 101
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 102
    .line 103
    .line 104
    move-result-object v13

    .line 105
    invoke-interface {v11, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    invoke-virtual/range {p1 .. p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getStateRangeTime()Ljava/util/Map;

    .line 109
    .line 110
    .line 111
    move-result-object v11

    .line 112
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v12

    .line 116
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 117
    .line 118
    .line 119
    move-result-object v13

    .line 120
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 121
    .line 122
    .line 123
    move-result-object v14

    .line 124
    new-array v15, v1, [Ljava/lang/Long;

    .line 125
    .line 126
    aput-object v13, v15, v4

    .line 127
    .line 128
    aput-object v14, v15, v5

    .line 129
    .line 130
    invoke-static {v15}, Lkotlin/collections/CollectionsKt;->h([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 131
    .line 132
    .line 133
    move-result-object v13

    .line 134
    invoke-interface {v11, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    if-eq v10, v2, :cond_1

    .line 138
    .line 139
    add-int/2addr v10, v5

    .line 140
    goto :goto_1

    .line 141
    :cond_1
    invoke-virtual {v0, v4}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->setSyncType(I)V

    .line 142
    .line 143
    .line 144
    invoke-virtual/range {p1 .. p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getSyncTypeMap()Ljava/util/Map;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 149
    .line 150
    .line 151
    const-string v2, ""

    .line 152
    .line 153
    invoke-virtual {v0, v2}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->setH5ProgressCollectList(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual/range {p1 .. p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getPageContexts()Ljava/util/Stack;

    .line 157
    .line 158
    .line 159
    move-result-object v10

    .line 160
    invoke-virtual {v10}, Ljava/util/AbstractCollection;->size()I

    .line 161
    .line 162
    .line 163
    move-result v10

    .line 164
    if-lez v10, :cond_4

    .line 165
    .line 166
    invoke-virtual/range {p1 .. p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getPageContexts()Ljava/util/Stack;

    .line 167
    .line 168
    .line 169
    move-result-object v10

    .line 170
    invoke-virtual {v10}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v10

    .line 174
    check-cast v10, Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    .line 175
    .line 176
    if-eqz v10, :cond_4

    .line 177
    .line 178
    const-string v11, "peek()"

    .line 179
    .line 180
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v10, v4}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->setPageIndexOfApp(I)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v10, v4}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->setReportMid(Z)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v10, v4}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->setReportEnd(Z)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v10, v4}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->setOpenMiniPageMidResult(Z)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v10, v4}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->setOpenMiniPageEndResult(Z)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v10}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->getCurrentChainStartState()Lcom/cloud/tmc/integration/chain/ChainState;

    .line 199
    .line 200
    .line 201
    move-result-object v11

    .line 202
    const/16 v12, 0xc

    .line 203
    .line 204
    if-eqz v11, :cond_2

    .line 205
    .line 206
    invoke-interface {v11}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    .line 207
    .line 208
    .line 209
    move-result v11

    .line 210
    goto :goto_2

    .line 211
    :cond_2
    move v11, v12

    .line 212
    :goto_2
    invoke-virtual {v10, v11}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->setMaxStage(I)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v10}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->getMaxStage()I

    .line 216
    .line 217
    .line 218
    move-result v11

    .line 219
    invoke-virtual {v0, v11}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->setFirstPageMaxStage(I)V

    .line 220
    .line 221
    .line 222
    invoke-virtual/range {p1 .. p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getStateCostTime()Ljava/util/Map;

    .line 223
    .line 224
    .line 225
    move-result-object v11

    .line 226
    invoke-virtual {v10, v11}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->setAppStateCostTime(Ljava/util/Map;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual/range {p1 .. p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getStateRangeTime()Ljava/util/Map;

    .line 230
    .line 231
    .line 232
    move-result-object v11

    .line 233
    invoke-virtual {v10, v11}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->setAppStateRangeTime(Ljava/util/Map;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v10}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->getMaxStage()I

    .line 237
    .line 238
    .line 239
    move-result v11

    .line 240
    if-gt v12, v11, :cond_3

    .line 241
    .line 242
    :goto_3
    invoke-virtual {v10}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->getStateCostTime()Ljava/util/Map;

    .line 243
    .line 244
    .line 245
    move-result-object v13

    .line 246
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v14

    .line 250
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 251
    .line 252
    .line 253
    move-result-object v15

    .line 254
    invoke-interface {v13, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v10}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->getStateRangeTime()Ljava/util/Map;

    .line 258
    .line 259
    .line 260
    move-result-object v13

    .line 261
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v14

    .line 265
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 266
    .line 267
    .line 268
    move-result-object v15

    .line 269
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 270
    .line 271
    .line 272
    move-result-object v16

    .line 273
    new-array v8, v1, [Ljava/lang/Long;

    .line 274
    .line 275
    aput-object v15, v8, v4

    .line 276
    .line 277
    aput-object v16, v8, v5

    .line 278
    .line 279
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->h([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 280
    .line 281
    .line 282
    move-result-object v8

    .line 283
    invoke-interface {v13, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    if-eq v12, v11, :cond_3

    .line 287
    .line 288
    add-int/2addr v12, v5

    .line 289
    const-wide/16 v8, 0x0

    .line 290
    .line 291
    goto :goto_3

    .line 292
    :cond_3
    invoke-virtual {v10}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->getStateCostTime()Ljava/util/Map;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->setFirstPageStateCostTime(Ljava/util/Map;)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v10}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->getStateRangeTime()Ljava/util/Map;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->setFirstPageStateRangeTime(Ljava/util/Map;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v10, v2}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->setH5ProgressCollectList(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    :cond_4
    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/integration/chain/hotopen/channel/IHotOpenState$DefaultImpls;->log(Lcom/cloud/tmc/integration/chain/hotopen/channel/IHotOpenState;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public reportNew(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    const-string v0, "appChainContext"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "dataBundle"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public reportOld(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    const-string v0, "appChainContext"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "dataBundle"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "reportOld"

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/AppStageOpenFailState;->log(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->isReportMid()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/AppStageOpenFailState;->reportPageOpenMidFail(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/AppStageOpenFailState;->reportAppOpenMidFail(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->isReportEnd()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/AppStageOpenFailState;->reportPageOpenEndFail(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/AppStageOpenFailState;->reportAppOpenEndFail(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void
.end method

.method public reset(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V
    .locals 5

    .line 1
    const-string v0, "appChainContext"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "dataBundle"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "reset"

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/AppStageOpenFailState;->log(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_SCENE:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_SCENE:Ljava/lang/String;

    .line 25
    .line 26
    const-string v1, "0"

    .line 27
    .line 28
    invoke-virtual {p2, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v2, "dataBundle.getString(ChainPoint.CHAIN_SCENE, \"0\")"

    .line 33
    .line 34
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->setScene(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-string v0, "hot_open_type"

    .line 41
    .line 42
    const-string v3, "-2"

    .line 43
    .line 44
    invoke-virtual {p2, v0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const-string v3, "dataBundle.getString(Tmc\u2026ants.HOT_OPEN_TYPE, \"-2\")"

    .line 49
    .line 50
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->setHotOpenType(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getPageContexts()Ljava/util/Stack;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-eqz v3, :cond_0

    .line 69
    .line 70
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    check-cast v3, Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    .line 75
    .line 76
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_SCENE:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {p2, v4, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3, v4}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->setScene(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_0
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_OPEN_CHANNEL:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_1

    .line 96
    .line 97
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_OPEN_CHANNEL:Ljava/lang/String;

    .line 98
    .line 99
    const-string v1, "-1"

    .line 100
    .line 101
    invoke-virtual {p2, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    const-string v2, "dataBundle.getString(Cha\u2026CHAIN_OPEN_CHANNEL, \"-1\")"

    .line 106
    .line 107
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, v0}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->setOpenChannel(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getPageContexts()Ljava/util/Stack;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-eqz v0, :cond_1

    .line 126
    .line 127
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    check-cast v0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    .line 132
    .line 133
    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_OPEN_CHANNEL:Ljava/lang/String;

    .line 134
    .line 135
    invoke-virtual {p2, v3, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v3}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->setOpenChannel(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_1
    return-void
.end method
