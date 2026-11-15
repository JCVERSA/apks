.class public Lcom/transsion/push/broadcast/FCMMessageService;
.super Lcom/google/firebase/messaging/FirebaseMessagingService;
.source "source.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private w(Lcom/transsion/push/bean/PushMessage;)Z
    .locals 4

    .line 1
    iget-wide v0, p1, Lcom/transsion/push/bean/PushMessage;->messageId:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    iget v0, p1, Lcom/transsion/push/bean/PushMessage;->type:I

    .line 10
    .line 11
    if-lez v0, :cond_0

    .line 12
    .line 13
    iget-object p1, p1, Lcom/transsion/push/bean/PushMessage;->pkgId:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    :goto_0
    return p1
.end method

.method private x(Lcom/google/firebase/messaging/RemoteMessage;)Lcom/transsion/push/bean/PushMessage;
    .locals 3

    .line 1
    new-instance v0, Lcom/transsion/push/bean/PushMessage;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/push/bean/PushMessage;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    goto/16 :goto_1

    .line 19
    .line 20
    :cond_0
    const-string v1, "tcm_msg_id"

    .line 21
    .line 22
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v1}, Lcom/transsion/push/utils/p0;->e(Ljava/lang/String;)J

    .line 29
    .line 30
    .line 31
    move-result-wide v1

    .line 32
    iput-wide v1, v0, Lcom/transsion/push/bean/PushMessage;->messageId:J

    .line 33
    .line 34
    const-string v1, "tcm_msg_type"

    .line 35
    .line 36
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {v1}, Lcom/transsion/push/utils/p0;->d(Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    iput v1, v0, Lcom/transsion/push/bean/PushMessage;->type:I

    .line 47
    .line 48
    const-string v1, "tcm_msg_pkg"

    .line 49
    .line 50
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Ljava/lang/String;

    .line 55
    .line 56
    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->pkgId:Ljava/lang/String;

    .line 57
    .line 58
    const-string v1, "tcm_msg_pkgname"

    .line 59
    .line 60
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    check-cast v1, Ljava/lang/String;

    .line 65
    .line 66
    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->packageName:Ljava/lang/String;

    .line 67
    .line 68
    :try_start_0
    invoke-static {}, Lyj/a;->a()Landroid/content/Context;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->rpkg:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :catch_0
    const-string v1, ""

    .line 80
    .line 81
    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->rpkg:Ljava/lang/String;

    .line 82
    .line 83
    :goto_0
    const-string v1, "noti_type"

    .line 84
    .line 85
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    check-cast v1, Ljava/lang/String;

    .line 90
    .line 91
    invoke-static {v1}, Lcom/transsion/push/utils/p0;->d(Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    iput v1, v0, Lcom/transsion/push/bean/PushMessage;->notiType:I

    .line 96
    .line 97
    const-string v1, "noti_ex_type"

    .line 98
    .line 99
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    check-cast v1, Ljava/lang/String;

    .line 104
    .line 105
    invoke-static {v1}, Lcom/transsion/push/utils/p0;->c(Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    iput v1, v0, Lcom/transsion/push/bean/PushMessage;->notiExType:I

    .line 110
    .line 111
    const-string v1, "tcm_msg_ttl"

    .line 112
    .line 113
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    check-cast v1, Ljava/lang/String;

    .line 118
    .line 119
    invoke-static {v1}, Lcom/transsion/push/utils/p0;->d(Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    iput v1, v0, Lcom/transsion/push/bean/PushMessage;->msgTtl:I

    .line 124
    .line 125
    const-string v1, "noti_ignore_expire"

    .line 126
    .line 127
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    check-cast v1, Ljava/lang/String;

    .line 132
    .line 133
    invoke-static {v1}, Lcom/transsion/push/utils/p0;->d(Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    iput v1, v0, Lcom/transsion/push/bean/PushMessage;->ignoreExpire:I

    .line 138
    .line 139
    const-string v1, "noti_group_id"

    .line 140
    .line 141
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    check-cast v1, Ljava/lang/String;

    .line 146
    .line 147
    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->groupId:Ljava/lang/String;

    .line 148
    .line 149
    const-string v1, "noti_group_max_count"

    .line 150
    .line 151
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    check-cast v1, Ljava/lang/String;

    .line 156
    .line 157
    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->groupMaxCount:Ljava/lang/String;

    .line 158
    .line 159
    const-string v1, "noti_title"

    .line 160
    .line 161
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    check-cast v1, Ljava/lang/String;

    .line 166
    .line 167
    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->notiTitle:Ljava/lang/String;

    .line 168
    .line 169
    const-string v1, "noti_desc"

    .line 170
    .line 171
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    check-cast v1, Ljava/lang/String;

    .line 176
    .line 177
    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->notiDes:Ljava/lang/String;

    .line 178
    .line 179
    const-string v1, "noti_img"

    .line 180
    .line 181
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    check-cast v1, Ljava/lang/String;

    .line 186
    .line 187
    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->notiImg:Ljava/lang/String;

    .line 188
    .line 189
    const-string v1, "noti_icon"

    .line 190
    .line 191
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    check-cast v1, Ljava/lang/String;

    .line 196
    .line 197
    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->notiIcon:Ljava/lang/String;

    .line 198
    .line 199
    const-string v1, "noti_btn"

    .line 200
    .line 201
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    check-cast v1, Ljava/lang/String;

    .line 206
    .line 207
    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->notiBtn:Ljava/lang/String;

    .line 208
    .line 209
    const-string v1, "noti_img_ex"

    .line 210
    .line 211
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    check-cast v1, Ljava/lang/String;

    .line 216
    .line 217
    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->notiImgEx:Ljava/lang/String;

    .line 218
    .line 219
    const-string v1, "noti_title_ex"

    .line 220
    .line 221
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    check-cast v1, Ljava/lang/String;

    .line 226
    .line 227
    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->notiTitleEx:Ljava/lang/String;

    .line 228
    .line 229
    const-string v1, "noti_txt_ex"

    .line 230
    .line 231
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    check-cast v1, Ljava/lang/String;

    .line 236
    .line 237
    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->notiTxtEx:Ljava/lang/String;

    .line 238
    .line 239
    const-string v1, "noti_open_type"

    .line 240
    .line 241
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    check-cast v1, Ljava/lang/String;

    .line 246
    .line 247
    invoke-static {v1}, Lcom/transsion/push/utils/p0;->d(Ljava/lang/String;)I

    .line 248
    .line 249
    .line 250
    move-result v1

    .line 251
    iput v1, v0, Lcom/transsion/push/bean/PushMessage;->notiOpenType:I

    .line 252
    .line 253
    const-string v1, "noti_open_content"

    .line 254
    .line 255
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    check-cast v1, Ljava/lang/String;

    .line 260
    .line 261
    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->notiOpenContent:Ljava/lang/String;

    .line 262
    .line 263
    const-string v1, "trans_data"

    .line 264
    .line 265
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    check-cast v1, Ljava/lang/String;

    .line 270
    .line 271
    invoke-static {v1}, Lcom/transsion/push/utils/p0;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->transData:Ljava/lang/String;

    .line 276
    .line 277
    const-string v1, "tcm_msg_timestamp"

    .line 278
    .line 279
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    check-cast v1, Ljava/lang/String;

    .line 284
    .line 285
    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->timeStamp:Ljava/lang/String;

    .line 286
    .line 287
    const-string v1, "noti_small_icon"

    .line 288
    .line 289
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v1

    .line 293
    check-cast v1, Ljava/lang/String;

    .line 294
    .line 295
    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->notiSmallIcon:Ljava/lang/String;

    .line 296
    .line 297
    const-string v1, "display_policy"

    .line 298
    .line 299
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    check-cast v1, Ljava/lang/String;

    .line 304
    .line 305
    invoke-static {v1}, Lcom/transsion/push/utils/p0;->d(Ljava/lang/String;)I

    .line 306
    .line 307
    .line 308
    move-result v1

    .line 309
    iput v1, v0, Lcom/transsion/push/bean/PushMessage;->displayPolicy:I

    .line 310
    .line 311
    const-string v1, "app_name"

    .line 312
    .line 313
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    check-cast v1, Ljava/lang/String;

    .line 318
    .line 319
    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->appName:Ljava/lang/String;

    .line 320
    .line 321
    const-string v1, "noti_layout_id"

    .line 322
    .line 323
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    check-cast v1, Ljava/lang/String;

    .line 328
    .line 329
    invoke-static {v1}, Lcom/transsion/push/utils/p0;->d(Ljava/lang/String;)I

    .line 330
    .line 331
    .line 332
    move-result v1

    .line 333
    iput v1, v0, Lcom/transsion/push/bean/PushMessage;->layoutStyleId:I

    .line 334
    .line 335
    const-string v1, "noti_channel_id"

    .line 336
    .line 337
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object v1

    .line 341
    check-cast v1, Ljava/lang/String;

    .line 342
    .line 343
    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->channelId:Ljava/lang/String;

    .line 344
    .line 345
    const-string v1, "noti_channel_name"

    .line 346
    .line 347
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object v1

    .line 351
    check-cast v1, Ljava/lang/String;

    .line 352
    .line 353
    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->channelName:Ljava/lang/String;

    .line 354
    .line 355
    const-string v1, "noti_small_icon_color"

    .line 356
    .line 357
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object v1

    .line 361
    check-cast v1, Ljava/lang/String;

    .line 362
    .line 363
    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->iconColor:Ljava/lang/String;

    .line 364
    .line 365
    const-string v1, "noti_imp_urls"

    .line 366
    .line 367
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    move-result-object v1

    .line 371
    check-cast v1, Ljava/lang/String;

    .line 372
    .line 373
    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->impUrlList:Ljava/lang/String;

    .line 374
    .line 375
    const-string v1, "noti_click_urls"

    .line 376
    .line 377
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    move-result-object v1

    .line 381
    check-cast v1, Ljava/lang/String;

    .line 382
    .line 383
    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->clickUrlList:Ljava/lang/String;

    .line 384
    .line 385
    const-string v1, "noti_is_headsup"

    .line 386
    .line 387
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    move-result-object v1

    .line 391
    check-cast v1, Ljava/lang/String;

    .line 392
    .line 393
    invoke-static {v1}, Lcom/transsion/push/utils/p0;->d(Ljava/lang/String;)I

    .line 394
    .line 395
    .line 396
    move-result v1

    .line 397
    iput v1, v0, Lcom/transsion/push/bean/PushMessage;->isHeadsUp:I

    .line 398
    .line 399
    const-string v1, "tcm_target_msg_id"

    .line 400
    .line 401
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    .line 403
    .line 404
    move-result-object v1

    .line 405
    check-cast v1, Ljava/lang/String;

    .line 406
    .line 407
    invoke-static {v1}, Lcom/transsion/push/utils/p0;->e(Ljava/lang/String;)J

    .line 408
    .line 409
    .line 410
    move-result-wide v1

    .line 411
    iput-wide v1, v0, Lcom/transsion/push/bean/PushMessage;->retraceMsgId:J

    .line 412
    .line 413
    const-string v1, "noti_btn_ex"

    .line 414
    .line 415
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    .line 417
    .line 418
    move-result-object v1

    .line 419
    check-cast v1, Ljava/lang/String;

    .line 420
    .line 421
    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->notiExtensionBtn:Ljava/lang/String;

    .line 422
    .line 423
    const-string v1, "noti_btn_background_color"

    .line 424
    .line 425
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    .line 427
    .line 428
    move-result-object v1

    .line 429
    check-cast v1, Ljava/lang/String;

    .line 430
    .line 431
    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->notiBtnBgColor:Ljava/lang/String;

    .line 432
    .line 433
    const-string v1, "noti_btn_word_color"

    .line 434
    .line 435
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    .line 437
    .line 438
    move-result-object v1

    .line 439
    check-cast v1, Ljava/lang/String;

    .line 440
    .line 441
    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->notiBtnTxtColor:Ljava/lang/String;

    .line 442
    .line 443
    const-string v1, "noti_optional_icon"

    .line 444
    .line 445
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    .line 447
    .line 448
    move-result-object v1

    .line 449
    check-cast v1, Ljava/lang/String;

    .line 450
    .line 451
    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->notiOptionalIcon:Ljava/lang/String;

    .line 452
    .line 453
    const-string v1, "tcm_msg_priority"

    .line 454
    .line 455
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    .line 457
    .line 458
    move-result-object v1

    .line 459
    check-cast v1, Ljava/lang/String;

    .line 460
    .line 461
    invoke-static {v1}, Lcom/transsion/push/utils/p0;->d(Ljava/lang/String;)I

    .line 462
    .line 463
    .line 464
    move-result v1

    .line 465
    iput v1, v0, Lcom/transsion/push/bean/PushMessage;->priority:I

    .line 466
    .line 467
    const-string v1, "tcm_msg_sdkshow"

    .line 468
    .line 469
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    .line 471
    .line 472
    move-result-object v1

    .line 473
    check-cast v1, Ljava/lang/String;

    .line 474
    .line 475
    invoke-static {v1}, Lcom/transsion/push/utils/p0;->d(Ljava/lang/String;)I

    .line 476
    .line 477
    .line 478
    move-result v1

    .line 479
    iput v1, v0, Lcom/transsion/push/bean/PushMessage;->sdkShow:I

    .line 480
    .line 481
    const-string v1, "noti_float"

    .line 482
    .line 483
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    .line 485
    .line 486
    move-result-object v1

    .line 487
    check-cast v1, Ljava/lang/String;

    .line 488
    .line 489
    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->floatNotice:Ljava/lang/String;

    .line 490
    .line 491
    const-string v1, "tcm_material_id"

    .line 492
    .line 493
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    .line 495
    .line 496
    move-result-object v1

    .line 497
    check-cast v1, Ljava/lang/String;

    .line 498
    .line 499
    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->materialId:Ljava/lang/String;

    .line 500
    .line 501
    const-string v1, "tcm_seq"

    .line 502
    .line 503
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    .line 505
    .line 506
    move-result-object v1

    .line 507
    check-cast v1, Ljava/lang/String;

    .line 508
    .line 509
    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->seq:Ljava/lang/String;

    .line 510
    .line 511
    const-string v1, "tcm_source_type"

    .line 512
    .line 513
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    .line 515
    .line 516
    move-result-object v1

    .line 517
    check-cast v1, Ljava/lang/String;

    .line 518
    .line 519
    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->sourceType:Ljava/lang/String;

    .line 520
    .line 521
    const-string v1, "tcm_schedule_date"

    .line 522
    .line 523
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    .line 525
    .line 526
    move-result-object v1

    .line 527
    check-cast v1, Ljava/lang/String;

    .line 528
    .line 529
    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->scheduleDate:Ljava/lang/String;

    .line 530
    .line 531
    const-string v1, "tcm_tag"

    .line 532
    .line 533
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    .line 535
    .line 536
    move-result-object p1

    .line 537
    check-cast p1, Ljava/lang/String;

    .line 538
    .line 539
    iput-object p1, v0, Lcom/transsion/push/bean/PushMessage;->tag:Ljava/lang/String;

    .line 540
    .line 541
    :cond_1
    :goto_1
    return-object v0
.end method


# virtual methods
.method public r(Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 9

    .line 1
    sget-object v0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "Receiving FCM messages by FirebaseMessagingService:"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-super {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessagingService;->r(Lcom/google/firebase/messaging/RemoteMessage;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0}, Lyj/a;->b(Landroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    invoke-static {}, Lcom/transsion/push/PushManager;->getInstance()Lcom/transsion/push/PushManager;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v1, v2}, Lcom/transsion/push/PushManager;->init(Landroid/content/Context;)V

    .line 46
    .line 47
    .line 48
    invoke-direct {p0, p1}, Lcom/transsion/push/broadcast/FCMMessageService;->x(Lcom/google/firebase/messaging/RemoteMessage;)Lcom/transsion/push/bean/PushMessage;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    sget-object v1, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 53
    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string v3, "Receiving FCM messages packageName:"

    .line 60
    .line 61
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v3, "  "

    .line 72
    .line 73
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v1, v2}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    invoke-direct {p0, p1}, Lcom/transsion/push/broadcast/FCMMessageService;->w(Lcom/transsion/push/bean/PushMessage;)Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-nez v1, :cond_0

    .line 91
    .line 92
    return-void

    .line 93
    :cond_0
    invoke-static {}, Lcom/transsion/push/tracker/Tracker;->getInstance()Lcom/transsion/push/tracker/Tracker;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    iget-wide v3, p1, Lcom/transsion/push/bean/PushMessage;->messageId:J

    .line 98
    .line 99
    iget v5, p1, Lcom/transsion/push/bean/PushMessage;->type:I

    .line 100
    .line 101
    iget-object v6, p1, Lcom/transsion/push/bean/PushMessage;->timeStamp:Ljava/lang/String;

    .line 102
    .line 103
    const-string v7, "all"

    .line 104
    .line 105
    const/4 v8, 0x0

    .line 106
    invoke-virtual/range {v2 .. v8}, Lcom/transsion/push/tracker/Tracker;->trackMessage(JILjava/lang/String;Ljava/lang/String;I)V

    .line 107
    .line 108
    .line 109
    :try_start_0
    invoke-static {p1}, Lcom/transsion/json/b;->b(Ljava/lang/Object;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    goto :goto_0

    .line 114
    :catch_0
    move-exception p1

    .line 115
    sget-object v1, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 116
    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    const-string v3, "Receiving FCM messages to messageContent fail, e:"

    .line 123
    .line 124
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-virtual {v1, p1}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    const/4 p1, 0x0

    .line 142
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    if-eqz v1, :cond_1

    .line 147
    .line 148
    return-void

    .line 149
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    .line 150
    .line 151
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 152
    .line 153
    .line 154
    const-string v2, "message"

    .line 155
    .line 156
    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    const-string p1, "service_type"

    .line 160
    .line 161
    invoke-virtual {v1, p1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-static {v0, v1}, Lcom/transsion/push/utils/ServiceUtils;->startTargetIntentService(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 165
    .line 166
    .line 167
    return-void
.end method

.method public t(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessagingService;->t(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "FCM MessageService onNewToken: "

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    invoke-static {p1}, Lcom/transsion/push/utils/PushUtils;->B(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method
