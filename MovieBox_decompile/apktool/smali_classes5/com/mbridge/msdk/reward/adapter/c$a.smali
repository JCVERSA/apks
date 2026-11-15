.class Lcom/mbridge/msdk/reward/adapter/c$a;
.super Landroid/os/Handler;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/reward/adapter/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/reward/adapter/c;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/reward/adapter/c;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const-string v3, "_"

    .line 6
    .line 7
    const-string v4, "RewardMVVideoAdapter"

    .line 8
    .line 9
    iget-object v5, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 10
    .line 11
    invoke-static {v5, v2}, Lcom/mbridge/msdk/reward/adapter/c;->a(Lcom/mbridge/msdk/reward/adapter/c;Landroid/os/Message;)Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    :try_start_0
    iget v6, v2, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    const/16 v7, 0x8

    .line 18
    .line 19
    if-eq v6, v7, :cond_1e

    .line 20
    .line 21
    const/16 v7, 0x12

    .line 22
    .line 23
    if-eq v6, v7, :cond_1d

    .line 24
    .line 25
    const-string v7, ""

    .line 26
    .line 27
    const/4 v8, 0x1

    .line 28
    const/4 v9, 0x5

    .line 29
    const/4 v10, 0x6

    .line 30
    const/4 v11, 0x0

    .line 31
    packed-switch v6, :pswitch_data_0

    .line 32
    .line 33
    .line 34
    goto/16 :goto_e

    .line 35
    .line 36
    :pswitch_0
    :try_start_1
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 37
    .line 38
    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/c;->s(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    iget-object v6, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 43
    .line 44
    invoke-static {v6}, Lcom/mbridge/msdk/reward/adapter/c;->g(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    iget-object v7, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 49
    .line 50
    invoke-static {v7}, Lcom/mbridge/msdk/reward/adapter/c;->t(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    iget-object v11, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 55
    .line 56
    invoke-static {v11}, Lcom/mbridge/msdk/reward/adapter/c;->u(Lcom/mbridge/msdk/reward/adapter/c;)Z

    .line 57
    .line 58
    .line 59
    move-result v11

    .line 60
    invoke-static {v2, v3, v6, v7, v11}, Lcom/mbridge/msdk/reward/adapter/c;->a(Lcom/mbridge/msdk/reward/adapter/c;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    .line 61
    .line 62
    .line 63
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 64
    .line 65
    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/c;->a(Lcom/mbridge/msdk/reward/adapter/c;)Lcom/mbridge/msdk/reward/adapter/a;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    if-eqz v2, :cond_1f

    .line 70
    .line 71
    invoke-virtual {v1, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 72
    .line 73
    .line 74
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 75
    .line 76
    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/c;->v(Lcom/mbridge/msdk/reward/adapter/c;)Landroid/os/Handler;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    if-eqz v2, :cond_0

    .line 81
    .line 82
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 83
    .line 84
    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/c;->v(Lcom/mbridge/msdk/reward/adapter/c;)Landroid/os/Handler;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {v2, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    .line 93
    move-object v2, v0

    .line 94
    goto/16 :goto_c

    .line 95
    .line 96
    :catch_0
    move-exception v0

    .line 97
    move-object v2, v0

    .line 98
    goto/16 :goto_d

    .line 99
    .line 100
    :cond_0
    :goto_0
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 101
    .line 102
    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/c;->a(Lcom/mbridge/msdk/reward/adapter/c;)Lcom/mbridge/msdk/reward/adapter/a;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    if-eqz v2, :cond_1f

    .line 107
    .line 108
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 109
    .line 110
    iget-boolean v2, v2, Lcom/mbridge/msdk/reward/adapter/c;->R:Z

    .line 111
    .line 112
    if-nez v2, :cond_1f

    .line 113
    .line 114
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 115
    .line 116
    iput-boolean v8, v2, Lcom/mbridge/msdk/reward/adapter/c;->R:Z

    .line 117
    .line 118
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 119
    .line 120
    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/c;->a(Lcom/mbridge/msdk/reward/adapter/c;)Lcom/mbridge/msdk/reward/adapter/a;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    iget-object v3, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 125
    .line 126
    invoke-static {v3}, Lcom/mbridge/msdk/reward/adapter/c;->o(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    invoke-interface {v2, v3, v5}, Lcom/mbridge/msdk/reward/adapter/a;->a(Ljava/util/List;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)V

    .line 131
    .line 132
    .line 133
    goto/16 :goto_e

    .line 134
    .line 135
    :pswitch_1
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 136
    .line 137
    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/c;->a(Lcom/mbridge/msdk/reward/adapter/c;)Lcom/mbridge/msdk/reward/adapter/a;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    if-eqz v2, :cond_1f

    .line 142
    .line 143
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 144
    .line 145
    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/c;->g(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/List;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    if-eqz v2, :cond_2

    .line 150
    .line 151
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 152
    .line 153
    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/c;->g(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/List;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    if-lez v2, :cond_2

    .line 162
    .line 163
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 164
    .line 165
    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/c;->g(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/List;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    check-cast v2, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 174
    .line 175
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCMPTEntryUrl()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v6

    .line 179
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 180
    .line 181
    .line 182
    move-result v6

    .line 183
    xor-int/lit8 v14, v6, 0x1

    .line 184
    .line 185
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNscpt()I

    .line 186
    .line 187
    .line 188
    move-result v15

    .line 189
    iget-object v12, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 190
    .line 191
    invoke-static {v12}, Lcom/mbridge/msdk/reward/adapter/c;->o(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 192
    .line 193
    .line 194
    move-result-object v13

    .line 195
    const/16 v16, 0x1

    .line 196
    .line 197
    const/16 v17, 0x0

    .line 198
    .line 199
    invoke-virtual/range {v12 .. v17}, Lcom/mbridge/msdk/reward/adapter/c;->a(Ljava/util/List;ZIZZ)Z

    .line 200
    .line 201
    .line 202
    move-result v2

    .line 203
    if-eqz v2, :cond_2

    .line 204
    .line 205
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 206
    .line 207
    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/c;->s(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v3

    .line 211
    iget-object v6, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 212
    .line 213
    invoke-static {v6}, Lcom/mbridge/msdk/reward/adapter/c;->g(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/List;

    .line 214
    .line 215
    .line 216
    move-result-object v6

    .line 217
    iget-object v7, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 218
    .line 219
    invoke-static {v7}, Lcom/mbridge/msdk/reward/adapter/c;->t(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/List;

    .line 220
    .line 221
    .line 222
    move-result-object v7

    .line 223
    iget-object v11, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 224
    .line 225
    invoke-static {v11}, Lcom/mbridge/msdk/reward/adapter/c;->u(Lcom/mbridge/msdk/reward/adapter/c;)Z

    .line 226
    .line 227
    .line 228
    move-result v11

    .line 229
    invoke-static {v2, v3, v6, v7, v11}, Lcom/mbridge/msdk/reward/adapter/c;->a(Lcom/mbridge/msdk/reward/adapter/c;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v1, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 233
    .line 234
    .line 235
    invoke-virtual {v1, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 236
    .line 237
    .line 238
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 239
    .line 240
    iget-boolean v2, v2, Lcom/mbridge/msdk/reward/adapter/c;->R:Z

    .line 241
    .line 242
    if-nez v2, :cond_1

    .line 243
    .line 244
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 245
    .line 246
    iput-boolean v8, v2, Lcom/mbridge/msdk/reward/adapter/c;->R:Z

    .line 247
    .line 248
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 249
    .line 250
    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/c;->a(Lcom/mbridge/msdk/reward/adapter/c;)Lcom/mbridge/msdk/reward/adapter/a;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    iget-object v3, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 255
    .line 256
    invoke-static {v3}, Lcom/mbridge/msdk/reward/adapter/c;->o(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 257
    .line 258
    .line 259
    move-result-object v3

    .line 260
    invoke-interface {v2, v3, v5}, Lcom/mbridge/msdk/reward/adapter/a;->a(Ljava/util/List;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)V

    .line 261
    .line 262
    .line 263
    :cond_1
    return-void

    .line 264
    :cond_2
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 265
    .line 266
    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/c;->s(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v6

    .line 270
    iget-object v12, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 271
    .line 272
    invoke-static {v12}, Lcom/mbridge/msdk/reward/adapter/c;->g(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/List;

    .line 273
    .line 274
    .line 275
    move-result-object v12

    .line 276
    iget-object v13, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 277
    .line 278
    invoke-static {v13}, Lcom/mbridge/msdk/reward/adapter/c;->u(Lcom/mbridge/msdk/reward/adapter/c;)Z

    .line 279
    .line 280
    .line 281
    move-result v13

    .line 282
    invoke-static {v2, v6, v12, v13, v7}, Lcom/mbridge/msdk/reward/adapter/c;->a(Lcom/mbridge/msdk/reward/adapter/c;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;)V

    .line 283
    .line 284
    .line 285
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 286
    .line 287
    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/c;->v(Lcom/mbridge/msdk/reward/adapter/c;)Landroid/os/Handler;

    .line 288
    .line 289
    .line 290
    move-result-object v2

    .line 291
    if-eqz v2, :cond_3

    .line 292
    .line 293
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 294
    .line 295
    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/c;->v(Lcom/mbridge/msdk/reward/adapter/c;)Landroid/os/Handler;

    .line 296
    .line 297
    .line 298
    move-result-object v2

    .line 299
    invoke-virtual {v2, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 300
    .line 301
    .line 302
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 303
    .line 304
    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/c;->v(Lcom/mbridge/msdk/reward/adapter/c;)Landroid/os/Handler;

    .line 305
    .line 306
    .line 307
    move-result-object v2

    .line 308
    invoke-virtual {v2, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 309
    .line 310
    .line 311
    :cond_3
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 312
    .line 313
    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/c;->g(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/List;

    .line 314
    .line 315
    .line 316
    move-result-object v2

    .line 317
    if-eqz v2, :cond_4

    .line 318
    .line 319
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 320
    .line 321
    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/c;->g(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/List;

    .line 322
    .line 323
    .line 324
    move-result-object v2

    .line 325
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 326
    .line 327
    .line 328
    move-result v2

    .line 329
    if-lez v2, :cond_4

    .line 330
    .line 331
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 332
    .line 333
    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/c;->g(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/List;

    .line 334
    .line 335
    .line 336
    move-result-object v2

    .line 337
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object v2

    .line 341
    check-cast v2, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 342
    .line 343
    goto :goto_1

    .line 344
    :cond_4
    const/4 v2, 0x0

    .line 345
    :goto_1
    if-nez v2, :cond_5

    .line 346
    .line 347
    iget-object v6, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 348
    .line 349
    invoke-static {v6}, Lcom/mbridge/msdk/reward/adapter/c;->b(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 350
    .line 351
    .line 352
    move-result-object v6

    .line 353
    if-eqz v6, :cond_5

    .line 354
    .line 355
    iget-object v6, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 356
    .line 357
    invoke-static {v6}, Lcom/mbridge/msdk/reward/adapter/c;->b(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 358
    .line 359
    .line 360
    move-result-object v6

    .line 361
    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 362
    .line 363
    .line 364
    move-result v6

    .line 365
    if-lez v6, :cond_5

    .line 366
    .line 367
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 368
    .line 369
    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/c;->b(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 370
    .line 371
    .line 372
    move-result-object v2

    .line 373
    invoke-virtual {v2, v11}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object v2

    .line 377
    check-cast v2, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 378
    .line 379
    :cond_5
    iget-object v6, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 380
    .line 381
    iget-boolean v6, v6, Lcom/mbridge/msdk/reward/adapter/c;->S:Z

    .line 382
    .line 383
    if-eqz v6, :cond_6

    .line 384
    .line 385
    iget-object v6, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 386
    .line 387
    iget-boolean v6, v6, Lcom/mbridge/msdk/reward/adapter/c;->T:Z

    .line 388
    .line 389
    if-eqz v6, :cond_1f

    .line 390
    .line 391
    if-eqz v2, :cond_1f

    .line 392
    .line 393
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNLRid()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v2

    .line 397
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 398
    .line 399
    .line 400
    move-result v2

    .line 401
    if-nez v2, :cond_1f

    .line 402
    .line 403
    :cond_6
    const-string v2, "errorCode: 3401 errorMessage: resource load timeout"

    .line 404
    .line 405
    const v6, 0xd6d8a

    .line 406
    .line 407
    .line 408
    invoke-static {v6, v2}, Lcom/mbridge/msdk/foundation/error/a;->a(ILjava/lang/String;)Lcom/mbridge/msdk/foundation/error/b;

    .line 409
    .line 410
    .line 411
    move-result-object v2

    .line 412
    iget-object v6, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 413
    .line 414
    iput-boolean v11, v6, Lcom/mbridge/msdk/reward/adapter/c;->S:Z

    .line 415
    .line 416
    if-eqz v5, :cond_7

    .line 417
    .line 418
    invoke-virtual {v5, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->a(Lcom/mbridge/msdk/foundation/error/b;)V

    .line 419
    .line 420
    .line 421
    :cond_7
    iget-object v6, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 422
    .line 423
    invoke-static {v6}, Lcom/mbridge/msdk/reward/adapter/c;->a(Lcom/mbridge/msdk/reward/adapter/c;)Lcom/mbridge/msdk/reward/adapter/a;

    .line 424
    .line 425
    .line 426
    move-result-object v6

    .line 427
    iget-object v7, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 428
    .line 429
    invoke-static {v7}, Lcom/mbridge/msdk/reward/adapter/c;->g(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/List;

    .line 430
    .line 431
    .line 432
    move-result-object v7

    .line 433
    invoke-interface {v6, v7, v2, v5}, Lcom/mbridge/msdk/reward/adapter/a;->a(Ljava/util/List;Lcom/mbridge/msdk/foundation/error/b;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)V

    .line 434
    .line 435
    .line 436
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 437
    .line 438
    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/c;->o(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 439
    .line 440
    .line 441
    move-result-object v2

    .line 442
    if-eqz v2, :cond_1f

    .line 443
    .line 444
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 445
    .line 446
    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/c;->o(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 447
    .line 448
    .line 449
    move-result-object v2

    .line 450
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 451
    .line 452
    .line 453
    move-result v2

    .line 454
    if-lez v2, :cond_1f

    .line 455
    .line 456
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 457
    .line 458
    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/c;->o(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 459
    .line 460
    .line 461
    move-result-object v2

    .line 462
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 463
    .line 464
    .line 465
    move-result-object v2

    .line 466
    move v5, v11

    .line 467
    :cond_8
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 468
    .line 469
    .line 470
    move-result v6

    .line 471
    if-eqz v6, :cond_1f

    .line 472
    .line 473
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 474
    .line 475
    .line 476
    move-result-object v6

    .line 477
    check-cast v6, Lcom/mbridge/msdk/foundation/entity/CampaignEx;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 478
    .line 479
    if-eqz v6, :cond_9

    .line 480
    .line 481
    :try_start_2
    invoke-virtual {v6}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object v7

    .line 485
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 486
    .line 487
    .line 488
    move-result v7

    .line 489
    if-nez v7, :cond_9

    .line 490
    .line 491
    invoke-static {}, Lcom/mbridge/msdk/foundation/download/download/ResDownloadCheckManager;->getInstance()Lcom/mbridge/msdk/foundation/download/download/ResDownloadCheckManager;

    .line 492
    .line 493
    .line 494
    move-result-object v7

    .line 495
    invoke-virtual {v6}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    move-result-object v9

    .line 499
    invoke-virtual {v7, v9}, Lcom/mbridge/msdk/foundation/download/download/ResDownloadCheckManager;->containsVideoKey(Ljava/lang/String;)Z

    .line 500
    .line 501
    .line 502
    move-result v7

    .line 503
    if-nez v7, :cond_9

    .line 504
    .line 505
    move v7, v8

    .line 506
    goto :goto_3

    .line 507
    :catch_1
    move-exception v0

    .line 508
    move-object v6, v0

    .line 509
    goto/16 :goto_5

    .line 510
    .line 511
    :cond_9
    move v7, v11

    .line 512
    :goto_3
    if-eqz v6, :cond_a

    .line 513
    .line 514
    invoke-virtual {v6}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object v9

    .line 518
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 519
    .line 520
    .line 521
    move-result v9

    .line 522
    if-nez v9, :cond_a

    .line 523
    .line 524
    invoke-static {}, Lcom/mbridge/msdk/foundation/download/download/ResDownloadCheckManager;->getInstance()Lcom/mbridge/msdk/foundation/download/download/ResDownloadCheckManager;

    .line 525
    .line 526
    .line 527
    move-result-object v9

    .line 528
    invoke-virtual {v6}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    .line 529
    .line 530
    .line 531
    move-result-object v10

    .line 532
    invoke-virtual {v9, v10}, Lcom/mbridge/msdk/foundation/download/download/ResDownloadCheckManager;->containsZipKey(Ljava/lang/String;)Z

    .line 533
    .line 534
    .line 535
    move-result v9

    .line 536
    if-nez v9, :cond_a

    .line 537
    .line 538
    move v7, v8

    .line 539
    :cond_a
    if-eqz v6, :cond_c

    .line 540
    .line 541
    invoke-virtual {v6}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCMPTEntryUrl()Ljava/lang/String;

    .line 542
    .line 543
    .line 544
    move-result-object v9

    .line 545
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 546
    .line 547
    .line 548
    move-result v9

    .line 549
    if-nez v9, :cond_c

    .line 550
    .line 551
    invoke-static {}, Lcom/mbridge/msdk/foundation/download/download/ResDownloadCheckManager;->getInstance()Lcom/mbridge/msdk/foundation/download/download/ResDownloadCheckManager;

    .line 552
    .line 553
    .line 554
    move-result-object v9

    .line 555
    invoke-virtual {v6}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCMPTEntryUrl()Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v10

    .line 559
    invoke-virtual {v9, v10}, Lcom/mbridge/msdk/foundation/download/download/ResDownloadCheckManager;->containsZipKey(Ljava/lang/String;)Z

    .line 560
    .line 561
    .line 562
    move-result v9

    .line 563
    if-nez v9, :cond_b

    .line 564
    .line 565
    move v7, v8

    .line 566
    goto :goto_4

    .line 567
    :cond_b
    if-nez v5, :cond_c

    .line 568
    .line 569
    if-nez v7, :cond_c

    .line 570
    .line 571
    new-instance v9, Ljava/lang/StringBuilder;

    .line 572
    .line 573
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 574
    .line 575
    .line 576
    iget-object v10, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 577
    .line 578
    invoke-static {v10}, Lcom/mbridge/msdk/reward/adapter/c;->s(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/lang/String;

    .line 579
    .line 580
    .line 581
    move-result-object v10

    .line 582
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    .line 584
    .line 585
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    .line 587
    .line 588
    invoke-virtual {v6}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    move-result-object v10

    .line 592
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    .line 594
    .line 595
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    .line 597
    .line 598
    invoke-virtual {v6}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCMPTEntryUrl()Ljava/lang/String;

    .line 599
    .line 600
    .line 601
    move-result-object v10

    .line 602
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    .line 604
    .line 605
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 606
    .line 607
    .line 608
    move-result-object v9

    .line 609
    invoke-static {v9}, Lcom/mbridge/msdk/videocommon/a;->b(Ljava/lang/String;)Lcom/mbridge/msdk/videocommon/a$a;

    .line 610
    .line 611
    .line 612
    move-result-object v9

    .line 613
    if-nez v9, :cond_c

    .line 614
    .line 615
    move v5, v8

    .line 616
    :cond_c
    :goto_4
    if-eqz v6, :cond_8

    .line 617
    .line 618
    invoke-virtual {v6}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    .line 619
    .line 620
    .line 621
    move-result-object v9

    .line 622
    if-eqz v9, :cond_8

    .line 623
    .line 624
    invoke-virtual {v6}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    .line 625
    .line 626
    .line 627
    move-result-object v9

    .line 628
    invoke-virtual {v9}, Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;->e()Ljava/lang/String;

    .line 629
    .line 630
    .line 631
    move-result-object v9

    .line 632
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 633
    .line 634
    .line 635
    move-result v9

    .line 636
    if-nez v9, :cond_8

    .line 637
    .line 638
    invoke-virtual {v6}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    .line 639
    .line 640
    .line 641
    move-result-object v9

    .line 642
    invoke-virtual {v9}, Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;->e()Ljava/lang/String;

    .line 643
    .line 644
    .line 645
    move-result-object v9

    .line 646
    const-string v10, "cmpt=1"

    .line 647
    .line 648
    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 649
    .line 650
    .line 651
    move-result v9

    .line 652
    if-nez v9, :cond_8

    .line 653
    .line 654
    invoke-static {}, Lcom/mbridge/msdk/foundation/download/download/ResDownloadCheckManager;->getInstance()Lcom/mbridge/msdk/foundation/download/download/ResDownloadCheckManager;

    .line 655
    .line 656
    .line 657
    move-result-object v9

    .line 658
    invoke-virtual {v6}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    .line 659
    .line 660
    .line 661
    move-result-object v10

    .line 662
    invoke-virtual {v10}, Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;->e()Ljava/lang/String;

    .line 663
    .line 664
    .line 665
    move-result-object v10

    .line 666
    invoke-virtual {v9, v10}, Lcom/mbridge/msdk/foundation/download/download/ResDownloadCheckManager;->containsZipKey(Ljava/lang/String;)Z

    .line 667
    .line 668
    .line 669
    move-result v9

    .line 670
    if-nez v9, :cond_d

    .line 671
    .line 672
    goto/16 :goto_2

    .line 673
    .line 674
    :cond_d
    invoke-virtual {v6}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCMPTEntryUrl()Ljava/lang/String;

    .line 675
    .line 676
    .line 677
    move-result-object v9

    .line 678
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 679
    .line 680
    .line 681
    move-result v9

    .line 682
    if-eqz v9, :cond_8

    .line 683
    .line 684
    if-nez v7, :cond_8

    .line 685
    .line 686
    invoke-virtual {v6}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    .line 687
    .line 688
    .line 689
    move-result v7

    .line 690
    invoke-static {v7, v6}, Lcom/mbridge/msdk/videocommon/a;->a(ILcom/mbridge/msdk/foundation/entity/CampaignEx;)Lcom/mbridge/msdk/videocommon/a$a;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 691
    .line 692
    .line 693
    goto/16 :goto_2

    .line 694
    .line 695
    :goto_5
    :try_start_3
    sget-boolean v7, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    .line 696
    .line 697
    if-eqz v7, :cond_8

    .line 698
    .line 699
    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 700
    .line 701
    .line 702
    move-result-object v6

    .line 703
    invoke-static {v4, v6}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    .line 705
    .line 706
    goto/16 :goto_2

    .line 707
    .line 708
    :pswitch_2
    iget-object v3, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 709
    .line 710
    invoke-static {v3}, Lcom/mbridge/msdk/reward/adapter/c;->a(Lcom/mbridge/msdk/reward/adapter/c;)Lcom/mbridge/msdk/reward/adapter/a;

    .line 711
    .line 712
    .line 713
    move-result-object v3

    .line 714
    if-eqz v3, :cond_1f

    .line 715
    .line 716
    iget-object v3, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 717
    .line 718
    invoke-static {v3}, Lcom/mbridge/msdk/reward/adapter/c;->s(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/lang/String;

    .line 719
    .line 720
    .line 721
    move-result-object v6

    .line 722
    iget-object v8, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 723
    .line 724
    invoke-static {v8}, Lcom/mbridge/msdk/reward/adapter/c;->g(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/List;

    .line 725
    .line 726
    .line 727
    move-result-object v8

    .line 728
    iget-object v12, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 729
    .line 730
    invoke-static {v12}, Lcom/mbridge/msdk/reward/adapter/c;->u(Lcom/mbridge/msdk/reward/adapter/c;)Z

    .line 731
    .line 732
    .line 733
    move-result v12

    .line 734
    invoke-static {v3, v6, v8, v12, v7}, Lcom/mbridge/msdk/reward/adapter/c;->a(Lcom/mbridge/msdk/reward/adapter/c;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 735
    .line 736
    .line 737
    const v3, 0xd6d82

    .line 738
    .line 739
    .line 740
    :try_start_4
    const-string v6, "unknow error in load failed"

    .line 741
    .line 742
    invoke-static {v3, v6}, Lcom/mbridge/msdk/foundation/error/a;->a(ILjava/lang/String;)Lcom/mbridge/msdk/foundation/error/b;

    .line 743
    .line 744
    .line 745
    move-result-object v6

    .line 746
    iget-object v8, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 747
    .line 748
    if-nez v8, :cond_f

    .line 749
    .line 750
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 751
    .line 752
    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/c;->v(Lcom/mbridge/msdk/reward/adapter/c;)Landroid/os/Handler;

    .line 753
    .line 754
    .line 755
    move-result-object v2

    .line 756
    if-eqz v2, :cond_e

    .line 757
    .line 758
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 759
    .line 760
    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/c;->v(Lcom/mbridge/msdk/reward/adapter/c;)Landroid/os/Handler;

    .line 761
    .line 762
    .line 763
    move-result-object v2

    .line 764
    invoke-virtual {v2, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 765
    .line 766
    .line 767
    goto :goto_6

    .line 768
    :catch_2
    move-exception v0

    .line 769
    move-object v2, v0

    .line 770
    goto/16 :goto_b

    .line 771
    .line 772
    :cond_e
    :goto_6
    invoke-virtual {v1, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 773
    .line 774
    .line 775
    const-string v2, "=====================onVideoLoadFail=====================00000"

    .line 776
    .line 777
    invoke-static {v4, v2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    .line 779
    .line 780
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 781
    .line 782
    iget-boolean v2, v2, Lcom/mbridge/msdk/reward/adapter/c;->S:Z

    .line 783
    .line 784
    if-nez v2, :cond_16

    .line 785
    .line 786
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 787
    .line 788
    iput-boolean v11, v2, Lcom/mbridge/msdk/reward/adapter/c;->S:Z

    .line 789
    .line 790
    const-string v2, "errorCode: 3506 errorMessage: data load failed"

    .line 791
    .line 792
    invoke-static {v3, v2}, Lcom/mbridge/msdk/foundation/error/a;->a(ILjava/lang/String;)Lcom/mbridge/msdk/foundation/error/b;

    .line 793
    .line 794
    .line 795
    move-result-object v2

    .line 796
    :goto_7
    move-object v6, v2

    .line 797
    goto/16 :goto_9

    .line 798
    .line 799
    :cond_f
    check-cast v8, Ljava/lang/String;

    .line 800
    .line 801
    iget v2, v2, Landroid/os/Message;->arg1:I

    .line 802
    .line 803
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 804
    .line 805
    .line 806
    move-result v12

    .line 807
    if-eqz v12, :cond_11

    .line 808
    .line 809
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 810
    .line 811
    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/c;->v(Lcom/mbridge/msdk/reward/adapter/c;)Landroid/os/Handler;

    .line 812
    .line 813
    .line 814
    move-result-object v2

    .line 815
    if-eqz v2, :cond_10

    .line 816
    .line 817
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 818
    .line 819
    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/c;->v(Lcom/mbridge/msdk/reward/adapter/c;)Landroid/os/Handler;

    .line 820
    .line 821
    .line 822
    move-result-object v2

    .line 823
    invoke-virtual {v2, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 824
    .line 825
    .line 826
    :cond_10
    invoke-virtual {v1, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 827
    .line 828
    .line 829
    const-string v2, "=====================onVideoLoadFail=====================11111"

    .line 830
    .line 831
    invoke-static {v4, v2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    .line 833
    .line 834
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 835
    .line 836
    iget-boolean v2, v2, Lcom/mbridge/msdk/reward/adapter/c;->S:Z

    .line 837
    .line 838
    if-nez v2, :cond_16

    .line 839
    .line 840
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 841
    .line 842
    iput-boolean v11, v2, Lcom/mbridge/msdk/reward/adapter/c;->S:Z

    .line 843
    .line 844
    const-string v2, "errorCode: 3507 errorMessage: data load failed, errorMsg null"

    .line 845
    .line 846
    invoke-static {v3, v2}, Lcom/mbridge/msdk/foundation/error/a;->a(ILjava/lang/String;)Lcom/mbridge/msdk/foundation/error/b;

    .line 847
    .line 848
    .line 849
    move-result-object v2

    .line 850
    goto :goto_7

    .line 851
    :cond_11
    iget-object v6, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 852
    .line 853
    invoke-static {v6}, Lcom/mbridge/msdk/reward/adapter/c;->v(Lcom/mbridge/msdk/reward/adapter/c;)Landroid/os/Handler;

    .line 854
    .line 855
    .line 856
    move-result-object v6

    .line 857
    if-eqz v6, :cond_12

    .line 858
    .line 859
    iget-object v6, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 860
    .line 861
    invoke-static {v6}, Lcom/mbridge/msdk/reward/adapter/c;->v(Lcom/mbridge/msdk/reward/adapter/c;)Landroid/os/Handler;

    .line 862
    .line 863
    .line 864
    move-result-object v6

    .line 865
    invoke-virtual {v6, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 866
    .line 867
    .line 868
    :cond_12
    invoke-virtual {v1, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 869
    .line 870
    .line 871
    const v6, 0xd6d95

    .line 872
    .line 873
    .line 874
    if-ne v2, v6, :cond_13

    .line 875
    .line 876
    const-string v2, "errorCode: 3507 errorMessage: data load failed, errorMsg is APP ALREADY INSTALLED"

    .line 877
    .line 878
    invoke-static {v6, v2}, Lcom/mbridge/msdk/foundation/error/a;->a(ILjava/lang/String;)Lcom/mbridge/msdk/foundation/error/b;

    .line 879
    .line 880
    .line 881
    move-result-object v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 882
    goto :goto_7

    .line 883
    :cond_13
    const-string v6, "errorCode: 3507 errorMessage: data load failed, errorMsg is "

    .line 884
    .line 885
    const v12, 0xd6d83

    .line 886
    .line 887
    .line 888
    if-eq v2, v12, :cond_15

    .line 889
    .line 890
    if-eq v2, v10, :cond_15

    .line 891
    .line 892
    const/4 v13, 0x7

    .line 893
    if-ne v2, v13, :cond_14

    .line 894
    .line 895
    goto :goto_8

    .line 896
    :cond_14
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 897
    .line 898
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 899
    .line 900
    .line 901
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 902
    .line 903
    .line 904
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 905
    .line 906
    .line 907
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 908
    .line 909
    .line 910
    move-result-object v2

    .line 911
    invoke-static {v3, v2}, Lcom/mbridge/msdk/foundation/error/a;->a(ILjava/lang/String;)Lcom/mbridge/msdk/foundation/error/b;

    .line 912
    .line 913
    .line 914
    move-result-object v2

    .line 915
    goto :goto_7

    .line 916
    :cond_15
    :goto_8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 917
    .line 918
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 919
    .line 920
    .line 921
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 922
    .line 923
    .line 924
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 925
    .line 926
    .line 927
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 928
    .line 929
    .line 930
    move-result-object v2

    .line 931
    invoke-static {v12, v2}, Lcom/mbridge/msdk/foundation/error/a;->a(ILjava/lang/String;)Lcom/mbridge/msdk/foundation/error/b;

    .line 932
    .line 933
    .line 934
    move-result-object v2

    .line 935
    goto/16 :goto_7

    .line 936
    .line 937
    :cond_16
    :goto_9
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 938
    .line 939
    iput-boolean v11, v2, Lcom/mbridge/msdk/reward/adapter/c;->S:Z

    .line 940
    .line 941
    if-eqz v5, :cond_18

    .line 942
    .line 943
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 944
    .line 945
    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/c;->g(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/List;

    .line 946
    .line 947
    .line 948
    move-result-object v2

    .line 949
    invoke-virtual {v5, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->b(Ljava/util/List;)V

    .line 950
    .line 951
    .line 952
    invoke-virtual {v5}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->p()Lcom/mbridge/msdk/foundation/error/b;

    .line 953
    .line 954
    .line 955
    move-result-object v2

    .line 956
    if-nez v2, :cond_17

    .line 957
    .line 958
    invoke-virtual {v5, v6}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->a(Lcom/mbridge/msdk/foundation/error/b;)V

    .line 959
    .line 960
    .line 961
    goto :goto_a

    .line 962
    :cond_17
    invoke-virtual {v5}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->p()Lcom/mbridge/msdk/foundation/error/b;

    .line 963
    .line 964
    .line 965
    move-result-object v6

    .line 966
    :cond_18
    :goto_a
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 967
    .line 968
    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/c;->a(Lcom/mbridge/msdk/reward/adapter/c;)Lcom/mbridge/msdk/reward/adapter/a;

    .line 969
    .line 970
    .line 971
    move-result-object v2

    .line 972
    iget-object v8, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 973
    .line 974
    invoke-static {v8}, Lcom/mbridge/msdk/reward/adapter/c;->g(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/List;

    .line 975
    .line 976
    .line 977
    move-result-object v8

    .line 978
    invoke-interface {v2, v8, v6, v5}, Lcom/mbridge/msdk/reward/adapter/a;->a(Ljava/util/List;Lcom/mbridge/msdk/foundation/error/b;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 979
    .line 980
    .line 981
    goto/16 :goto_e

    .line 982
    .line 983
    :goto_b
    :try_start_6
    iget-object v6, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 984
    .line 985
    invoke-static {v6}, Lcom/mbridge/msdk/reward/adapter/c;->v(Lcom/mbridge/msdk/reward/adapter/c;)Landroid/os/Handler;

    .line 986
    .line 987
    .line 988
    move-result-object v6

    .line 989
    if-eqz v6, :cond_19

    .line 990
    .line 991
    iget-object v6, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 992
    .line 993
    invoke-static {v6}, Lcom/mbridge/msdk/reward/adapter/c;->v(Lcom/mbridge/msdk/reward/adapter/c;)Landroid/os/Handler;

    .line 994
    .line 995
    .line 996
    move-result-object v6

    .line 997
    invoke-virtual {v6, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 998
    .line 999
    .line 1000
    :cond_19
    invoke-virtual {v1, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 1001
    .line 1002
    .line 1003
    iget-object v6, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 1004
    .line 1005
    invoke-static {v6}, Lcom/mbridge/msdk/reward/adapter/c;->s(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/lang/String;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v8

    .line 1009
    iget-object v9, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 1010
    .line 1011
    invoke-static {v9}, Lcom/mbridge/msdk/reward/adapter/c;->g(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/List;

    .line 1012
    .line 1013
    .line 1014
    move-result-object v9

    .line 1015
    iget-object v10, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 1016
    .line 1017
    invoke-static {v10}, Lcom/mbridge/msdk/reward/adapter/c;->u(Lcom/mbridge/msdk/reward/adapter/c;)Z

    .line 1018
    .line 1019
    .line 1020
    move-result v10

    .line 1021
    invoke-static {v6, v8, v9, v10, v7}, Lcom/mbridge/msdk/reward/adapter/c;->a(Lcom/mbridge/msdk/reward/adapter/c;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;)V

    .line 1022
    .line 1023
    .line 1024
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1025
    .line 1026
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1027
    .line 1028
    .line 1029
    const-string v7, "errorCode: 3508 errorMessage: data load failed, exception is: "

    .line 1030
    .line 1031
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1032
    .line 1033
    .line 1034
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1035
    .line 1036
    .line 1037
    move-result-object v2

    .line 1038
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1039
    .line 1040
    .line 1041
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1042
    .line 1043
    .line 1044
    move-result-object v2

    .line 1045
    invoke-static {v3, v2}, Lcom/mbridge/msdk/foundation/error/a;->a(ILjava/lang/String;)Lcom/mbridge/msdk/foundation/error/b;

    .line 1046
    .line 1047
    .line 1048
    move-result-object v2

    .line 1049
    if-eqz v5, :cond_1a

    .line 1050
    .line 1051
    iget-object v3, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 1052
    .line 1053
    invoke-static {v3}, Lcom/mbridge/msdk/reward/adapter/c;->g(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/List;

    .line 1054
    .line 1055
    .line 1056
    move-result-object v3

    .line 1057
    invoke-virtual {v5, v3}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->b(Ljava/util/List;)V

    .line 1058
    .line 1059
    .line 1060
    invoke-virtual {v5, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->a(Lcom/mbridge/msdk/foundation/error/b;)V

    .line 1061
    .line 1062
    .line 1063
    :cond_1a
    iget-object v3, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 1064
    .line 1065
    invoke-static {v3}, Lcom/mbridge/msdk/reward/adapter/c;->a(Lcom/mbridge/msdk/reward/adapter/c;)Lcom/mbridge/msdk/reward/adapter/a;

    .line 1066
    .line 1067
    .line 1068
    move-result-object v3

    .line 1069
    iget-object v6, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 1070
    .line 1071
    invoke-static {v6}, Lcom/mbridge/msdk/reward/adapter/c;->g(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/List;

    .line 1072
    .line 1073
    .line 1074
    move-result-object v6

    .line 1075
    invoke-interface {v3, v6, v2, v5}, Lcom/mbridge/msdk/reward/adapter/a;->a(Ljava/util/List;Lcom/mbridge/msdk/foundation/error/b;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)V

    .line 1076
    .line 1077
    .line 1078
    goto/16 :goto_e

    .line 1079
    .line 1080
    :pswitch_3
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 1081
    .line 1082
    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/c;->a(Lcom/mbridge/msdk/reward/adapter/c;)Lcom/mbridge/msdk/reward/adapter/a;

    .line 1083
    .line 1084
    .line 1085
    move-result-object v2

    .line 1086
    if-eqz v2, :cond_1b

    .line 1087
    .line 1088
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 1089
    .line 1090
    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/c;->a(Lcom/mbridge/msdk/reward/adapter/c;)Lcom/mbridge/msdk/reward/adapter/a;

    .line 1091
    .line 1092
    .line 1093
    move-result-object v2

    .line 1094
    const-string v3, "campaign is ok"

    .line 1095
    .line 1096
    invoke-interface {v2, v3, v5}, Lcom/mbridge/msdk/reward/adapter/a;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)V

    .line 1097
    .line 1098
    .line 1099
    :cond_1b
    new-instance v2, Landroid/os/Message;

    .line 1100
    .line 1101
    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 1102
    .line 1103
    .line 1104
    iput v9, v2, Landroid/os/Message;->what:I

    .line 1105
    .line 1106
    if-eqz v5, :cond_1c

    .line 1107
    .line 1108
    new-instance v3, Landroid/os/Bundle;

    .line 1109
    .line 1110
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1111
    .line 1112
    .line 1113
    const-string v6, "metrics_data_lrid"

    .line 1114
    .line 1115
    invoke-virtual {v5}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->o()Ljava/lang/String;

    .line 1116
    .line 1117
    .line 1118
    move-result-object v5

    .line 1119
    invoke-virtual {v3, v6, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    .line 1121
    .line 1122
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1123
    .line 1124
    .line 1125
    :cond_1c
    sget v3, Lcom/mbridge/msdk/foundation/same/a;->L:I

    .line 1126
    .line 1127
    int-to-long v5, v3

    .line 1128
    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1129
    .line 1130
    .line 1131
    goto :goto_e

    .line 1132
    :pswitch_4
    iget-object v2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1133
    .line 1134
    check-cast v2, Ljava/lang/String;

    .line 1135
    .line 1136
    iget-object v3, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 1137
    .line 1138
    invoke-virtual {v3, v2, v5}, Lcom/mbridge/msdk/reward/adapter/c;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)V

    .line 1139
    .line 1140
    .line 1141
    goto :goto_e

    .line 1142
    :cond_1d
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 1143
    .line 1144
    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/c;->d(Lcom/mbridge/msdk/reward/adapter/c;)Lcom/mbridge/msdk/reward/controller/a$j;

    .line 1145
    .line 1146
    .line 1147
    move-result-object v2

    .line 1148
    if-eqz v2, :cond_1f

    .line 1149
    .line 1150
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 1151
    .line 1152
    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/c;->d(Lcom/mbridge/msdk/reward/adapter/c;)Lcom/mbridge/msdk/reward/controller/a$j;

    .line 1153
    .line 1154
    .line 1155
    move-result-object v2

    .line 1156
    iget-object v3, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 1157
    .line 1158
    invoke-static {v3}, Lcom/mbridge/msdk/reward/adapter/c;->e(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/lang/String;

    .line 1159
    .line 1160
    .line 1161
    move-result-object v3

    .line 1162
    invoke-virtual {v2, v3, v5}, Lcom/mbridge/msdk/reward/controller/a$j;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)V

    .line 1163
    .line 1164
    .line 1165
    goto :goto_e

    .line 1166
    :cond_1e
    iget-object v3, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 1167
    .line 1168
    invoke-static {v3}, Lcom/mbridge/msdk/reward/adapter/c;->a(Lcom/mbridge/msdk/reward/adapter/c;)Lcom/mbridge/msdk/reward/adapter/a;

    .line 1169
    .line 1170
    .line 1171
    move-result-object v3

    .line 1172
    if-eqz v3, :cond_1f

    .line 1173
    .line 1174
    iget-object v2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1175
    .line 1176
    check-cast v2, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 1177
    .line 1178
    if-eqz v2, :cond_1f

    .line 1179
    .line 1180
    iget-object v3, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 1181
    .line 1182
    invoke-static {v3}, Lcom/mbridge/msdk/reward/adapter/c;->s(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/lang/String;

    .line 1183
    .line 1184
    .line 1185
    move-result-object v3

    .line 1186
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1187
    .line 1188
    .line 1189
    move-result v3

    .line 1190
    if-nez v3, :cond_1f

    .line 1191
    .line 1192
    iget-object v3, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 1193
    .line 1194
    invoke-static {v3}, Lcom/mbridge/msdk/reward/adapter/c;->c(Lcom/mbridge/msdk/reward/adapter/c;)Landroid/content/Context;

    .line 1195
    .line 1196
    .line 1197
    move-result-object v3

    .line 1198
    iget-object v5, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 1199
    .line 1200
    invoke-static {v5}, Lcom/mbridge/msdk/reward/adapter/c;->s(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/lang/String;

    .line 1201
    .line 1202
    .line 1203
    move-result-object v5

    .line 1204
    invoke-static {v3, v2, v5}, Lcom/mbridge/msdk/reward/report/a;->a(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;)V

    .line 1205
    .line 1206
    .line 1207
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 1208
    .line 1209
    invoke-virtual {v2}, Lcom/mbridge/msdk/reward/adapter/c;->l()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1210
    .line 1211
    .line 1212
    goto :goto_e

    .line 1213
    :goto_c
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1214
    .line 1215
    .line 1216
    move-result-object v2

    .line 1217
    invoke-static {v4, v2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    .line 1219
    .line 1220
    goto :goto_e

    .line 1221
    :goto_d
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1222
    .line 1223
    .line 1224
    :cond_1f
    :goto_e
    return-void

    .line 1225
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
