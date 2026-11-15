.class public Lcom/mbridge/msdk/video/module/listener/impl/o;
.super Lcom/mbridge/msdk/video/module/listener/impl/k;
.source "source.java"


# instance fields
.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field protected t:I

.field private u:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private v:Lcom/mbridge/msdk/video/module/MBridgeVideoView$u;

.field private w:I


# direct methods
.method public constructor <init>(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/videocommon/entity/c;Lcom/mbridge/msdk/videocommon/download/a;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/video/module/listener/a;IZ)V
    .locals 10

    .line 1
    move-object v9, p0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p3

    .line 5
    move-object v3, p2

    .line 6
    move-object v4, p4

    .line 7
    move-object v5, p5

    .line 8
    move-object/from16 v6, p6

    .line 9
    .line 10
    move/from16 v7, p7

    .line 11
    .line 12
    move/from16 v8, p8

    .line 13
    .line 14
    invoke-direct/range {v0 .. v8}, Lcom/mbridge/msdk/video/module/listener/impl/k;-><init>(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/videocommon/download/a;Lcom/mbridge/msdk/videocommon/entity/c;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/video/module/listener/a;IZ)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, v9, Lcom/mbridge/msdk/video/module/listener/impl/o;->s:Z

    .line 19
    .line 20
    iput v0, v9, Lcom/mbridge/msdk/video/module/listener/impl/o;->t:I

    .line 21
    .line 22
    const/4 v0, -0x1

    .line 23
    iput v0, v9, Lcom/mbridge/msdk/video/module/listener/impl/o;->w:I

    .line 24
    .line 25
    iget-boolean v0, v9, Lcom/mbridge/msdk/video/module/listener/impl/k;->a:Z

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdvImpList()Ljava/util/Map;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, v9, Lcom/mbridge/msdk/video/module/listener/impl/o;->u:Ljava/util/Map;

    .line 34
    .line 35
    :cond_0
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoCompleteTime()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    iput v0, v9, Lcom/mbridge/msdk/video/module/listener/impl/o;->t:I

    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Object;)V
    .locals 8

    .line 1
    const-string v0, "NotifyListener"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eq p1, v1, :cond_c

    .line 6
    .line 7
    const/16 v3, 0x14

    .line 8
    .line 9
    const-string v4, "i_l_s_t_r_i"

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    if-eq p1, v3, :cond_b

    .line 13
    .line 14
    const/16 v3, 0x82

    .line 15
    .line 16
    if-eq p1, v3, :cond_a

    .line 17
    .line 18
    const/4 v3, 0x6

    .line 19
    if-eq p1, v3, :cond_c

    .line 20
    .line 21
    const/4 v3, 0x7

    .line 22
    if-eq p1, v3, :cond_8

    .line 23
    .line 24
    const/16 v1, 0xf

    .line 25
    .line 26
    if-eq p1, v1, :cond_1

    .line 27
    .line 28
    const/16 v1, 0x10

    .line 29
    .line 30
    if-eq p1, v1, :cond_c

    .line 31
    .line 32
    packed-switch p1, :pswitch_data_0

    .line 33
    .line 34
    .line 35
    goto/16 :goto_3

    .line 36
    .line 37
    :pswitch_0
    :try_start_0
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/module/listener/impl/k;->c()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/module/listener/impl/k;->b()V

    .line 41
    .line 42
    .line 43
    goto/16 :goto_3

    .line 44
    .line 45
    :catchall_0
    move-exception p1

    .line 46
    goto/16 :goto_4

    .line 47
    .line 48
    :pswitch_1
    new-instance v1, Lcom/mbridge/msdk/video/module/listener/impl/o$a;

    .line 49
    .line 50
    invoke-direct {v1, p0, p2}, Lcom/mbridge/msdk/video/module/listener/impl/o$a;-><init>(Lcom/mbridge/msdk/video/module/listener/impl/o;Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/d;->a()Lcom/mbridge/msdk/foundation/controller/d;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/controller/d;->e()Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_0

    .line 62
    .line 63
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/threadpool/a;->b()Ljava/util/concurrent/ThreadPoolExecutor;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v2, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 72
    .line 73
    .line 74
    :goto_0
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/module/listener/impl/k;->l()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/module/listener/impl/k;->c()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/module/listener/impl/k;->b()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/module/listener/impl/k;->e()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/module/listener/impl/k;->a()V

    .line 87
    .line 88
    .line 89
    goto/16 :goto_3

    .line 90
    .line 91
    :pswitch_2
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/module/listener/impl/k;->a()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/module/listener/impl/k;->l()V

    .line 95
    .line 96
    .line 97
    goto/16 :goto_3

    .line 98
    .line 99
    :cond_1
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/module/listener/impl/k;->j()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/module/listener/impl/k;->h()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/module/listener/impl/k;->i()V

    .line 106
    .line 107
    .line 108
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/q0;->a()Lcom/mbridge/msdk/foundation/tools/q0;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v1, v4, v5}, Lcom/mbridge/msdk/foundation/tools/q0;->a(Ljava/lang/String;Z)Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-eqz v1, :cond_2

    .line 117
    .line 118
    iget-boolean v1, p0, Lcom/mbridge/msdk/video/module/listener/impl/o;->q:Z

    .line 119
    .line 120
    if-nez v1, :cond_2

    .line 121
    .line 122
    iput-boolean v2, p0, Lcom/mbridge/msdk/video/module/listener/impl/o;->q:Z

    .line 123
    .line 124
    iget-object v1, p0, Lcom/mbridge/msdk/video/module/listener/impl/o;->v:Lcom/mbridge/msdk/video/module/MBridgeVideoView$u;

    .line 125
    .line 126
    if-eqz v1, :cond_2

    .line 127
    .line 128
    invoke-interface {v1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView$u;->a()V

    .line 129
    .line 130
    .line 131
    :cond_2
    if-eqz p2, :cond_3

    .line 132
    .line 133
    instance-of v1, p2, Lcom/mbridge/msdk/video/module/MBridgeVideoView$v;

    .line 134
    .line 135
    if-eqz v1, :cond_3

    .line 136
    .line 137
    move-object v1, p2

    .line 138
    check-cast v1, Lcom/mbridge/msdk/video/module/MBridgeVideoView$v;

    .line 139
    .line 140
    iget v5, v1, Lcom/mbridge/msdk/video/module/MBridgeVideoView$v;->a:I

    .line 141
    .line 142
    move-object v1, p2

    .line 143
    check-cast v1, Lcom/mbridge/msdk/video/module/MBridgeVideoView$v;

    .line 144
    .line 145
    iget v1, v1, Lcom/mbridge/msdk/video/module/MBridgeVideoView$v;->b:I

    .line 146
    .line 147
    move v7, v5

    .line 148
    move v5, v1

    .line 149
    move v1, v7

    .line 150
    goto :goto_1

    .line 151
    :cond_3
    move v1, v5

    .line 152
    :goto_1
    if-nez v5, :cond_4

    .line 153
    .line 154
    iget-object v3, p0, Lcom/mbridge/msdk/video/module/listener/impl/k;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 155
    .line 156
    if-eqz v3, :cond_4

    .line 157
    .line 158
    invoke-virtual {v3}, Lcom/mbridge/msdk/out/Campaign;->getVideoLength()I

    .line 159
    .line 160
    .line 161
    move-result v5

    .line 162
    :cond_4
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    iget-object v4, p0, Lcom/mbridge/msdk/video/module/listener/impl/k;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 171
    .line 172
    iget v6, p0, Lcom/mbridge/msdk/video/module/listener/impl/k;->j:I

    .line 173
    .line 174
    invoke-static {v3, v4, v1, v5, v6}, Lcom/mbridge/msdk/video/module/report/b;->a(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;III)V

    .line 175
    .line 176
    .line 177
    iget-object v3, p0, Lcom/mbridge/msdk/video/module/listener/impl/k;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 178
    .line 179
    iget-object v4, p0, Lcom/mbridge/msdk/video/module/listener/impl/o;->u:Ljava/util/Map;

    .line 180
    .line 181
    iget-object v6, p0, Lcom/mbridge/msdk/video/module/listener/impl/k;->g:Ljava/lang/String;

    .line 182
    .line 183
    invoke-static {v3, v4, v6, v1}, Lcom/mbridge/msdk/video/module/report/b;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/util/Map;Ljava/lang/String;I)V

    .line 184
    .line 185
    .line 186
    iget-boolean v3, p0, Lcom/mbridge/msdk/video/module/listener/impl/o;->r:Z

    .line 187
    .line 188
    if-nez v3, :cond_5

    .line 189
    .line 190
    iput-boolean v2, p0, Lcom/mbridge/msdk/video/module/listener/impl/o;->r:Z

    .line 191
    .line 192
    iget-object v3, p0, Lcom/mbridge/msdk/video/module/listener/impl/k;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 193
    .line 194
    iget-object v4, p0, Lcom/mbridge/msdk/video/module/listener/impl/k;->g:Ljava/lang/String;

    .line 195
    .line 196
    invoke-static {v3, v4}, Lcom/mbridge/msdk/video/module/report/b;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    :cond_5
    iget-boolean v3, p0, Lcom/mbridge/msdk/video/module/listener/impl/o;->s:Z

    .line 200
    .line 201
    if-nez v3, :cond_7

    .line 202
    .line 203
    iget v3, p0, Lcom/mbridge/msdk/video/module/listener/impl/o;->t:I

    .line 204
    .line 205
    if-nez v3, :cond_6

    .line 206
    .line 207
    goto :goto_2

    .line 208
    :cond_6
    move v5, v3

    .line 209
    :goto_2
    if-lt v1, v5, :cond_7

    .line 210
    .line 211
    iput-boolean v2, p0, Lcom/mbridge/msdk/video/module/listener/impl/o;->s:Z

    .line 212
    .line 213
    const/16 p1, 0x11

    .line 214
    .line 215
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    .line 219
    .line 220
    const-string v3, "onPlayProgress:"

    .line 221
    .line 222
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    invoke-static {v0, v2}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    iput v1, p0, Lcom/mbridge/msdk/video/module/listener/impl/o;->w:I

    .line 236
    .line 237
    goto/16 :goto_3

    .line 238
    .line 239
    :cond_8
    iget-boolean v3, p0, Lcom/mbridge/msdk/video/module/listener/impl/k;->a:Z

    .line 240
    .line 241
    if-eqz v3, :cond_d

    .line 242
    .line 243
    if-eqz p2, :cond_d

    .line 244
    .line 245
    instance-of v3, p2, Ljava/lang/Integer;

    .line 246
    .line 247
    if-eqz v3, :cond_d

    .line 248
    .line 249
    move-object v3, p2

    .line 250
    check-cast v3, Ljava/lang/Integer;

    .line 251
    .line 252
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 253
    .line 254
    .line 255
    move-result v3

    .line 256
    if-ne v3, v1, :cond_9

    .line 257
    .line 258
    iget-boolean v1, p0, Lcom/mbridge/msdk/video/module/listener/impl/o;->o:Z

    .line 259
    .line 260
    if-nez v1, :cond_d

    .line 261
    .line 262
    iput-boolean v2, p0, Lcom/mbridge/msdk/video/module/listener/impl/o;->o:Z

    .line 263
    .line 264
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    iget-object v2, p0, Lcom/mbridge/msdk/video/module/listener/impl/k;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 273
    .line 274
    invoke-static {v1, v2}, Lcom/mbridge/msdk/video/module/report/b;->e(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 275
    .line 276
    .line 277
    goto :goto_3

    .line 278
    :cond_9
    if-ne v3, v2, :cond_d

    .line 279
    .line 280
    iget-boolean v1, p0, Lcom/mbridge/msdk/video/module/listener/impl/o;->n:Z

    .line 281
    .line 282
    if-nez v1, :cond_d

    .line 283
    .line 284
    iput-boolean v2, p0, Lcom/mbridge/msdk/video/module/listener/impl/o;->n:Z

    .line 285
    .line 286
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    iget-object v2, p0, Lcom/mbridge/msdk/video/module/listener/impl/k;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 295
    .line 296
    invoke-static {v1, v2}, Lcom/mbridge/msdk/video/module/report/b;->f(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 297
    .line 298
    .line 299
    goto :goto_3

    .line 300
    :cond_a
    instance-of v1, p2, Ljava/lang/Integer;

    .line 301
    .line 302
    if-eqz v1, :cond_d

    .line 303
    .line 304
    move-object v1, p2

    .line 305
    check-cast v1, Ljava/lang/Integer;

    .line 306
    .line 307
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 308
    .line 309
    .line 310
    move-result v1

    .line 311
    iput v1, p0, Lcom/mbridge/msdk/video/module/listener/impl/o;->t:I

    .line 312
    .line 313
    goto :goto_3

    .line 314
    :cond_b
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/q0;->a()Lcom/mbridge/msdk/foundation/tools/q0;

    .line 315
    .line 316
    .line 317
    move-result-object v1

    .line 318
    invoke-virtual {v1, v4, v5}, Lcom/mbridge/msdk/foundation/tools/q0;->a(Ljava/lang/String;Z)Z

    .line 319
    .line 320
    .line 321
    move-result v1

    .line 322
    if-eqz v1, :cond_d

    .line 323
    .line 324
    instance-of v1, p2, Lcom/mbridge/msdk/video/module/MBridgeVideoView$u;

    .line 325
    .line 326
    if-eqz v1, :cond_d

    .line 327
    .line 328
    move-object v1, p2

    .line 329
    check-cast v1, Lcom/mbridge/msdk/video/module/MBridgeVideoView$u;

    .line 330
    .line 331
    iput-object v1, p0, Lcom/mbridge/msdk/video/module/listener/impl/o;->v:Lcom/mbridge/msdk/video/module/MBridgeVideoView$u;

    .line 332
    .line 333
    goto :goto_3

    .line 334
    :cond_c
    iget-boolean v1, p0, Lcom/mbridge/msdk/video/module/listener/impl/k;->a:Z

    .line 335
    .line 336
    if-eqz v1, :cond_d

    .line 337
    .line 338
    iget-boolean v1, p0, Lcom/mbridge/msdk/video/module/listener/impl/o;->p:Z

    .line 339
    .line 340
    if-nez v1, :cond_d

    .line 341
    .line 342
    iput-boolean v2, p0, Lcom/mbridge/msdk/video/module/listener/impl/o;->p:Z

    .line 343
    .line 344
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/module/listener/impl/k;->l()V

    .line 345
    .line 346
    .line 347
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 348
    .line 349
    .line 350
    move-result-object v1

    .line 351
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 352
    .line 353
    .line 354
    move-result-object v1

    .line 355
    iget-object v2, p0, Lcom/mbridge/msdk/video/module/listener/impl/k;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 356
    .line 357
    invoke-static {v1, v2}, Lcom/mbridge/msdk/video/module/report/b;->b(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 358
    .line 359
    .line 360
    :cond_d
    :goto_3
    iget-object v1, p0, Lcom/mbridge/msdk/video/module/listener/impl/k;->i:Lcom/mbridge/msdk/video/module/listener/a;

    .line 361
    .line 362
    invoke-interface {v1, p1, p2}, Lcom/mbridge/msdk/video/module/listener/a;->a(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    .line 364
    .line 365
    goto :goto_5

    .line 366
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object p2

    .line 370
    invoke-static {v0, p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 371
    .line 372
    .line 373
    :goto_5
    return-void

    .line 374
    nop

    .line 375
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
