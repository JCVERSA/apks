.class final Lcom/mbridge/msdk/reward/adapter/b$m;
.super Landroid/os/Handler;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/reward/adapter/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "m"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/mbridge/msdk/reward/adapter/b$h;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/mbridge/msdk/reward/adapter/b$m;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/mbridge/msdk/reward/adapter/b$m;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mbridge/msdk/reward/adapter/b$m;->a:Landroid/content/Context;

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/mbridge/msdk/reward/adapter/b$h;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/reward/adapter/b$m;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;)V"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/mbridge/msdk/reward/adapter/b$m;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 29

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    sget-object v3, Lcom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    const-string v4, "unit_id"

    .line 16
    .line 17
    invoke-virtual {v2, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    const-string v5, "request_id"

    .line 22
    .line 23
    invoke-virtual {v2, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    const-string v6, "key"

    .line 28
    .line 29
    invoke-virtual {v2, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    invoke-static {}, Lcom/mbridge/msdk/reward/adapter/b;->a()Ljava/util/concurrent/ConcurrentHashMap;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    invoke-virtual {v7, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    check-cast v7, Lcom/mbridge/msdk/reward/adapter/b$f;

    .line 42
    .line 43
    iget-object v8, v1, Lcom/mbridge/msdk/reward/adapter/b$m;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 44
    .line 45
    invoke-virtual {v8, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v8

    .line 49
    check-cast v8, Lcom/mbridge/msdk/reward/adapter/b$h;

    .line 50
    .line 51
    iget-object v9, v1, Lcom/mbridge/msdk/reward/adapter/b$m;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 52
    .line 53
    invoke-virtual {v9, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v9

    .line 57
    move-object/from16 v17, v9

    .line 58
    .line 59
    check-cast v17, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 60
    .line 61
    iget v9, v0, Landroid/os/Message;->what:I

    .line 62
    .line 63
    const-string v15, "RewardCampaignsResourceManager"

    .line 64
    .line 65
    const/4 v14, 0x0

    .line 66
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object v13

    .line 70
    packed-switch v9, :pswitch_data_0

    .line 71
    .line 72
    .line 73
    packed-switch v9, :pswitch_data_1

    .line 74
    .line 75
    .line 76
    goto/16 :goto_10

    .line 77
    .line 78
    :pswitch_0
    move-object v2, v6

    .line 79
    goto/16 :goto_d

    .line 80
    .line 81
    :pswitch_1
    if-eqz v7, :cond_21

    .line 82
    .line 83
    if-eqz v8, :cond_21

    .line 84
    .line 85
    const-string v9, "message"

    .line 86
    .line 87
    invoke-virtual {v2, v9}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v9

    .line 91
    if-nez v9, :cond_0

    .line 92
    .line 93
    const-string v9, ""

    .line 94
    .line 95
    :cond_0
    iget v10, v0, Landroid/os/Message;->what:I

    .line 96
    .line 97
    invoke-static {v10}, Lcom/mbridge/msdk/reward/adapter/b;->a(I)I

    .line 98
    .line 99
    .line 100
    move-result v12

    .line 101
    new-instance v10, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    const-string v11, "resource download failed "

    .line 107
    .line 108
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    iget v11, v0, Landroid/os/Message;->what:I

    .line 112
    .line 113
    invoke-static {v11}, Lcom/mbridge/msdk/reward/adapter/b;->b(I)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v11

    .line 117
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v11, " "

    .line 121
    .line 122
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v9

    .line 132
    iget-object v10, v7, Lcom/mbridge/msdk/reward/adapter/b$f;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 133
    .line 134
    if-eqz v10, :cond_1

    .line 135
    .line 136
    invoke-virtual {v10}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 137
    .line 138
    .line 139
    move-result v10

    .line 140
    if-lez v10, :cond_1

    .line 141
    .line 142
    iget-object v10, v7, Lcom/mbridge/msdk/reward/adapter/b$f;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 143
    .line 144
    invoke-virtual {v10, v14}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v10

    .line 148
    check-cast v10, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 149
    .line 150
    move-object/from16 v18, v10

    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_1
    const/16 v18, 0x0

    .line 154
    .line 155
    :goto_0
    :try_start_0
    iget-boolean v10, v7, Lcom/mbridge/msdk/reward/adapter/b$f;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    .line 157
    const/16 v19, 0x3

    .line 158
    .line 159
    const/16 v14, 0xc8

    .line 160
    .line 161
    const/16 v21, 0x2

    .line 162
    .line 163
    const/4 v11, 0x1

    .line 164
    if-eqz v10, :cond_19

    .line 165
    .line 166
    :try_start_1
    iget-object v10, v7, Lcom/mbridge/msdk/reward/adapter/b$f;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 167
    .line 168
    if-eqz v10, :cond_19

    .line 169
    .line 170
    iget v10, v7, Lcom/mbridge/msdk/reward/adapter/b$f;->c:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    .line 171
    .line 172
    if-ne v10, v11, :cond_8

    .line 173
    .line 174
    if-eqz v18, :cond_7

    .line 175
    .line 176
    :try_start_2
    invoke-virtual/range {v18 .. v18}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    if-eqz v2, :cond_7

    .line 181
    .line 182
    invoke-virtual/range {v18 .. v18}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 187
    .line 188
    .line 189
    move-result v2

    .line 190
    if-lez v2, :cond_7

    .line 191
    .line 192
    iget v0, v0, Landroid/os/Message;->what:I

    .line 193
    .line 194
    if-eq v0, v14, :cond_6

    .line 195
    .line 196
    const/16 v2, 0xc9

    .line 197
    .line 198
    if-eq v0, v2, :cond_5

    .line 199
    .line 200
    const/16 v2, 0xcb

    .line 201
    .line 202
    if-eq v0, v2, :cond_4

    .line 203
    .line 204
    const/16 v2, 0xcd

    .line 205
    .line 206
    if-eq v0, v2, :cond_2

    .line 207
    .line 208
    goto :goto_2

    .line 209
    :cond_2
    invoke-virtual/range {v18 .. v18}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    if-eqz v0, :cond_3

    .line 222
    .line 223
    return-void

    .line 224
    :cond_3
    iget-object v0, v7, Lcom/mbridge/msdk/reward/adapter/b$f;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 225
    .line 226
    if-eqz v0, :cond_7

    .line 227
    .line 228
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    if-lez v0, :cond_7

    .line 233
    .line 234
    iget-object v0, v7, Lcom/mbridge/msdk/reward/adapter/b$f;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 235
    .line 236
    const/4 v10, 0x0

    .line 237
    invoke-virtual {v0, v10}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    check-cast v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 242
    .line 243
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCMPTEntryUrl()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    if-eqz v0, :cond_7

    .line 256
    .line 257
    invoke-virtual/range {v18 .. v18}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 262
    .line 263
    .line 264
    move-result-object v2

    .line 265
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    move-result v0

    .line 269
    if-eqz v0, :cond_7

    .line 270
    .line 271
    return-void

    .line 272
    :catch_0
    move-exception v0

    .line 273
    move v6, v12

    .line 274
    :goto_1
    const/4 v10, 0x0

    .line 275
    goto/16 :goto_c

    .line 276
    .line 277
    :cond_4
    invoke-virtual/range {v18 .. v18}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 282
    .line 283
    .line 284
    move-result-object v2

    .line 285
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    move-result v0

    .line 289
    if-eqz v0, :cond_7

    .line 290
    .line 291
    return-void

    .line 292
    :cond_5
    invoke-virtual/range {v18 .. v18}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    move-result v0

    .line 304
    if-eqz v0, :cond_7

    .line 305
    .line 306
    return-void

    .line 307
    :cond_6
    invoke-virtual/range {v18 .. v18}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 315
    if-eqz v0, :cond_7

    .line 316
    .line 317
    return-void

    .line 318
    :cond_7
    :goto_2
    :try_start_3
    new-instance v0, Lcom/mbridge/msdk/out/MBridgeIds;

    .line 319
    .line 320
    invoke-direct {v0, v3, v4, v5}, Lcom/mbridge/msdk/out/MBridgeIds;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    iget-object v2, v7, Lcom/mbridge/msdk/reward/adapter/b$f;->h:Ljava/util/concurrent/CopyOnWriteArrayList;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 324
    .line 325
    const/4 v10, 0x0

    .line 326
    :try_start_4
    invoke-static {v12, v0, v9, v10, v10}, Lcom/mbridge/msdk/reward/adapter/b;->a(ILcom/mbridge/msdk/out/MBridgeIds;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Lcom/mbridge/msdk/foundation/error/b;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    invoke-interface {v8, v2, v0}, Lcom/mbridge/msdk/reward/adapter/b$h;->a(Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/mbridge/msdk/foundation/error/b;)V

    .line 331
    .line 332
    .line 333
    iget-object v0, v1, Lcom/mbridge/msdk/reward/adapter/b$m;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 334
    .line 335
    invoke-virtual {v0, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    invoke-static {}, Lcom/mbridge/msdk/reward/adapter/b;->a()Ljava/util/concurrent/ConcurrentHashMap;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    invoke-virtual {v0, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    iget-object v0, v1, Lcom/mbridge/msdk/reward/adapter/b$m;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 346
    .line 347
    invoke-virtual {v0, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 348
    .line 349
    .line 350
    goto/16 :goto_10

    .line 351
    .line 352
    :catch_1
    move-exception v0

    .line 353
    :goto_3
    move v6, v12

    .line 354
    goto/16 :goto_c

    .line 355
    .line 356
    :catch_2
    move-exception v0

    .line 357
    const/4 v10, 0x0

    .line 358
    goto :goto_3

    .line 359
    :cond_8
    const/16 v16, 0x0

    .line 360
    .line 361
    :try_start_5
    const-string v10, "url"

    .line 362
    .line 363
    invoke-virtual {v2, v10}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v2

    .line 367
    iget v0, v0, Landroid/os/Message;->what:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    .line 368
    .line 369
    if-eq v0, v14, :cond_14

    .line 370
    .line 371
    const/16 v10, 0xc9

    .line 372
    .line 373
    if-eq v0, v10, :cond_f

    .line 374
    .line 375
    const/16 v10, 0xcb

    .line 376
    .line 377
    if-eq v0, v10, :cond_b

    .line 378
    .line 379
    const/16 v10, 0xcd

    .line 380
    .line 381
    if-eq v0, v10, :cond_9

    .line 382
    .line 383
    goto/16 :goto_7

    .line 384
    .line 385
    :cond_9
    if-eqz v18, :cond_a

    .line 386
    .line 387
    :try_start_6
    invoke-virtual/range {v18 .. v18}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    .line 388
    .line 389
    .line 390
    move-result-object v0

    .line 391
    if-eqz v0, :cond_a

    .line 392
    .line 393
    invoke-virtual/range {v18 .. v18}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 398
    .line 399
    .line 400
    move-result v0

    .line 401
    if-lez v0, :cond_a

    .line 402
    .line 403
    invoke-virtual/range {v18 .. v18}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    .line 404
    .line 405
    .line 406
    move-result-object v0

    .line 407
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 408
    .line 409
    .line 410
    move-result-object v2

    .line 411
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 412
    .line 413
    .line 414
    move-result v0

    .line 415
    if-eqz v0, :cond_a

    .line 416
    .line 417
    const-string v0, "Is TPL but download BTL Template fail but hit ignoreCheckRule"

    .line 418
    .line 419
    invoke-static {v15, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    return-void

    .line 423
    :catch_3
    move-exception v0

    .line 424
    move v6, v12

    .line 425
    move-object/from16 v10, v16

    .line 426
    .line 427
    goto/16 :goto_c

    .line 428
    .line 429
    :cond_a
    iget-object v0, v7, Lcom/mbridge/msdk/reward/adapter/b$f;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 430
    .line 431
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 432
    .line 433
    .line 434
    invoke-static {}, Lcom/mbridge/msdk/reward/adapter/b;->a()Ljava/util/concurrent/ConcurrentHashMap;

    .line 435
    .line 436
    .line 437
    move-result-object v0

    .line 438
    invoke-virtual {v0, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    .line 440
    .line 441
    invoke-static {}, Lcom/mbridge/msdk/reward/adapter/b;->a()Ljava/util/concurrent/ConcurrentHashMap;

    .line 442
    .line 443
    .line 444
    move-result-object v0

    .line 445
    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    .line 447
    .line 448
    goto/16 :goto_7

    .line 449
    .line 450
    :cond_b
    if-eqz v18, :cond_c

    .line 451
    .line 452
    invoke-virtual/range {v18 .. v18}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    .line 453
    .line 454
    .line 455
    move-result-object v0

    .line 456
    if-eqz v0, :cond_c

    .line 457
    .line 458
    invoke-virtual/range {v18 .. v18}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    .line 459
    .line 460
    .line 461
    move-result-object v0

    .line 462
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 463
    .line 464
    .line 465
    move-result v0

    .line 466
    if-lez v0, :cond_c

    .line 467
    .line 468
    invoke-virtual/range {v18 .. v18}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    .line 469
    .line 470
    .line 471
    move-result-object v0

    .line 472
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 473
    .line 474
    .line 475
    move-result-object v10

    .line 476
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 477
    .line 478
    .line 479
    move-result v0

    .line 480
    if-eqz v0, :cond_c

    .line 481
    .line 482
    const-string v0, "Is TPL but download template fail but hit ignoreCheckRule"

    .line 483
    .line 484
    invoke-static {v15, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    .line 486
    .line 487
    return-void

    .line 488
    :cond_c
    const/4 v14, 0x0

    .line 489
    :goto_4
    iget-object v0, v7, Lcom/mbridge/msdk/reward/adapter/b$f;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 490
    .line 491
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 492
    .line 493
    .line 494
    move-result v0

    .line 495
    if-ge v14, v0, :cond_e

    .line 496
    .line 497
    iget-object v0, v7, Lcom/mbridge/msdk/reward/adapter/b$f;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 498
    .line 499
    invoke-virtual {v0, v14}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    .line 500
    .line 501
    .line 502
    move-result-object v0

    .line 503
    check-cast v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 504
    .line 505
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    .line 506
    .line 507
    .line 508
    move-result-object v10

    .line 509
    if-eqz v10, :cond_d

    .line 510
    .line 511
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    .line 512
    .line 513
    .line 514
    move-result-object v0

    .line 515
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;->e()Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object v0

    .line 519
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 520
    .line 521
    .line 522
    move-result v0

    .line 523
    if-eqz v0, :cond_d

    .line 524
    .line 525
    iget-object v0, v7, Lcom/mbridge/msdk/reward/adapter/b$f;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 526
    .line 527
    invoke-virtual {v0, v14}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    .line 528
    .line 529
    .line 530
    :cond_d
    add-int/lit8 v14, v14, 0x1

    .line 531
    .line 532
    goto :goto_4

    .line 533
    :cond_e
    invoke-static {}, Lcom/mbridge/msdk/reward/adapter/b;->a()Ljava/util/concurrent/ConcurrentHashMap;

    .line 534
    .line 535
    .line 536
    move-result-object v0

    .line 537
    invoke-virtual {v0, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    .line 539
    .line 540
    invoke-static {}, Lcom/mbridge/msdk/reward/adapter/b;->a()Ljava/util/concurrent/ConcurrentHashMap;

    .line 541
    .line 542
    .line 543
    move-result-object v0

    .line 544
    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    .line 546
    .line 547
    goto/16 :goto_7

    .line 548
    .line 549
    :cond_f
    if-eqz v18, :cond_10

    .line 550
    .line 551
    invoke-virtual/range {v18 .. v18}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    .line 552
    .line 553
    .line 554
    move-result-object v0

    .line 555
    if-eqz v0, :cond_10

    .line 556
    .line 557
    invoke-virtual/range {v18 .. v18}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    .line 558
    .line 559
    .line 560
    move-result-object v0

    .line 561
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 562
    .line 563
    .line 564
    move-result v0

    .line 565
    if-lez v0, :cond_10

    .line 566
    .line 567
    invoke-virtual/range {v18 .. v18}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    .line 568
    .line 569
    .line 570
    move-result-object v0

    .line 571
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 572
    .line 573
    .line 574
    move-result-object v10

    .line 575
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 576
    .line 577
    .line 578
    move-result v0

    .line 579
    if-eqz v0, :cond_10

    .line 580
    .line 581
    const-string v0, "Is TPL but download endcard fail but hit ignoreCheckRule"

    .line 582
    .line 583
    invoke-static {v15, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    .line 585
    .line 586
    return-void

    .line 587
    :cond_10
    const/4 v14, 0x0

    .line 588
    :goto_5
    iget-object v0, v7, Lcom/mbridge/msdk/reward/adapter/b$f;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 589
    .line 590
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 591
    .line 592
    .line 593
    move-result v0

    .line 594
    if-ge v14, v0, :cond_13

    .line 595
    .line 596
    iget-object v0, v7, Lcom/mbridge/msdk/reward/adapter/b$f;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 597
    .line 598
    invoke-virtual {v0, v14}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    .line 599
    .line 600
    .line 601
    move-result-object v0

    .line 602
    check-cast v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 603
    .line 604
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    .line 605
    .line 606
    .line 607
    move-result-object v10

    .line 608
    if-eqz v10, :cond_11

    .line 609
    .line 610
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    .line 611
    .line 612
    .line 613
    move-result-object v10

    .line 614
    invoke-virtual {v10}, Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;->c()Ljava/lang/String;

    .line 615
    .line 616
    .line 617
    move-result-object v10

    .line 618
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 619
    .line 620
    .line 621
    move-result v10

    .line 622
    if-eqz v10, :cond_11

    .line 623
    .line 624
    iget-object v10, v7, Lcom/mbridge/msdk/reward/adapter/b$f;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 625
    .line 626
    invoke-virtual {v10, v14}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    .line 627
    .line 628
    .line 629
    :cond_11
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    .line 630
    .line 631
    .line 632
    move-result-object v10

    .line 633
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 634
    .line 635
    .line 636
    move-result v10

    .line 637
    if-nez v10, :cond_12

    .line 638
    .line 639
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    .line 640
    .line 641
    .line 642
    move-result-object v0

    .line 643
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 644
    .line 645
    .line 646
    move-result v0

    .line 647
    if-eqz v0, :cond_12

    .line 648
    .line 649
    iget-object v0, v7, Lcom/mbridge/msdk/reward/adapter/b$f;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 650
    .line 651
    invoke-virtual {v0, v14}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    .line 652
    .line 653
    .line 654
    :cond_12
    add-int/lit8 v14, v14, 0x1

    .line 655
    .line 656
    goto :goto_5

    .line 657
    :cond_13
    invoke-static {}, Lcom/mbridge/msdk/reward/adapter/b;->a()Ljava/util/concurrent/ConcurrentHashMap;

    .line 658
    .line 659
    .line 660
    move-result-object v0

    .line 661
    invoke-virtual {v0, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    .line 663
    .line 664
    invoke-static {}, Lcom/mbridge/msdk/reward/adapter/b;->a()Ljava/util/concurrent/ConcurrentHashMap;

    .line 665
    .line 666
    .line 667
    move-result-object v0

    .line 668
    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    .line 670
    .line 671
    goto :goto_7

    .line 672
    :cond_14
    if-eqz v18, :cond_15

    .line 673
    .line 674
    invoke-virtual/range {v18 .. v18}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    .line 675
    .line 676
    .line 677
    move-result-object v0

    .line 678
    if-eqz v0, :cond_15

    .line 679
    .line 680
    invoke-virtual/range {v18 .. v18}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    .line 681
    .line 682
    .line 683
    move-result-object v0

    .line 684
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 685
    .line 686
    .line 687
    move-result v0

    .line 688
    if-lez v0, :cond_15

    .line 689
    .line 690
    invoke-virtual/range {v18 .. v18}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    .line 691
    .line 692
    .line 693
    move-result-object v0

    .line 694
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 695
    .line 696
    .line 697
    move-result v0

    .line 698
    if-eqz v0, :cond_15

    .line 699
    .line 700
    const-string v0, "Is TPL but  video download fail but hit ignoreCheckRule"

    .line 701
    .line 702
    invoke-static {v15, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 703
    .line 704
    .line 705
    return-void

    .line 706
    :cond_15
    const/4 v14, 0x0

    .line 707
    :goto_6
    :try_start_7
    iget-object v0, v7, Lcom/mbridge/msdk/reward/adapter/b$f;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 708
    .line 709
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 710
    .line 711
    .line 712
    move-result v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 713
    if-ge v14, v0, :cond_17

    .line 714
    .line 715
    :try_start_8
    iget-object v0, v7, Lcom/mbridge/msdk/reward/adapter/b$f;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 716
    .line 717
    invoke-virtual {v0, v14}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    .line 718
    .line 719
    .line 720
    move-result-object v0

    .line 721
    check-cast v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 722
    .line 723
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    .line 724
    .line 725
    .line 726
    move-result-object v0

    .line 727
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 728
    .line 729
    .line 730
    move-result v0

    .line 731
    if-eqz v0, :cond_16

    .line 732
    .line 733
    iget-object v0, v7, Lcom/mbridge/msdk/reward/adapter/b$f;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 734
    .line 735
    invoke-virtual {v0, v14}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 736
    .line 737
    .line 738
    :cond_16
    add-int/lit8 v14, v14, 0x1

    .line 739
    .line 740
    goto :goto_6

    .line 741
    :cond_17
    :try_start_9
    invoke-static {}, Lcom/mbridge/msdk/reward/adapter/b;->a()Ljava/util/concurrent/ConcurrentHashMap;

    .line 742
    .line 743
    .line 744
    move-result-object v0

    .line 745
    invoke-virtual {v0, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    .line 747
    .line 748
    invoke-static {}, Lcom/mbridge/msdk/reward/adapter/b;->a()Ljava/util/concurrent/ConcurrentHashMap;

    .line 749
    .line 750
    .line 751
    move-result-object v0

    .line 752
    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    .line 754
    .line 755
    :goto_7
    invoke-static {}, Lcom/mbridge/msdk/videocommon/download/b;->getInstance()Lcom/mbridge/msdk/videocommon/download/b;

    .line 756
    .line 757
    .line 758
    move-result-object v10

    .line 759
    iget-object v0, v7, Lcom/mbridge/msdk/reward/adapter/b$f;->e:Ljava/lang/String;

    .line 760
    .line 761
    iget-boolean v13, v7, Lcom/mbridge/msdk/reward/adapter/b$f;->b:Z

    .line 762
    .line 763
    iget v14, v7, Lcom/mbridge/msdk/reward/adapter/b$f;->d:I

    .line 764
    .line 765
    iget-boolean v15, v7, Lcom/mbridge/msdk/reward/adapter/b$f;->a:Z

    .line 766
    .line 767
    iget v2, v7, Lcom/mbridge/msdk/reward/adapter/b$f;->c:I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 768
    .line 769
    const/16 v11, 0x5e

    .line 770
    .line 771
    move/from16 v24, v12

    .line 772
    .line 773
    move-object v12, v0

    .line 774
    move/from16 v16, v2

    .line 775
    .line 776
    :try_start_a
    invoke-virtual/range {v10 .. v17}, Lcom/mbridge/msdk/videocommon/download/b;->a(ILjava/lang/String;ZIZILjava/util/List;)Z

    .line 777
    .line 778
    .line 779
    move-result v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    .line 780
    if-eqz v0, :cond_18

    .line 781
    .line 782
    :try_start_b
    iget-object v0, v7, Lcom/mbridge/msdk/reward/adapter/b$f;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 783
    .line 784
    invoke-interface {v8, v3, v4, v5, v0}, Lcom/mbridge/msdk/reward/adapter/b$h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/CopyOnWriteArrayList;)V

    .line 785
    .line 786
    .line 787
    iget-object v0, v1, Lcom/mbridge/msdk/reward/adapter/b$m;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 788
    .line 789
    invoke-virtual {v0, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    .line 791
    .line 792
    invoke-static {}, Lcom/mbridge/msdk/reward/adapter/b;->a()Ljava/util/concurrent/ConcurrentHashMap;

    .line 793
    .line 794
    .line 795
    move-result-object v0

    .line 796
    invoke-virtual {v0, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    .line 798
    .line 799
    iget-object v0, v1, Lcom/mbridge/msdk/reward/adapter/b$m;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 800
    .line 801
    invoke-virtual {v0, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    .line 802
    .line 803
    .line 804
    goto/16 :goto_10

    .line 805
    .line 806
    :catch_4
    move-exception v0

    .line 807
    move/from16 v6, v24

    .line 808
    .line 809
    goto/16 :goto_1

    .line 810
    .line 811
    :cond_18
    :try_start_c
    iget-object v0, v7, Lcom/mbridge/msdk/reward/adapter/b$f;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 812
    .line 813
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 814
    .line 815
    .line 816
    move-result v0

    .line 817
    if-nez v0, :cond_21

    .line 818
    .line 819
    new-instance v0, Lcom/mbridge/msdk/out/MBridgeIds;

    .line 820
    .line 821
    invoke-direct {v0, v3, v4, v5}, Lcom/mbridge/msdk/out/MBridgeIds;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    .line 823
    .line 824
    iget-object v2, v7, Lcom/mbridge/msdk/reward/adapter/b$f;->h:Ljava/util/concurrent/CopyOnWriteArrayList;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    .line 825
    .line 826
    move/from16 v15, v24

    .line 827
    .line 828
    const/4 v12, 0x0

    .line 829
    :try_start_d
    invoke-static {v15, v0, v9, v12, v12}, Lcom/mbridge/msdk/reward/adapter/b;->a(ILcom/mbridge/msdk/out/MBridgeIds;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Lcom/mbridge/msdk/foundation/error/b;

    .line 830
    .line 831
    .line 832
    move-result-object v0

    .line 833
    invoke-interface {v8, v2, v0}, Lcom/mbridge/msdk/reward/adapter/b$h;->a(Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/mbridge/msdk/foundation/error/b;)V

    .line 834
    .line 835
    .line 836
    iget-object v0, v1, Lcom/mbridge/msdk/reward/adapter/b$m;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 837
    .line 838
    invoke-virtual {v0, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 839
    .line 840
    .line 841
    invoke-static {}, Lcom/mbridge/msdk/reward/adapter/b;->a()Ljava/util/concurrent/ConcurrentHashMap;

    .line 842
    .line 843
    .line 844
    move-result-object v0

    .line 845
    invoke-virtual {v0, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 846
    .line 847
    .line 848
    iget-object v0, v1, Lcom/mbridge/msdk/reward/adapter/b$m;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 849
    .line 850
    invoke-virtual {v0, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 851
    .line 852
    .line 853
    goto/16 :goto_10

    .line 854
    .line 855
    :catch_5
    move-exception v0

    .line 856
    :goto_8
    move-object v10, v12

    .line 857
    move v6, v15

    .line 858
    goto/16 :goto_c

    .line 859
    .line 860
    :catch_6
    move-exception v0

    .line 861
    move/from16 v15, v24

    .line 862
    .line 863
    :goto_9
    const/4 v12, 0x0

    .line 864
    goto :goto_8

    .line 865
    :catch_7
    move-exception v0

    .line 866
    move v15, v12

    .line 867
    move-object/from16 v12, v16

    .line 868
    .line 869
    goto :goto_8

    .line 870
    :catch_8
    move-exception v0

    .line 871
    move v15, v12

    .line 872
    goto :goto_9

    .line 873
    :cond_19
    move v15, v12

    .line 874
    const/16 v2, 0xcd

    .line 875
    .line 876
    const/16 v10, 0xc9

    .line 877
    .line 878
    const/4 v12, 0x0

    .line 879
    const/16 v16, 0xcb

    .line 880
    .line 881
    invoke-static {}, Lcom/mbridge/msdk/videocommon/download/b;->getInstance()Lcom/mbridge/msdk/videocommon/download/b;

    .line 882
    .line 883
    .line 884
    move-result-object v20

    .line 885
    iget-object v2, v7, Lcom/mbridge/msdk/reward/adapter/b$f;->e:Ljava/lang/String;

    .line 886
    .line 887
    iget-boolean v14, v7, Lcom/mbridge/msdk/reward/adapter/b$f;->b:Z

    .line 888
    .line 889
    iget v11, v7, Lcom/mbridge/msdk/reward/adapter/b$f;->d:I

    .line 890
    .line 891
    move/from16 v23, v11

    .line 892
    .line 893
    iget-boolean v11, v7, Lcom/mbridge/msdk/reward/adapter/b$f;->a:Z

    .line 894
    .line 895
    move/from16 v24, v11

    .line 896
    .line 897
    iget v11, v7, Lcom/mbridge/msdk/reward/adapter/b$f;->c:I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    .line 898
    .line 899
    const/16 v25, 0x5e

    .line 900
    .line 901
    move/from16 v26, v10

    .line 902
    .line 903
    move-object/from16 v10, v20

    .line 904
    .line 905
    move-object/from16 v27, v6

    .line 906
    .line 907
    move/from16 v22, v23

    .line 908
    .line 909
    move/from16 v23, v24

    .line 910
    .line 911
    move/from16 v6, v26

    .line 912
    .line 913
    const/16 v20, 0x1

    .line 914
    .line 915
    move/from16 v24, v11

    .line 916
    .line 917
    move/from16 v11, v25

    .line 918
    .line 919
    move-object v12, v2

    .line 920
    move-object v2, v13

    .line 921
    move v13, v14

    .line 922
    const/16 v6, 0xc8

    .line 923
    .line 924
    move/from16 v14, v22

    .line 925
    .line 926
    move/from16 v28, v15

    .line 927
    .line 928
    move/from16 v15, v23

    .line 929
    .line 930
    move/from16 v16, v24

    .line 931
    .line 932
    :try_start_e
    invoke-virtual/range {v10 .. v17}, Lcom/mbridge/msdk/videocommon/download/b;->a(ILjava/lang/String;ZIZILjava/util/List;)Z

    .line 933
    .line 934
    .line 935
    move-result v10

    .line 936
    if-eqz v10, :cond_1a

    .line 937
    .line 938
    iget-object v0, v7, Lcom/mbridge/msdk/reward/adapter/b$f;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 939
    .line 940
    invoke-interface {v8, v3, v4, v5, v0}, Lcom/mbridge/msdk/reward/adapter/b$h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/CopyOnWriteArrayList;)V

    .line 941
    .line 942
    .line 943
    move/from16 v6, v28

    .line 944
    .line 945
    const/4 v10, 0x0

    .line 946
    goto/16 :goto_b

    .line 947
    .line 948
    :catch_9
    move-exception v0

    .line 949
    move/from16 v6, v28

    .line 950
    .line 951
    goto/16 :goto_1

    .line 952
    .line 953
    :cond_1a
    if-eqz v18, :cond_1f

    .line 954
    .line 955
    invoke-virtual/range {v18 .. v18}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    .line 956
    .line 957
    .line 958
    move-result-object v10

    .line 959
    if-eqz v10, :cond_1f

    .line 960
    .line 961
    invoke-virtual/range {v18 .. v18}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    .line 962
    .line 963
    .line 964
    move-result-object v10

    .line 965
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 966
    .line 967
    .line 968
    move-result v10

    .line 969
    if-lez v10, :cond_1f

    .line 970
    .line 971
    iget v0, v0, Landroid/os/Message;->what:I

    .line 972
    .line 973
    if-eq v0, v6, :cond_1e

    .line 974
    .line 975
    const/16 v6, 0xc9

    .line 976
    .line 977
    if-eq v0, v6, :cond_1d

    .line 978
    .line 979
    const/16 v2, 0xcb

    .line 980
    .line 981
    if-eq v0, v2, :cond_1c

    .line 982
    .line 983
    const/16 v2, 0xcd

    .line 984
    .line 985
    if-eq v0, v2, :cond_1b

    .line 986
    .line 987
    goto :goto_a

    .line 988
    :cond_1b
    invoke-virtual/range {v18 .. v18}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    .line 989
    .line 990
    .line 991
    move-result-object v0

    .line 992
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 993
    .line 994
    .line 995
    move-result-object v2

    .line 996
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 997
    .line 998
    .line 999
    move-result v0

    .line 1000
    if-eqz v0, :cond_1f

    .line 1001
    .line 1002
    return-void

    .line 1003
    :cond_1c
    invoke-virtual/range {v18 .. v18}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v0

    .line 1007
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1008
    .line 1009
    .line 1010
    move-result-object v2

    .line 1011
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 1012
    .line 1013
    .line 1014
    move-result v0

    .line 1015
    if-eqz v0, :cond_1f

    .line 1016
    .line 1017
    return-void

    .line 1018
    :cond_1d
    invoke-virtual/range {v18 .. v18}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v0

    .line 1022
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1023
    .line 1024
    .line 1025
    move-result-object v2

    .line 1026
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 1027
    .line 1028
    .line 1029
    move-result v0

    .line 1030
    if-eqz v0, :cond_1f

    .line 1031
    .line 1032
    return-void

    .line 1033
    :cond_1e
    invoke-virtual/range {v18 .. v18}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    .line 1034
    .line 1035
    .line 1036
    move-result-object v0

    .line 1037
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 1038
    .line 1039
    .line 1040
    move-result v0

    .line 1041
    if-eqz v0, :cond_1f

    .line 1042
    .line 1043
    return-void

    .line 1044
    :cond_1f
    :goto_a
    new-instance v0, Lcom/mbridge/msdk/out/MBridgeIds;

    .line 1045
    .line 1046
    invoke-direct {v0, v3, v4, v5}, Lcom/mbridge/msdk/out/MBridgeIds;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    .line 1048
    .line 1049
    iget-object v2, v7, Lcom/mbridge/msdk/reward/adapter/b$f;->h:Ljava/util/concurrent/CopyOnWriteArrayList;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_9

    .line 1050
    .line 1051
    move/from16 v6, v28

    .line 1052
    .line 1053
    const/4 v10, 0x0

    .line 1054
    :try_start_f
    invoke-static {v6, v0, v9, v10, v10}, Lcom/mbridge/msdk/reward/adapter/b;->a(ILcom/mbridge/msdk/out/MBridgeIds;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Lcom/mbridge/msdk/foundation/error/b;

    .line 1055
    .line 1056
    .line 1057
    move-result-object v0

    .line 1058
    invoke-interface {v8, v2, v0}, Lcom/mbridge/msdk/reward/adapter/b$h;->a(Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/mbridge/msdk/foundation/error/b;)V

    .line 1059
    .line 1060
    .line 1061
    :goto_b
    iget-object v0, v1, Lcom/mbridge/msdk/reward/adapter/b$m;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1062
    .line 1063
    move-object/from16 v2, v27

    .line 1064
    .line 1065
    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1066
    .line 1067
    .line 1068
    invoke-static {}, Lcom/mbridge/msdk/reward/adapter/b;->a()Ljava/util/concurrent/ConcurrentHashMap;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v0

    .line 1072
    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1073
    .line 1074
    .line 1075
    iget-object v0, v1, Lcom/mbridge/msdk/reward/adapter/b$m;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1076
    .line 1077
    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_a

    .line 1078
    .line 1079
    .line 1080
    goto :goto_10

    .line 1081
    :catch_a
    move-exception v0

    .line 1082
    :goto_c
    new-instance v2, Lcom/mbridge/msdk/out/MBridgeIds;

    .line 1083
    .line 1084
    invoke-direct {v2, v3, v4, v5}, Lcom/mbridge/msdk/out/MBridgeIds;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    .line 1086
    .line 1087
    iget-object v3, v7, Lcom/mbridge/msdk/reward/adapter/b$f;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1088
    .line 1089
    invoke-static {v6, v2, v9, v0, v10}, Lcom/mbridge/msdk/reward/adapter/b;->a(ILcom/mbridge/msdk/out/MBridgeIds;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Lcom/mbridge/msdk/foundation/error/b;

    .line 1090
    .line 1091
    .line 1092
    move-result-object v0

    .line 1093
    invoke-interface {v8, v3, v0}, Lcom/mbridge/msdk/reward/adapter/b$h;->a(Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/mbridge/msdk/foundation/error/b;)V

    .line 1094
    .line 1095
    .line 1096
    goto :goto_10

    .line 1097
    :goto_d
    if-eqz v7, :cond_21

    .line 1098
    .line 1099
    if-eqz v8, :cond_21

    .line 1100
    .line 1101
    :try_start_10
    invoke-static {}, Lcom/mbridge/msdk/videocommon/download/b;->getInstance()Lcom/mbridge/msdk/videocommon/download/b;

    .line 1102
    .line 1103
    .line 1104
    move-result-object v10

    .line 1105
    iget-object v12, v7, Lcom/mbridge/msdk/reward/adapter/b$f;->e:Ljava/lang/String;

    .line 1106
    .line 1107
    iget-boolean v13, v7, Lcom/mbridge/msdk/reward/adapter/b$f;->b:Z

    .line 1108
    .line 1109
    iget v14, v7, Lcom/mbridge/msdk/reward/adapter/b$f;->d:I

    .line 1110
    .line 1111
    iget-boolean v0, v7, Lcom/mbridge/msdk/reward/adapter/b$f;->a:Z

    .line 1112
    .line 1113
    iget v6, v7, Lcom/mbridge/msdk/reward/adapter/b$f;->c:I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_c

    .line 1114
    .line 1115
    const/16 v11, 0x5e

    .line 1116
    .line 1117
    const/4 v9, 0x0

    .line 1118
    move-object v9, v15

    .line 1119
    move v15, v0

    .line 1120
    move/from16 v16, v6

    .line 1121
    .line 1122
    :try_start_11
    invoke-virtual/range {v10 .. v17}, Lcom/mbridge/msdk/videocommon/download/b;->a(ILjava/lang/String;ZIZILjava/util/List;)Z

    .line 1123
    .line 1124
    .line 1125
    move-result v14
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_b

    .line 1126
    goto :goto_f

    .line 1127
    :catch_b
    move-exception v0

    .line 1128
    goto :goto_e

    .line 1129
    :catch_c
    move-exception v0

    .line 1130
    move-object v9, v15

    .line 1131
    :goto_e
    sget-boolean v6, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    .line 1132
    .line 1133
    if-eqz v6, :cond_20

    .line 1134
    .line 1135
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 1136
    .line 1137
    .line 1138
    move-result-object v0

    .line 1139
    invoke-static {v9, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    .line 1141
    .line 1142
    :cond_20
    const/4 v14, 0x0

    .line 1143
    :goto_f
    if-eqz v14, :cond_21

    .line 1144
    .line 1145
    iget-object v0, v7, Lcom/mbridge/msdk/reward/adapter/b$f;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1146
    .line 1147
    invoke-interface {v8, v3, v4, v5, v0}, Lcom/mbridge/msdk/reward/adapter/b$h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/CopyOnWriteArrayList;)V

    .line 1148
    .line 1149
    .line 1150
    iget-object v0, v1, Lcom/mbridge/msdk/reward/adapter/b$m;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1151
    .line 1152
    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1153
    .line 1154
    .line 1155
    invoke-static {}, Lcom/mbridge/msdk/reward/adapter/b;->a()Ljava/util/concurrent/ConcurrentHashMap;

    .line 1156
    .line 1157
    .line 1158
    move-result-object v0

    .line 1159
    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1160
    .line 1161
    .line 1162
    iget-object v0, v1, Lcom/mbridge/msdk/reward/adapter/b$m;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1163
    .line 1164
    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1165
    .line 1166
    .line 1167
    :cond_21
    :goto_10
    return-void

    .line 1168
    nop

    .line 1169
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1170
    .line 1171
    .line 1172
    .line 1173
    .line 1174
    .line 1175
    .line 1176
    .line 1177
    .line 1178
    .line 1179
    .line 1180
    .line 1181
    .line 1182
    .line 1183
    .line 1184
    .line 1185
    .line 1186
    .line 1187
    :pswitch_data_1
    .packed-switch 0xc8
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
