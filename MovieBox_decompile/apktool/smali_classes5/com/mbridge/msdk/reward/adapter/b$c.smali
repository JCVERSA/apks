.class Lcom/mbridge/msdk/reward/adapter/b$c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager$ZipDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/reward/adapter/b;->a(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/reward/adapter/b$n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

.field final synthetic e:Lcom/mbridge/msdk/reward/adapter/b$n;

.field final synthetic f:Landroid/content/Context;

.field final synthetic g:Lcom/mbridge/msdk/reward/adapter/b;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/reward/adapter/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/reward/adapter/b$n;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/reward/adapter/b$c;->g:Lcom/mbridge/msdk/reward/adapter/b;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/mbridge/msdk/reward/adapter/b$c;->a:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/mbridge/msdk/reward/adapter/b$c;->b:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/mbridge/msdk/reward/adapter/b$c;->c:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/mbridge/msdk/reward/adapter/b$c;->d:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/mbridge/msdk/reward/adapter/b$c;->e:Lcom/mbridge/msdk/reward/adapter/b$n;

    .line 12
    .line 13
    iput-object p7, p0, Lcom/mbridge/msdk/reward/adapter/b$c;->f:Landroid/content/Context;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v10, p2

    .line 4
    .line 5
    const-string v11, ""

    .line 6
    .line 7
    const-string v12, "message"

    .line 8
    .line 9
    const-string v13, "key"

    .line 10
    .line 11
    const-string v14, "url"

    .line 12
    .line 13
    const-string v15, "request_id"

    .line 14
    .line 15
    const-string v9, "unit_id"

    .line 16
    .line 17
    const-string v8, "RewardCampaignsResourceManager"

    .line 18
    .line 19
    const-string v7, "_"

    .line 20
    .line 21
    const v6, 0xd6d85

    .line 22
    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    :try_start_0
    invoke-static {}, Lcom/mbridge/msdk/foundation/download/download/ResDownloadCheckManager;->getInstance()Lcom/mbridge/msdk/foundation/download/download/ResDownloadCheckManager;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0, v10, v5}, Lcom/mbridge/msdk/foundation/download/download/ResDownloadCheckManager;->setZipDownloadDone(Ljava/lang/String;Z)V

    .line 30
    .line 31
    .line 32
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const/16 v2, 0xcd

    .line 37
    .line 38
    iput v2, v0, Landroid/os/Message;->what:I

    .line 39
    .line 40
    new-instance v2, Landroid/os/Bundle;

    .line 41
    .line 42
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 43
    .line 44
    .line 45
    iget-object v3, v1, Lcom/mbridge/msdk/reward/adapter/b$c;->a:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v2, v9, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    sget-object v3, Lcom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    .line 51
    .line 52
    iget-object v5, v1, Lcom/mbridge/msdk/reward/adapter/b$c;->b:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v2, v3, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object v3, v1, Lcom/mbridge/msdk/reward/adapter/b$c;->c:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v2, v15, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, v14, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    new-instance v3, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    iget-object v5, v1, Lcom/mbridge/msdk/reward/adapter/b$c;->a:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-object v5, v1, Lcom/mbridge/msdk/reward/adapter/b$c;->c:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    iget-object v5, v1, Lcom/mbridge/msdk/reward/adapter/b$c;->d:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 87
    .line 88
    invoke-virtual {v5}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getSecondRequestIndex()I

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-virtual {v2, v13, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    move-object/from16 v5, p1

    .line 103
    .line 104
    invoke-virtual {v2, v12, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 108
    .line 109
    .line 110
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/b$c;->g:Lcom/mbridge/msdk/reward/adapter/b;

    .line 111
    .line 112
    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/b;->a(Lcom/mbridge/msdk/reward/adapter/b;)Lcom/mbridge/msdk/reward/adapter/b$m;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 117
    .line 118
    .line 119
    iget-object v0, v1, Lcom/mbridge/msdk/reward/adapter/b$c;->e:Lcom/mbridge/msdk/reward/adapter/b$n;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 120
    .line 121
    if-eqz v0, :cond_0

    .line 122
    .line 123
    :try_start_1
    new-instance v0, Lcom/mbridge/msdk/out/MBridgeIds;

    .line 124
    .line 125
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/b$c;->b:Ljava/lang/String;

    .line 126
    .line 127
    iget-object v3, v1, Lcom/mbridge/msdk/reward/adapter/b$c;->a:Ljava/lang/String;

    .line 128
    .line 129
    iget-object v4, v1, Lcom/mbridge/msdk/reward/adapter/b$c;->c:Ljava/lang/String;

    .line 130
    .line 131
    invoke-direct {v0, v2, v3, v4}, Lcom/mbridge/msdk/out/MBridgeIds;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/b$c;->e:Lcom/mbridge/msdk/reward/adapter/b$n;

    .line 135
    .line 136
    iget-object v3, v1, Lcom/mbridge/msdk/reward/adapter/b$c;->c:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 137
    .line 138
    const/4 v4, 0x0

    .line 139
    :try_start_2
    invoke-static {v6, v0, v11, v4, v4}, Lcom/mbridge/msdk/reward/adapter/b;->a(ILcom/mbridge/msdk/out/MBridgeIds;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Lcom/mbridge/msdk/foundation/error/b;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-interface {v2, v10, v3, v0}, Lcom/mbridge/msdk/reward/adapter/b$n;->a(Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/error/b;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 144
    .line 145
    .line 146
    goto :goto_1

    .line 147
    :catch_0
    move-exception v0

    .line 148
    goto :goto_0

    .line 149
    :catch_1
    move-exception v0

    .line 150
    const/4 v4, 0x0

    .line 151
    :goto_0
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-static {v8, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 156
    .line 157
    .line 158
    goto :goto_1

    .line 159
    :catch_2
    move-exception v0

    .line 160
    move-object v2, v0

    .line 161
    move-object/from16 v20, v7

    .line 162
    .line 163
    move-object/from16 v21, v8

    .line 164
    .line 165
    move-object/from16 v16, v11

    .line 166
    .line 167
    move-object v11, v9

    .line 168
    goto :goto_3

    .line 169
    :cond_0
    const/4 v4, 0x0

    .line 170
    :goto_1
    :try_start_4
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/b$c;->g:Lcom/mbridge/msdk/reward/adapter/b;

    .line 171
    .line 172
    iget-object v3, v1, Lcom/mbridge/msdk/reward/adapter/b$c;->f:Landroid/content/Context;

    .line 173
    .line 174
    iget-object v0, v1, Lcom/mbridge/msdk/reward/adapter/b$c;->d:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 175
    .line 176
    iget-object v4, v1, Lcom/mbridge/msdk/reward/adapter/b$c;->a:Ljava/lang/String;

    .line 177
    .line 178
    const-string v18, ""
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 179
    .line 180
    const/16 v19, 0x3

    .line 181
    .line 182
    move-object/from16 v17, v4

    .line 183
    .line 184
    move/from16 v4, v19

    .line 185
    .line 186
    move-object v5, v0

    .line 187
    move-object/from16 v6, p2

    .line 188
    .line 189
    move-object/from16 v20, v7

    .line 190
    .line 191
    move-object/from16 v7, p1

    .line 192
    .line 193
    move-object/from16 v21, v8

    .line 194
    .line 195
    move-object/from16 v8, v17

    .line 196
    .line 197
    move-object/from16 v16, v11

    .line 198
    .line 199
    move-object v11, v9

    .line 200
    move-object/from16 v9, v18

    .line 201
    .line 202
    :try_start_5
    invoke-static/range {v2 .. v9}, Lcom/mbridge/msdk/reward/adapter/b;->a(Lcom/mbridge/msdk/reward/adapter/b;Landroid/content/Context;ILcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 203
    .line 204
    .line 205
    goto/16 :goto_5

    .line 206
    .line 207
    :catch_3
    move-exception v0

    .line 208
    :goto_2
    move-object v2, v0

    .line 209
    goto :goto_3

    .line 210
    :catch_4
    move-exception v0

    .line 211
    move-object/from16 v20, v7

    .line 212
    .line 213
    move-object/from16 v21, v8

    .line 214
    .line 215
    move-object/from16 v16, v11

    .line 216
    .line 217
    move-object v11, v9

    .line 218
    goto :goto_2

    .line 219
    :goto_3
    invoke-static {}, Lcom/mbridge/msdk/foundation/download/download/ResDownloadCheckManager;->getInstance()Lcom/mbridge/msdk/foundation/download/download/ResDownloadCheckManager;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    const/4 v3, 0x0

    .line 224
    invoke-virtual {v0, v10, v3}, Lcom/mbridge/msdk/foundation/download/download/ResDownloadCheckManager;->setZipDownloadDone(Ljava/lang/String;Z)V

    .line 225
    .line 226
    .line 227
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    const/16 v3, 0x69

    .line 232
    .line 233
    iput v3, v0, Landroid/os/Message;->what:I

    .line 234
    .line 235
    new-instance v3, Landroid/os/Bundle;

    .line 236
    .line 237
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 238
    .line 239
    .line 240
    iget-object v4, v1, Lcom/mbridge/msdk/reward/adapter/b$c;->a:Ljava/lang/String;

    .line 241
    .line 242
    invoke-virtual {v3, v11, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    sget-object v4, Lcom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    .line 246
    .line 247
    iget-object v5, v1, Lcom/mbridge/msdk/reward/adapter/b$c;->b:Ljava/lang/String;

    .line 248
    .line 249
    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    iget-object v4, v1, Lcom/mbridge/msdk/reward/adapter/b$c;->c:Ljava/lang/String;

    .line 253
    .line 254
    invoke-virtual {v3, v15, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    new-instance v4, Ljava/lang/StringBuilder;

    .line 258
    .line 259
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    .line 261
    .line 262
    iget-object v5, v1, Lcom/mbridge/msdk/reward/adapter/b$c;->a:Ljava/lang/String;

    .line 263
    .line 264
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    move-object/from16 v5, v20

    .line 268
    .line 269
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    iget-object v6, v1, Lcom/mbridge/msdk/reward/adapter/b$c;->c:Ljava/lang/String;

    .line 273
    .line 274
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    iget-object v5, v1, Lcom/mbridge/msdk/reward/adapter/b$c;->d:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 281
    .line 282
    invoke-virtual {v5}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getSecondRequestIndex()I

    .line 283
    .line 284
    .line 285
    move-result v5

    .line 286
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v4

    .line 293
    invoke-virtual {v3, v13, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v3, v14, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v4

    .line 303
    invoke-virtual {v3, v12, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v0, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 307
    .line 308
    .line 309
    iget-object v3, v1, Lcom/mbridge/msdk/reward/adapter/b$c;->g:Lcom/mbridge/msdk/reward/adapter/b;

    .line 310
    .line 311
    invoke-static {v3}, Lcom/mbridge/msdk/reward/adapter/b;->a(Lcom/mbridge/msdk/reward/adapter/b;)Lcom/mbridge/msdk/reward/adapter/b$m;

    .line 312
    .line 313
    .line 314
    move-result-object v3

    .line 315
    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 316
    .line 317
    .line 318
    iget-object v0, v1, Lcom/mbridge/msdk/reward/adapter/b$c;->e:Lcom/mbridge/msdk/reward/adapter/b$n;

    .line 319
    .line 320
    if-eqz v0, :cond_1

    .line 321
    .line 322
    :try_start_6
    new-instance v0, Lcom/mbridge/msdk/out/MBridgeIds;

    .line 323
    .line 324
    iget-object v3, v1, Lcom/mbridge/msdk/reward/adapter/b$c;->b:Ljava/lang/String;

    .line 325
    .line 326
    iget-object v4, v1, Lcom/mbridge/msdk/reward/adapter/b$c;->a:Ljava/lang/String;

    .line 327
    .line 328
    iget-object v5, v1, Lcom/mbridge/msdk/reward/adapter/b$c;->c:Ljava/lang/String;

    .line 329
    .line 330
    invoke-direct {v0, v3, v4, v5}, Lcom/mbridge/msdk/out/MBridgeIds;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    iget-object v3, v1, Lcom/mbridge/msdk/reward/adapter/b$c;->e:Lcom/mbridge/msdk/reward/adapter/b$n;

    .line 334
    .line 335
    iget-object v4, v1, Lcom/mbridge/msdk/reward/adapter/b$c;->c:Ljava/lang/String;

    .line 336
    .line 337
    move-object/from16 v5, v16

    .line 338
    .line 339
    const v6, 0xd6d85

    .line 340
    .line 341
    .line 342
    const/4 v7, 0x0

    .line 343
    invoke-static {v6, v0, v5, v2, v7}, Lcom/mbridge/msdk/reward/adapter/b;->a(ILcom/mbridge/msdk/out/MBridgeIds;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Lcom/mbridge/msdk/foundation/error/b;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    invoke-interface {v3, v10, v4, v0}, Lcom/mbridge/msdk/reward/adapter/b$n;->a(Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/error/b;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 348
    .line 349
    .line 350
    :cond_1
    move-object/from16 v3, v21

    .line 351
    .line 352
    goto :goto_4

    .line 353
    :catch_5
    move-exception v0

    .line 354
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v0

    .line 358
    move-object/from16 v3, v21

    .line 359
    .line 360
    invoke-static {v3, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    :goto_4
    invoke-virtual {v2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    invoke-static {v3, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    :goto_5
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v10, p1

    .line 4
    .line 5
    const-string v11, "url"

    .line 6
    .line 7
    const-string v12, "key"

    .line 8
    .line 9
    const-string v13, "request_id"

    .line 10
    .line 11
    const-string v14, "unit_id"

    .line 12
    .line 13
    const-string v15, "RewardCampaignsResourceManager"

    .line 14
    .line 15
    const-string v9, "_"

    .line 16
    .line 17
    :try_start_0
    const-string v0, "zip btl template download success"

    .line 18
    .line 19
    invoke-static {v15, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/mbridge/msdk/foundation/download/download/ResDownloadCheckManager;->getInstance()Lcom/mbridge/msdk/foundation/download/download/ResDownloadCheckManager;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const/4 v2, 0x1

    .line 27
    invoke-virtual {v0, v10, v2}, Lcom/mbridge/msdk/foundation/download/download/ResDownloadCheckManager;->setZipDownloadDone(Ljava/lang/String;Z)V

    .line 28
    .line 29
    .line 30
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const/16 v2, 0x69

    .line 35
    .line 36
    iput v2, v0, Landroid/os/Message;->what:I

    .line 37
    .line 38
    new-instance v2, Landroid/os/Bundle;

    .line 39
    .line 40
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 41
    .line 42
    .line 43
    iget-object v3, v1, Lcom/mbridge/msdk/reward/adapter/b$c;->a:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v2, v14, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    sget-object v3, Lcom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    .line 49
    .line 50
    iget-object v4, v1, Lcom/mbridge/msdk/reward/adapter/b$c;->b:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object v3, v1, Lcom/mbridge/msdk/reward/adapter/b$c;->c:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v2, v13, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    iget-object v4, v1, Lcom/mbridge/msdk/reward/adapter/b$c;->a:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    iget-object v4, v1, Lcom/mbridge/msdk/reward/adapter/b$c;->c:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget-object v4, v1, Lcom/mbridge/msdk/reward/adapter/b$c;->d:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 82
    .line 83
    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getSecondRequestIndex()I

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-virtual {v2, v12, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2, v11, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 101
    .line 102
    .line 103
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/b$c;->g:Lcom/mbridge/msdk/reward/adapter/b;

    .line 104
    .line 105
    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/b;->a(Lcom/mbridge/msdk/reward/adapter/b;)Lcom/mbridge/msdk/reward/adapter/b$m;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 110
    .line 111
    .line 112
    iget-object v0, v1, Lcom/mbridge/msdk/reward/adapter/b$c;->e:Lcom/mbridge/msdk/reward/adapter/b$n;

    .line 113
    .line 114
    if-eqz v0, :cond_0

    .line 115
    .line 116
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/b$c;->b:Ljava/lang/String;

    .line 117
    .line 118
    iget-object v3, v1, Lcom/mbridge/msdk/reward/adapter/b$c;->a:Ljava/lang/String;

    .line 119
    .line 120
    iget-object v4, v1, Lcom/mbridge/msdk/reward/adapter/b$c;->c:Ljava/lang/String;

    .line 121
    .line 122
    invoke-interface {v0, v2, v3, v4, v10}, Lcom/mbridge/msdk/reward/adapter/b$n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    goto :goto_1

    .line 126
    :catch_0
    move-exception v0

    .line 127
    move-object/from16 v16, v15

    .line 128
    .line 129
    move-object v15, v9

    .line 130
    :goto_0
    move-object v9, v0

    .line 131
    goto :goto_2

    .line 132
    :cond_0
    :goto_1
    if-nez p3, :cond_2

    .line 133
    .line 134
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/b$c;->g:Lcom/mbridge/msdk/reward/adapter/b;

    .line 135
    .line 136
    iget-object v3, v1, Lcom/mbridge/msdk/reward/adapter/b$c;->f:Landroid/content/Context;

    .line 137
    .line 138
    iget-object v5, v1, Lcom/mbridge/msdk/reward/adapter/b$c;->d:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 139
    .line 140
    const-string v7, ""

    .line 141
    .line 142
    iget-object v8, v1, Lcom/mbridge/msdk/reward/adapter/b$c;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .line 144
    const/4 v4, 0x1

    .line 145
    move-object/from16 v6, p1

    .line 146
    .line 147
    move-object/from16 v16, v15

    .line 148
    .line 149
    move-object v15, v9

    .line 150
    move-object/from16 v9, p2

    .line 151
    .line 152
    :try_start_1
    invoke-static/range {v2 .. v9}, Lcom/mbridge/msdk/reward/adapter/b;->a(Lcom/mbridge/msdk/reward/adapter/b;Landroid/content/Context;ILcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 153
    .line 154
    .line 155
    goto/16 :goto_4

    .line 156
    .line 157
    :catch_1
    move-exception v0

    .line 158
    goto :goto_0

    .line 159
    :goto_2
    invoke-static {}, Lcom/mbridge/msdk/foundation/download/download/ResDownloadCheckManager;->getInstance()Lcom/mbridge/msdk/foundation/download/download/ResDownloadCheckManager;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    const/4 v2, 0x0

    .line 164
    invoke-virtual {v0, v10, v2}, Lcom/mbridge/msdk/foundation/download/download/ResDownloadCheckManager;->setZipDownloadDone(Ljava/lang/String;Z)V

    .line 165
    .line 166
    .line 167
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    const/16 v2, 0xcd

    .line 172
    .line 173
    iput v2, v0, Landroid/os/Message;->what:I

    .line 174
    .line 175
    new-instance v2, Landroid/os/Bundle;

    .line 176
    .line 177
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 178
    .line 179
    .line 180
    iget-object v3, v1, Lcom/mbridge/msdk/reward/adapter/b$c;->a:Ljava/lang/String;

    .line 181
    .line 182
    invoke-virtual {v2, v14, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    sget-object v3, Lcom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    .line 186
    .line 187
    iget-object v4, v1, Lcom/mbridge/msdk/reward/adapter/b$c;->b:Ljava/lang/String;

    .line 188
    .line 189
    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    iget-object v3, v1, Lcom/mbridge/msdk/reward/adapter/b$c;->c:Ljava/lang/String;

    .line 193
    .line 194
    invoke-virtual {v2, v13, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    new-instance v3, Ljava/lang/StringBuilder;

    .line 198
    .line 199
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .line 201
    .line 202
    iget-object v4, v1, Lcom/mbridge/msdk/reward/adapter/b$c;->a:Ljava/lang/String;

    .line 203
    .line 204
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    iget-object v4, v1, Lcom/mbridge/msdk/reward/adapter/b$c;->c:Ljava/lang/String;

    .line 211
    .line 212
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    iget-object v4, v1, Lcom/mbridge/msdk/reward/adapter/b$c;->d:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 219
    .line 220
    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getSecondRequestIndex()I

    .line 221
    .line 222
    .line 223
    move-result v4

    .line 224
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v3

    .line 231
    invoke-virtual {v2, v12, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v2, v11, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 238
    .line 239
    .line 240
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/b$c;->g:Lcom/mbridge/msdk/reward/adapter/b;

    .line 241
    .line 242
    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/b;->a(Lcom/mbridge/msdk/reward/adapter/b;)Lcom/mbridge/msdk/reward/adapter/b$m;

    .line 243
    .line 244
    .line 245
    move-result-object v2

    .line 246
    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 247
    .line 248
    .line 249
    iget-object v0, v1, Lcom/mbridge/msdk/reward/adapter/b$c;->e:Lcom/mbridge/msdk/reward/adapter/b$n;

    .line 250
    .line 251
    if-eqz v0, :cond_1

    .line 252
    .line 253
    :try_start_2
    new-instance v0, Lcom/mbridge/msdk/out/MBridgeIds;

    .line 254
    .line 255
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/b$c;->b:Ljava/lang/String;

    .line 256
    .line 257
    iget-object v3, v1, Lcom/mbridge/msdk/reward/adapter/b$c;->a:Ljava/lang/String;

    .line 258
    .line 259
    iget-object v4, v1, Lcom/mbridge/msdk/reward/adapter/b$c;->c:Ljava/lang/String;

    .line 260
    .line 261
    invoke-direct {v0, v2, v3, v4}, Lcom/mbridge/msdk/out/MBridgeIds;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/b$c;->e:Lcom/mbridge/msdk/reward/adapter/b$n;

    .line 265
    .line 266
    iget-object v3, v1, Lcom/mbridge/msdk/reward/adapter/b$c;->c:Ljava/lang/String;

    .line 267
    .line 268
    const-string v4, ""

    .line 269
    .line 270
    const/4 v5, 0x0

    .line 271
    const v6, 0xd6d85

    .line 272
    .line 273
    .line 274
    invoke-static {v6, v0, v4, v9, v5}, Lcom/mbridge/msdk/reward/adapter/b;->a(ILcom/mbridge/msdk/out/MBridgeIds;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Lcom/mbridge/msdk/foundation/error/b;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    invoke-interface {v2, v10, v3, v0}, Lcom/mbridge/msdk/reward/adapter/b$n;->a(Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/error/b;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 279
    .line 280
    .line 281
    :cond_1
    move-object/from16 v11, v16

    .line 282
    .line 283
    goto :goto_3

    .line 284
    :catch_2
    move-exception v0

    .line 285
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    move-object/from16 v11, v16

    .line 290
    .line 291
    invoke-static {v11, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    :goto_3
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/b$c;->g:Lcom/mbridge/msdk/reward/adapter/b;

    .line 295
    .line 296
    iget-object v3, v1, Lcom/mbridge/msdk/reward/adapter/b$c;->f:Landroid/content/Context;

    .line 297
    .line 298
    iget-object v5, v1, Lcom/mbridge/msdk/reward/adapter/b$c;->d:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 299
    .line 300
    invoke-virtual {v9}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v7

    .line 304
    iget-object v8, v1, Lcom/mbridge/msdk/reward/adapter/b$c;->a:Ljava/lang/String;

    .line 305
    .line 306
    const/4 v4, 0x3

    .line 307
    move-object/from16 v6, p1

    .line 308
    .line 309
    move-object v10, v9

    .line 310
    move-object/from16 v9, p2

    .line 311
    .line 312
    invoke-static/range {v2 .. v9}, Lcom/mbridge/msdk/reward/adapter/b;->a(Lcom/mbridge/msdk/reward/adapter/b;Landroid/content/Context;ILcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    sget-boolean v0, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    .line 316
    .line 317
    if-eqz v0, :cond_2

    .line 318
    .line 319
    invoke-virtual {v10}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    invoke-static {v11, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    :cond_2
    :goto_4
    return-void
.end method
