.class Lcom/mbridge/msdk/reward/adapter/b$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/reward/adapter/b;->a(Landroid/content/Context;ZIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/mbridge/msdk/reward/adapter/b$h;Lcom/mbridge/msdk/reward/adapter/b$n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/CopyOnWriteArrayList;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Lcom/mbridge/msdk/reward/adapter/b$n;

.field final synthetic i:Lcom/mbridge/msdk/reward/adapter/b;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/reward/adapter/b;Ljava/util/concurrent/CopyOnWriteArrayList;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/reward/adapter/b$n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/reward/adapter/b$a;->i:Lcom/mbridge/msdk/reward/adapter/b;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/mbridge/msdk/reward/adapter/b$a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/mbridge/msdk/reward/adapter/b$a;->b:Landroid/content/Context;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/mbridge/msdk/reward/adapter/b$a;->c:Ljava/lang/String;

    .line 8
    .line 9
    iput p5, p0, Lcom/mbridge/msdk/reward/adapter/b$a;->d:I

    .line 10
    .line 11
    iput-object p6, p0, Lcom/mbridge/msdk/reward/adapter/b$a;->e:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p7, p0, Lcom/mbridge/msdk/reward/adapter/b$a;->f:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p8, p0, Lcom/mbridge/msdk/reward/adapter/b$a;->g:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p9, p0, Lcom/mbridge/msdk/reward/adapter/b$a;->h:Lcom/mbridge/msdk/reward/adapter/b$n;

    .line 18
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public run()V
    .locals 29

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v2, "_"

    .line 4
    .line 5
    const-string v3, "RewardCampaignsResourceManager"

    .line 6
    .line 7
    iget-object v0, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 8
    .line 9
    if-eqz v0, :cond_14

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-lez v0, :cond_14

    .line 16
    .line 17
    :try_start_0
    invoke-static {}, Lcom/mbridge/msdk/foundation/download/download/ResDownloadCheckManager;->getInstance()Lcom/mbridge/msdk/foundation/download/download/ResDownloadCheckManager;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v4, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 22
    .line 23
    invoke-virtual {v0, v4}, Lcom/mbridge/msdk/foundation/download/download/ResDownloadCheckManager;->setCampaignList(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lcom/mbridge/msdk/videocommon/download/b;->getInstance()Lcom/mbridge/msdk/videocommon/download/b;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    iget-object v6, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->b:Landroid/content/Context;

    .line 31
    .line 32
    iget-object v7, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->c:Ljava/lang/String;

    .line 33
    .line 34
    iget-object v8, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 35
    .line 36
    iget v9, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->d:I

    .line 37
    .line 38
    new-instance v0, Lcom/mbridge/msdk/reward/adapter/b$k;

    .line 39
    .line 40
    iget-object v4, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->i:Lcom/mbridge/msdk/reward/adapter/b;

    .line 41
    .line 42
    invoke-static {v4}, Lcom/mbridge/msdk/reward/adapter/b;->a(Lcom/mbridge/msdk/reward/adapter/b;)Lcom/mbridge/msdk/reward/adapter/b$m;

    .line 43
    .line 44
    .line 45
    move-result-object v11

    .line 46
    iget-object v12, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->e:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v13, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->c:Ljava/lang/String;

    .line 49
    .line 50
    iget-object v14, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->f:Ljava/lang/String;

    .line 51
    .line 52
    iget-object v15, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->g:Ljava/lang/String;

    .line 53
    .line 54
    move-object v10, v0

    .line 55
    invoke-direct/range {v10 .. v15}, Lcom/mbridge/msdk/reward/adapter/b$k;-><init>(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    move-object v10, v0

    .line 59
    invoke-virtual/range {v5 .. v10}, Lcom/mbridge/msdk/videocommon/download/b;->createUnitCache(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/mbridge/msdk/videocommon/listener/a;)Lcom/mbridge/msdk/videocommon/download/l;

    .line 60
    .line 61
    .line 62
    invoke-static {}, Lcom/mbridge/msdk/videocommon/download/b;->getInstance()Lcom/mbridge/msdk/videocommon/download/b;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iget-object v4, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->c:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v0, v4}, Lcom/mbridge/msdk/videocommon/download/b;->load(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    sget-boolean v4, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    .line 74
    .line 75
    if-eqz v4, :cond_0

    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-static {v3, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :cond_0
    :goto_0
    iget-object v0, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_14

    .line 95
    .line 96
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    move-object v15, v0

    .line 101
    check-cast v15, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 102
    .line 103
    if-nez v15, :cond_1

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    const/16 v5, 0x6a

    .line 111
    .line 112
    iput v5, v0, Landroid/os/Message;->what:I

    .line 113
    .line 114
    new-instance v5, Landroid/os/Bundle;

    .line 115
    .line 116
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 117
    .line 118
    .line 119
    const-string v6, "unit_id"

    .line 120
    .line 121
    iget-object v7, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->c:Ljava/lang/String;

    .line 122
    .line 123
    invoke-virtual {v5, v6, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    sget-object v6, Lcom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    .line 127
    .line 128
    iget-object v7, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->e:Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {v5, v6, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    const-string v6, "request_id"

    .line 134
    .line 135
    iget-object v7, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->f:Ljava/lang/String;

    .line 136
    .line 137
    invoke-virtual {v5, v6, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    const-string v6, "key"

    .line 141
    .line 142
    new-instance v7, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .line 146
    .line 147
    iget-object v8, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->c:Ljava/lang/String;

    .line 148
    .line 149
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    iget-object v8, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->f:Ljava/lang/String;

    .line 156
    .line 157
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v15}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getSecondRequestIndex()I

    .line 164
    .line 165
    .line 166
    move-result v8

    .line 167
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v7

    .line 174
    invoke-virtual {v5, v6, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 178
    .line 179
    .line 180
    iget-object v5, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->i:Lcom/mbridge/msdk/reward/adapter/b;

    .line 181
    .line 182
    invoke-static {v5}, Lcom/mbridge/msdk/reward/adapter/b;->a(Lcom/mbridge/msdk/reward/adapter/b;)Lcom/mbridge/msdk/reward/adapter/b$m;

    .line 183
    .line 184
    .line 185
    move-result-object v5

    .line 186
    invoke-virtual {v5, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 187
    .line 188
    .line 189
    :catch_1
    invoke-virtual {v15}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    .line 190
    .line 191
    .line 192
    move-result-object v16

    .line 193
    const-string v14, ".zip"

    .line 194
    .line 195
    const/4 v13, 0x2

    .line 196
    const/4 v12, 0x1

    .line 197
    const-string v11, ""

    .line 198
    .line 199
    const-string v10, "dyview"

    .line 200
    .line 201
    if-eqz v16, :cond_2

    .line 202
    .line 203
    invoke-virtual/range {v16 .. v16}, Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;->e()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-virtual/range {v16 .. v16}, Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;->f()I

    .line 208
    .line 209
    .line 210
    move-result v5

    .line 211
    invoke-virtual {v15}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isDynamicView()Z

    .line 212
    .line 213
    .line 214
    move-result v6

    .line 215
    if-eqz v6, :cond_3

    .line 216
    .line 217
    invoke-static {v10, v0}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 218
    .line 219
    .line 220
    move-result v6

    .line 221
    if-eqz v6, :cond_3

    .line 222
    .line 223
    iget-object v6, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->i:Lcom/mbridge/msdk/reward/adapter/b;

    .line 224
    .line 225
    new-instance v7, Ljava/lang/StringBuilder;

    .line 226
    .line 227
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v5

    .line 240
    invoke-static {v6, v12, v15, v5, v0}, Lcom/mbridge/msdk/reward/adapter/b;->a(Lcom/mbridge/msdk/reward/adapter/b;ILcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    :cond_2
    move-object/from16 v19, v2

    .line 244
    .line 245
    move-object/from16 v23, v4

    .line 246
    .line 247
    move-object v2, v10

    .line 248
    move-object/from16 v17, v11

    .line 249
    .line 250
    move-object/from16 v27, v14

    .line 251
    .line 252
    goto/16 :goto_6

    .line 253
    .line 254
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 255
    .line 256
    .line 257
    move-result v5

    .line 258
    if-nez v5, :cond_2

    .line 259
    .line 260
    const-string v5, "cmpt=1"

    .line 261
    .line 262
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 263
    .line 264
    .line 265
    move-result v5

    .line 266
    if-nez v5, :cond_2

    .line 267
    .line 268
    iget-object v5, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->i:Lcom/mbridge/msdk/reward/adapter/b;

    .line 269
    .line 270
    invoke-static {v5, v15, v13}, Lcom/mbridge/msdk/reward/adapter/b;->a(Lcom/mbridge/msdk/reward/adapter/b;Lcom/mbridge/msdk/foundation/entity/CampaignEx;I)Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    .line 271
    .line 272
    .line 273
    move-result-object v9

    .line 274
    invoke-virtual {v0, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 275
    .line 276
    .line 277
    move-result v5

    .line 278
    if-eqz v5, :cond_5

    .line 279
    .line 280
    :try_start_2
    invoke-static {}, Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;->getInstance()Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;

    .line 281
    .line 282
    .line 283
    move-result-object v8

    .line 284
    new-instance v7, Lcom/mbridge/msdk/reward/adapter/b$l;

    .line 285
    .line 286
    iget-object v6, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->b:Landroid/content/Context;

    .line 287
    .line 288
    iget-object v5, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->e:Ljava/lang/String;

    .line 289
    .line 290
    iget-object v12, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->c:Ljava/lang/String;

    .line 291
    .line 292
    iget-object v13, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->f:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 293
    .line 294
    move-object/from16 v19, v2

    .line 295
    .line 296
    :try_start_3
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->i:Lcom/mbridge/msdk/reward/adapter/b;

    .line 297
    .line 298
    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/b;->a(Lcom/mbridge/msdk/reward/adapter/b;)Lcom/mbridge/msdk/reward/adapter/b$m;

    .line 299
    .line 300
    .line 301
    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 302
    move-object/from16 v20, v11

    .line 303
    .line 304
    :try_start_4
    iget-object v11, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->h:Lcom/mbridge/msdk/reward/adapter/b$n;

    .line 305
    .line 306
    move-object/from16 v21, v11

    .line 307
    .line 308
    iget-object v11, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 309
    .line 310
    const/16 v22, 0x35b

    .line 311
    .line 312
    move-object/from16 v23, v5

    .line 313
    .line 314
    move-object v5, v7

    .line 315
    move-object/from16 v24, v7

    .line 316
    .line 317
    move-object/from16 v7, v23

    .line 318
    .line 319
    move-object/from16 v25, v8

    .line 320
    .line 321
    move-object v8, v12

    .line 322
    move-object v12, v9

    .line 323
    move-object v9, v13

    .line 324
    move-object v13, v10

    .line 325
    move-object v10, v15

    .line 326
    move-object/from16 v23, v4

    .line 327
    .line 328
    move-object/from16 v4, v20

    .line 329
    .line 330
    move-object/from16 v20, v21

    .line 331
    .line 332
    move-object/from16 v21, v11

    .line 333
    .line 334
    move/from16 v11, v22

    .line 335
    .line 336
    move-object/from16 v26, v12

    .line 337
    .line 338
    move-object v12, v2

    .line 339
    move-object v2, v13

    .line 340
    move-object/from16 v13, v20

    .line 341
    .line 342
    move-object/from16 v27, v14

    .line 343
    .line 344
    move-object/from16 v14, v21

    .line 345
    .line 346
    :try_start_5
    invoke-direct/range {v5 .. v14}, Lcom/mbridge/msdk/reward/adapter/b$l;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;ILandroid/os/Handler;Lcom/mbridge/msdk/reward/adapter/b$n;Ljava/util/concurrent/CopyOnWriteArrayList;)V

    .line 347
    .line 348
    .line 349
    move-object/from16 v6, v24

    .line 350
    .line 351
    move-object/from16 v5, v25

    .line 352
    .line 353
    move-object/from16 v14, v26

    .line 354
    .line 355
    invoke-virtual {v5, v14, v0, v6}, Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;->downloadH5Res(Lcom/mbridge/msdk/foundation/same/report/metrics/c;Ljava/lang/String;Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager$H5ResDownloadListerInter;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 356
    .line 357
    .line 358
    :cond_4
    :goto_2
    move-object/from16 v17, v4

    .line 359
    .line 360
    goto/16 :goto_6

    .line 361
    .line 362
    :catch_2
    move-exception v0

    .line 363
    goto :goto_4

    .line 364
    :catch_3
    move-exception v0

    .line 365
    move-object/from16 v23, v4

    .line 366
    .line 367
    move-object v2, v10

    .line 368
    move-object/from16 v27, v14

    .line 369
    .line 370
    move-object/from16 v4, v20

    .line 371
    .line 372
    goto :goto_4

    .line 373
    :catch_4
    move-exception v0

    .line 374
    :goto_3
    move-object/from16 v23, v4

    .line 375
    .line 376
    move-object v2, v10

    .line 377
    move-object v4, v11

    .line 378
    move-object/from16 v27, v14

    .line 379
    .line 380
    goto :goto_4

    .line 381
    :catch_5
    move-exception v0

    .line 382
    move-object/from16 v19, v2

    .line 383
    .line 384
    goto :goto_3

    .line 385
    :goto_4
    sget-boolean v5, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    .line 386
    .line 387
    if-eqz v5, :cond_4

    .line 388
    .line 389
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v0

    .line 393
    invoke-static {v3, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    goto :goto_2

    .line 397
    :cond_5
    move-object/from16 v19, v2

    .line 398
    .line 399
    move-object/from16 v23, v4

    .line 400
    .line 401
    move-object v2, v10

    .line 402
    move-object v4, v11

    .line 403
    move-object/from16 v27, v14

    .line 404
    .line 405
    move-object v14, v9

    .line 406
    const-string v5, "\u5f00\u59cb\u4e0b\u8f7d html \u7c7b\u578b\u7684 template"

    .line 407
    .line 408
    invoke-static {v3, v5}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    :try_start_6
    invoke-static {}, Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;->getInstance()Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;

    .line 412
    .line 413
    .line 414
    move-result-object v13

    .line 415
    new-instance v12, Lcom/mbridge/msdk/reward/adapter/b$i;

    .line 416
    .line 417
    iget-object v7, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->e:Ljava/lang/String;

    .line 418
    .line 419
    iget-object v8, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->c:Ljava/lang/String;

    .line 420
    .line 421
    iget-object v9, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->f:Ljava/lang/String;

    .line 422
    .line 423
    iget-object v11, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->h:Lcom/mbridge/msdk/reward/adapter/b$n;

    .line 424
    .line 425
    iget-object v5, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->i:Lcom/mbridge/msdk/reward/adapter/b;

    .line 426
    .line 427
    invoke-static {v5}, Lcom/mbridge/msdk/reward/adapter/b;->a(Lcom/mbridge/msdk/reward/adapter/b;)Lcom/mbridge/msdk/reward/adapter/b$m;

    .line 428
    .line 429
    .line 430
    move-result-object v17

    .line 431
    iget-object v10, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    .line 432
    .line 433
    const/16 v6, 0x35b

    .line 434
    .line 435
    move-object v5, v12

    .line 436
    move-object/from16 v20, v10

    .line 437
    .line 438
    move-object v10, v15

    .line 439
    move-object/from16 v28, v12

    .line 440
    .line 441
    move-object/from16 v12, v17

    .line 442
    .line 443
    move-object/from16 v17, v4

    .line 444
    .line 445
    move-object v4, v13

    .line 446
    move-object/from16 v13, v20

    .line 447
    .line 448
    :try_start_7
    invoke-direct/range {v5 .. v13}, Lcom/mbridge/msdk/reward/adapter/b$i;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/reward/adapter/b$n;Landroid/os/Handler;Ljava/util/concurrent/CopyOnWriteArrayList;)V

    .line 449
    .line 450
    .line 451
    move-object/from16 v5, v28

    .line 452
    .line 453
    invoke-virtual {v4, v14, v0, v5}, Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;->downloadH5Res(Lcom/mbridge/msdk/foundation/same/report/metrics/c;Ljava/lang/String;Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager$H5ResDownloadListerInter;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 454
    .line 455
    .line 456
    goto :goto_6

    .line 457
    :catch_6
    move-exception v0

    .line 458
    goto :goto_5

    .line 459
    :catch_7
    move-exception v0

    .line 460
    move-object/from16 v17, v4

    .line 461
    .line 462
    :goto_5
    sget-boolean v4, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    .line 463
    .line 464
    if-eqz v4, :cond_6

    .line 465
    .line 466
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v0

    .line 470
    invoke-static {v3, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    .line 472
    .line 473
    :cond_6
    :goto_6
    invoke-virtual {v15}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object v11

    .line 477
    invoke-virtual {v15}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isDynamicView()Z

    .line 478
    .line 479
    .line 480
    move-result v0

    .line 481
    invoke-static {v11}, Lcom/mbridge/msdk/foundation/tools/t0;->l(Ljava/lang/String;)Z

    .line 482
    .line 483
    .line 484
    move-result v4

    .line 485
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 486
    .line 487
    .line 488
    move-result v5

    .line 489
    if-nez v5, :cond_9

    .line 490
    .line 491
    if-nez v0, :cond_7

    .line 492
    .line 493
    iget-object v5, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->i:Lcom/mbridge/msdk/reward/adapter/b;

    .line 494
    .line 495
    iget-object v6, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->b:Landroid/content/Context;

    .line 496
    .line 497
    iget-object v7, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->e:Ljava/lang/String;

    .line 498
    .line 499
    iget-object v8, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->c:Ljava/lang/String;

    .line 500
    .line 501
    iget-object v9, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->f:Ljava/lang/String;

    .line 502
    .line 503
    iget-object v12, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->h:Lcom/mbridge/msdk/reward/adapter/b$n;

    .line 504
    .line 505
    iget-object v13, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 506
    .line 507
    move-object v10, v15

    .line 508
    invoke-static/range {v5 .. v13}, Lcom/mbridge/msdk/reward/adapter/b;->a(Lcom/mbridge/msdk/reward/adapter/b;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Lcom/mbridge/msdk/reward/adapter/b$n;Ljava/util/concurrent/CopyOnWriteArrayList;)V

    .line 509
    .line 510
    .line 511
    goto :goto_8

    .line 512
    :cond_7
    if-eqz v4, :cond_8

    .line 513
    .line 514
    iget-object v5, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->i:Lcom/mbridge/msdk/reward/adapter/b;

    .line 515
    .line 516
    iget-object v6, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->b:Landroid/content/Context;

    .line 517
    .line 518
    iget-object v7, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->e:Ljava/lang/String;

    .line 519
    .line 520
    iget-object v8, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->c:Ljava/lang/String;

    .line 521
    .line 522
    iget-object v9, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->f:Ljava/lang/String;

    .line 523
    .line 524
    iget-object v12, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->h:Lcom/mbridge/msdk/reward/adapter/b$n;

    .line 525
    .line 526
    iget-object v13, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 527
    .line 528
    move-object v10, v15

    .line 529
    invoke-static/range {v5 .. v13}, Lcom/mbridge/msdk/reward/adapter/b;->a(Lcom/mbridge/msdk/reward/adapter/b;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Lcom/mbridge/msdk/reward/adapter/b$n;Ljava/util/concurrent/CopyOnWriteArrayList;)V

    .line 530
    .line 531
    .line 532
    goto :goto_8

    .line 533
    :cond_8
    invoke-static {v2, v11}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 534
    .line 535
    .line 536
    move-result v0

    .line 537
    if-eqz v0, :cond_9

    .line 538
    .line 539
    :try_start_8
    const-string v0, "ecid"

    .line 540
    .line 541
    invoke-static {v11, v0}, Lcom/mbridge/msdk/foundation/tools/z0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 542
    .line 543
    .line 544
    move-result-object v0

    .line 545
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 546
    .line 547
    .line 548
    move-result v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 549
    goto :goto_7

    .line 550
    :catchall_0
    move-exception v0

    .line 551
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object v0

    .line 555
    invoke-static {v3, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    .line 557
    .line 558
    const/16 v0, 0x194

    .line 559
    .line 560
    :goto_7
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->i:Lcom/mbridge/msdk/reward/adapter/b;

    .line 561
    .line 562
    new-instance v4, Ljava/lang/StringBuilder;

    .line 563
    .line 564
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 565
    .line 566
    .line 567
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 568
    .line 569
    .line 570
    move-object/from16 v5, v17

    .line 571
    .line 572
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    .line 574
    .line 575
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 576
    .line 577
    .line 578
    move-result-object v0

    .line 579
    const/4 v4, 0x2

    .line 580
    invoke-static {v2, v4, v15, v0, v11}, Lcom/mbridge/msdk/reward/adapter/b;->a(Lcom/mbridge/msdk/reward/adapter/b;ILcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    .line 582
    .line 583
    :cond_9
    :goto_8
    invoke-virtual {v15}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getEndScreenUrl()Ljava/lang/String;

    .line 584
    .line 585
    .line 586
    move-result-object v0

    .line 587
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 588
    .line 589
    .line 590
    move-result v0

    .line 591
    if-nez v0, :cond_a

    .line 592
    .line 593
    invoke-virtual {v15}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isDynamicView()Z

    .line 594
    .line 595
    .line 596
    move-result v0

    .line 597
    if-nez v0, :cond_a

    .line 598
    .line 599
    iget-object v0, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->i:Lcom/mbridge/msdk/reward/adapter/b;

    .line 600
    .line 601
    const/4 v2, 0x6

    .line 602
    invoke-static {v0, v15, v2}, Lcom/mbridge/msdk/reward/adapter/b;->a(Lcom/mbridge/msdk/reward/adapter/b;Lcom/mbridge/msdk/foundation/entity/CampaignEx;I)Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    .line 603
    .line 604
    .line 605
    move-result-object v0

    .line 606
    invoke-static {}, Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;->getInstance()Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;

    .line 607
    .line 608
    .line 609
    move-result-object v2

    .line 610
    invoke-virtual {v15}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getEndScreenUrl()Ljava/lang/String;

    .line 611
    .line 612
    .line 613
    move-result-object v4

    .line 614
    invoke-virtual {v2, v0, v4}, Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;->download(Lcom/mbridge/msdk/foundation/same/report/metrics/c;Ljava/lang/String;)V

    .line 615
    .line 616
    .line 617
    :cond_a
    invoke-virtual {v15}, Lcom/mbridge/msdk/out/Campaign;->getIconUrl()Ljava/lang/String;

    .line 618
    .line 619
    .line 620
    move-result-object v0

    .line 621
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 622
    .line 623
    .line 624
    move-result v2

    .line 625
    if-nez v2, :cond_b

    .line 626
    .line 627
    :try_start_9
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->b:Landroid/content/Context;

    .line 628
    .line 629
    invoke-static {v2}, Lcom/mbridge/msdk/foundation/same/image/b;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/same/image/b;

    .line 630
    .line 631
    .line 632
    move-result-object v2

    .line 633
    new-instance v4, Lcom/mbridge/msdk/reward/adapter/b$j;

    .line 634
    .line 635
    iget-object v5, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->i:Lcom/mbridge/msdk/reward/adapter/b;

    .line 636
    .line 637
    invoke-static {v5}, Lcom/mbridge/msdk/reward/adapter/b;->a(Lcom/mbridge/msdk/reward/adapter/b;)Lcom/mbridge/msdk/reward/adapter/b$m;

    .line 638
    .line 639
    .line 640
    move-result-object v6

    .line 641
    iget-object v8, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->e:Ljava/lang/String;

    .line 642
    .line 643
    iget-object v9, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->c:Ljava/lang/String;

    .line 644
    .line 645
    iget-object v10, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->f:Ljava/lang/String;

    .line 646
    .line 647
    const/4 v7, 0x0

    .line 648
    move-object v5, v4

    .line 649
    move-object v11, v15

    .line 650
    invoke-direct/range {v5 .. v11}, Lcom/mbridge/msdk/reward/adapter/b$j;-><init>(Landroid/os/Handler;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 651
    .line 652
    .line 653
    invoke-virtual {v2, v0, v4}, Lcom/mbridge/msdk/foundation/same/image/b;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/image/c;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    .line 654
    .line 655
    .line 656
    goto :goto_9

    .line 657
    :catch_8
    move-exception v0

    .line 658
    sget-boolean v2, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    .line 659
    .line 660
    if-eqz v2, :cond_b

    .line 661
    .line 662
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 663
    .line 664
    .line 665
    move-result-object v0

    .line 666
    invoke-static {v3, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    .line 668
    .line 669
    :cond_b
    :goto_9
    invoke-virtual {v15}, Lcom/mbridge/msdk/out/Campaign;->getImageUrl()Ljava/lang/String;

    .line 670
    .line 671
    .line 672
    move-result-object v0

    .line 673
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 674
    .line 675
    .line 676
    move-result v2

    .line 677
    if-nez v2, :cond_c

    .line 678
    .line 679
    :try_start_a
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->b:Landroid/content/Context;

    .line 680
    .line 681
    invoke-static {v2}, Lcom/mbridge/msdk/foundation/same/image/b;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/same/image/b;

    .line 682
    .line 683
    .line 684
    move-result-object v2

    .line 685
    new-instance v4, Lcom/mbridge/msdk/reward/adapter/b$j;

    .line 686
    .line 687
    iget-object v5, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->i:Lcom/mbridge/msdk/reward/adapter/b;

    .line 688
    .line 689
    invoke-static {v5}, Lcom/mbridge/msdk/reward/adapter/b;->a(Lcom/mbridge/msdk/reward/adapter/b;)Lcom/mbridge/msdk/reward/adapter/b$m;

    .line 690
    .line 691
    .line 692
    move-result-object v6

    .line 693
    iget-object v8, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->e:Ljava/lang/String;

    .line 694
    .line 695
    iget-object v9, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->c:Ljava/lang/String;

    .line 696
    .line 697
    iget-object v10, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->f:Ljava/lang/String;

    .line 698
    .line 699
    const/4 v7, 0x0

    .line 700
    move-object v5, v4

    .line 701
    move-object v11, v15

    .line 702
    invoke-direct/range {v5 .. v11}, Lcom/mbridge/msdk/reward/adapter/b$j;-><init>(Landroid/os/Handler;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 703
    .line 704
    .line 705
    invoke-virtual {v2, v0, v4}, Lcom/mbridge/msdk/foundation/same/image/b;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/image/c;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    .line 706
    .line 707
    .line 708
    goto :goto_a

    .line 709
    :catch_9
    move-exception v0

    .line 710
    sget-boolean v2, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    .line 711
    .line 712
    if-eqz v2, :cond_c

    .line 713
    .line 714
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 715
    .line 716
    .line 717
    move-result-object v0

    .line 718
    invoke-static {v3, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    .line 720
    .line 721
    :cond_c
    :goto_a
    if-eqz v16, :cond_13

    .line 722
    .line 723
    invoke-virtual/range {v16 .. v16}, Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;->c()Ljava/lang/String;

    .line 724
    .line 725
    .line 726
    move-result-object v0

    .line 727
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 728
    .line 729
    .line 730
    move-result v2

    .line 731
    if-nez v2, :cond_f

    .line 732
    .line 733
    invoke-virtual {v15}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isDynamicView()Z

    .line 734
    .line 735
    .line 736
    move-result v2

    .line 737
    if-nez v2, :cond_f

    .line 738
    .line 739
    invoke-virtual {v15}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAabEntity()Lcom/mbridge/msdk/foundation/entity/AabEntity;

    .line 740
    .line 741
    .line 742
    move-result-object v2

    .line 743
    if-eqz v2, :cond_d

    .line 744
    .line 745
    invoke-virtual {v15}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAabEntity()Lcom/mbridge/msdk/foundation/entity/AabEntity;

    .line 746
    .line 747
    .line 748
    move-result-object v2

    .line 749
    iget v2, v2, Lcom/mbridge/msdk/foundation/entity/AabEntity;->h3c:I

    .line 750
    .line 751
    goto :goto_b

    .line 752
    :cond_d
    const/4 v2, 0x0

    .line 753
    :goto_b
    new-instance v4, Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    .line 754
    .line 755
    const/4 v5, 0x1

    .line 756
    invoke-direct {v4, v5}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;-><init>(Z)V

    .line 757
    .line 758
    .line 759
    invoke-virtual {v4, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->f(I)V

    .line 760
    .line 761
    .line 762
    move-object/from16 v2, v27

    .line 763
    .line 764
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 765
    .line 766
    .line 767
    move-result v2

    .line 768
    if-eqz v2, :cond_e

    .line 769
    .line 770
    const-string v2, "\u5f00\u59cb\u4e0b\u8f7d zip \u7c7b\u578b\u7684 pause"

    .line 771
    .line 772
    invoke-static {v3, v2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    .line 774
    .line 775
    :try_start_b
    invoke-static {}, Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;->getInstance()Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;

    .line 776
    .line 777
    .line 778
    move-result-object v2

    .line 779
    new-instance v14, Lcom/mbridge/msdk/reward/adapter/b$l;

    .line 780
    .line 781
    iget-object v6, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->b:Landroid/content/Context;

    .line 782
    .line 783
    iget-object v7, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->e:Ljava/lang/String;

    .line 784
    .line 785
    iget-object v8, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->c:Ljava/lang/String;

    .line 786
    .line 787
    iget-object v9, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->f:Ljava/lang/String;

    .line 788
    .line 789
    iget-object v5, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->i:Lcom/mbridge/msdk/reward/adapter/b;

    .line 790
    .line 791
    invoke-static {v5}, Lcom/mbridge/msdk/reward/adapter/b;->a(Lcom/mbridge/msdk/reward/adapter/b;)Lcom/mbridge/msdk/reward/adapter/b$m;

    .line 792
    .line 793
    .line 794
    move-result-object v12

    .line 795
    iget-object v13, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->h:Lcom/mbridge/msdk/reward/adapter/b$n;

    .line 796
    .line 797
    iget-object v11, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    .line 798
    .line 799
    const/16 v17, 0x139

    .line 800
    .line 801
    move-object v5, v14

    .line 802
    move-object v10, v15

    .line 803
    move-object/from16 v18, v11

    .line 804
    .line 805
    move/from16 v11, v17

    .line 806
    .line 807
    move-object/from16 v17, v15

    .line 808
    .line 809
    move-object v15, v14

    .line 810
    move-object/from16 v14, v18

    .line 811
    .line 812
    :try_start_c
    invoke-direct/range {v5 .. v14}, Lcom/mbridge/msdk/reward/adapter/b$l;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;ILandroid/os/Handler;Lcom/mbridge/msdk/reward/adapter/b$n;Ljava/util/concurrent/CopyOnWriteArrayList;)V

    .line 813
    .line 814
    .line 815
    invoke-virtual {v2, v4, v0, v15}, Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;->downloadH5Res(Lcom/mbridge/msdk/foundation/same/report/metrics/c;Ljava/lang/String;Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager$H5ResDownloadListerInter;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a

    .line 816
    .line 817
    .line 818
    goto :goto_d

    .line 819
    :catch_a
    move-exception v0

    .line 820
    goto :goto_c

    .line 821
    :catch_b
    move-exception v0

    .line 822
    move-object/from16 v17, v15

    .line 823
    .line 824
    :goto_c
    sget-boolean v2, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    .line 825
    .line 826
    if-eqz v2, :cond_10

    .line 827
    .line 828
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 829
    .line 830
    .line 831
    move-result-object v0

    .line 832
    invoke-static {v3, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    .line 834
    .line 835
    goto :goto_d

    .line 836
    :cond_e
    move-object/from16 v17, v15

    .line 837
    .line 838
    :try_start_d
    invoke-static {}, Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;->getInstance()Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;

    .line 839
    .line 840
    .line 841
    move-result-object v2

    .line 842
    new-instance v14, Lcom/mbridge/msdk/reward/adapter/b$i;

    .line 843
    .line 844
    iget-object v7, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->e:Ljava/lang/String;

    .line 845
    .line 846
    iget-object v8, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->c:Ljava/lang/String;

    .line 847
    .line 848
    iget-object v9, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->f:Ljava/lang/String;

    .line 849
    .line 850
    iget-object v11, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->h:Lcom/mbridge/msdk/reward/adapter/b$n;

    .line 851
    .line 852
    iget-object v5, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->i:Lcom/mbridge/msdk/reward/adapter/b;

    .line 853
    .line 854
    invoke-static {v5}, Lcom/mbridge/msdk/reward/adapter/b;->a(Lcom/mbridge/msdk/reward/adapter/b;)Lcom/mbridge/msdk/reward/adapter/b$m;

    .line 855
    .line 856
    .line 857
    move-result-object v12

    .line 858
    iget-object v13, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 859
    .line 860
    const/16 v6, 0x139

    .line 861
    .line 862
    move-object v5, v14

    .line 863
    move-object/from16 v10, v17

    .line 864
    .line 865
    invoke-direct/range {v5 .. v13}, Lcom/mbridge/msdk/reward/adapter/b$i;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/reward/adapter/b$n;Landroid/os/Handler;Ljava/util/concurrent/CopyOnWriteArrayList;)V

    .line 866
    .line 867
    .line 868
    invoke-virtual {v2, v4, v0, v14}, Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;->downloadH5Res(Lcom/mbridge/msdk/foundation/same/report/metrics/c;Ljava/lang/String;Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager$H5ResDownloadListerInter;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_c

    .line 869
    .line 870
    .line 871
    goto :goto_d

    .line 872
    :catch_c
    move-exception v0

    .line 873
    sget-boolean v2, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    .line 874
    .line 875
    if-eqz v2, :cond_10

    .line 876
    .line 877
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 878
    .line 879
    .line 880
    move-result-object v0

    .line 881
    invoke-static {v3, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    .line 883
    .line 884
    goto :goto_d

    .line 885
    :cond_f
    move-object/from16 v17, v15

    .line 886
    .line 887
    :cond_10
    :goto_d
    invoke-virtual/range {v16 .. v16}, Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;->a()Ljava/util/List;

    .line 888
    .line 889
    .line 890
    move-result-object v0

    .line 891
    if-eqz v0, :cond_13

    .line 892
    .line 893
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 894
    .line 895
    .line 896
    move-result v2

    .line 897
    if-lez v2, :cond_13

    .line 898
    .line 899
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 900
    .line 901
    .line 902
    move-result-object v2

    .line 903
    :cond_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 904
    .line 905
    .line 906
    move-result v0

    .line 907
    if-eqz v0, :cond_13

    .line 908
    .line 909
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 910
    .line 911
    .line 912
    move-result-object v0

    .line 913
    check-cast v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx$c$a;

    .line 914
    .line 915
    if-eqz v0, :cond_11

    .line 916
    .line 917
    iget-object v4, v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx$c$a;->a:Ljava/util/List;

    .line 918
    .line 919
    if-eqz v4, :cond_11

    .line 920
    .line 921
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 922
    .line 923
    .line 924
    move-result v4

    .line 925
    if-lez v4, :cond_11

    .line 926
    .line 927
    iget-object v0, v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx$c$a;->a:Ljava/util/List;

    .line 928
    .line 929
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 930
    .line 931
    .line 932
    move-result-object v4

    .line 933
    :cond_12
    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 934
    .line 935
    .line 936
    move-result v0

    .line 937
    if-eqz v0, :cond_11

    .line 938
    .line 939
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 940
    .line 941
    .line 942
    move-result-object v0

    .line 943
    check-cast v0, Ljava/lang/String;

    .line 944
    .line 945
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 946
    .line 947
    .line 948
    move-result v5

    .line 949
    if-nez v5, :cond_12

    .line 950
    .line 951
    :try_start_e
    iget-object v5, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->b:Landroid/content/Context;

    .line 952
    .line 953
    invoke-static {v5}, Lcom/mbridge/msdk/foundation/same/image/b;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/same/image/b;

    .line 954
    .line 955
    .line 956
    move-result-object v12

    .line 957
    new-instance v13, Lcom/mbridge/msdk/reward/adapter/b$j;

    .line 958
    .line 959
    iget-object v5, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->i:Lcom/mbridge/msdk/reward/adapter/b;

    .line 960
    .line 961
    invoke-static {v5}, Lcom/mbridge/msdk/reward/adapter/b;->a(Lcom/mbridge/msdk/reward/adapter/b;)Lcom/mbridge/msdk/reward/adapter/b$m;

    .line 962
    .line 963
    .line 964
    move-result-object v6

    .line 965
    iget-object v8, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->e:Ljava/lang/String;

    .line 966
    .line 967
    iget-object v9, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->c:Ljava/lang/String;

    .line 968
    .line 969
    iget-object v10, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->f:Ljava/lang/String;

    .line 970
    .line 971
    const/4 v7, 0x1

    .line 972
    move-object v5, v13

    .line 973
    move-object/from16 v11, v17

    .line 974
    .line 975
    invoke-direct/range {v5 .. v11}, Lcom/mbridge/msdk/reward/adapter/b$j;-><init>(Landroid/os/Handler;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 976
    .line 977
    .line 978
    invoke-virtual {v12, v0, v13}, Lcom/mbridge/msdk/foundation/same/image/b;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/image/c;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_d

    .line 979
    .line 980
    .line 981
    goto :goto_e

    .line 982
    :catch_d
    move-exception v0

    .line 983
    sget-boolean v5, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    .line 984
    .line 985
    if-eqz v5, :cond_12

    .line 986
    .line 987
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 988
    .line 989
    .line 990
    move-result-object v0

    .line 991
    invoke-static {v3, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    .line 993
    .line 994
    goto :goto_e

    .line 995
    :cond_13
    move-object/from16 v2, v19

    .line 996
    .line 997
    move-object/from16 v4, v23

    .line 998
    .line 999
    goto/16 :goto_1

    .line 1000
    .line 1001
    :cond_14
    return-void
.end method
