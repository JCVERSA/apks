.class public Lcom/transsion/push/broadcast/FCMMessageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "source.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private a(Lcom/transsion/push/bean/PushMessage;)Z
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

.method private b(Landroid/os/Bundle;)Lcom/transsion/push/bean/PushMessage;
    .locals 3

    .line 1
    new-instance v0, Lcom/transsion/push/bean/PushMessage;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/push/bean/PushMessage;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "tcm_msg_id"

    .line 7
    .line 8
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {v1}, Lcom/transsion/push/utils/p0;->e(Ljava/lang/String;)J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    iput-wide v1, v0, Lcom/transsion/push/bean/PushMessage;->messageId:J

    .line 17
    .line 18
    const-string v1, "tcm_msg_type"

    .line 19
    .line 20
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v1}, Lcom/transsion/push/utils/p0;->d(Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    iput v1, v0, Lcom/transsion/push/bean/PushMessage;->type:I

    .line 29
    .line 30
    const-string v1, "tcm_msg_pkg"

    .line 31
    .line 32
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->pkgId:Ljava/lang/String;

    .line 37
    .line 38
    const-string v1, "tcm_msg_pkgname"

    .line 39
    .line 40
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->packageName:Ljava/lang/String;

    .line 45
    .line 46
    :try_start_0
    invoke-static {}, Lyj/a;->a()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->rpkg:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catch_0
    const-string v1, ""

    .line 58
    .line 59
    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->rpkg:Ljava/lang/String;

    .line 60
    .line 61
    :goto_0
    const-string v1, "noti_type"

    .line 62
    .line 63
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-static {v1}, Lcom/transsion/push/utils/p0;->d(Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    iput v1, v0, Lcom/transsion/push/bean/PushMessage;->notiType:I

    .line 72
    .line 73
    const-string v1, "noti_ex_type"

    .line 74
    .line 75
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-static {v1}, Lcom/transsion/push/utils/p0;->c(Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    iput v1, v0, Lcom/transsion/push/bean/PushMessage;->notiExType:I

    .line 84
    .line 85
    const-string v1, "tcm_msg_ttl"

    .line 86
    .line 87
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-static {v1}, Lcom/transsion/push/utils/p0;->d(Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    iput v1, v0, Lcom/transsion/push/bean/PushMessage;->msgTtl:I

    .line 96
    .line 97
    const-string v1, "noti_ignore_expire"

    .line 98
    .line 99
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-static {v1}, Lcom/transsion/push/utils/p0;->d(Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    iput v1, v0, Lcom/transsion/push/bean/PushMessage;->ignoreExpire:I

    .line 108
    .line 109
    const-string v1, "noti_group_id"

    .line 110
    .line 111
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->groupId:Ljava/lang/String;

    .line 116
    .line 117
    const-string v1, "noti_group_max_count"

    .line 118
    .line 119
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->groupMaxCount:Ljava/lang/String;

    .line 124
    .line 125
    const-string v1, "noti_title"

    .line 126
    .line 127
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->notiTitle:Ljava/lang/String;

    .line 132
    .line 133
    const-string v1, "noti_desc"

    .line 134
    .line 135
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->notiDes:Ljava/lang/String;

    .line 140
    .line 141
    const-string v1, "noti_img"

    .line 142
    .line 143
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->notiImg:Ljava/lang/String;

    .line 148
    .line 149
    const-string v1, "noti_icon"

    .line 150
    .line 151
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->notiIcon:Ljava/lang/String;

    .line 156
    .line 157
    const-string v1, "noti_btn"

    .line 158
    .line 159
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->notiBtn:Ljava/lang/String;

    .line 164
    .line 165
    const-string v1, "noti_img_ex"

    .line 166
    .line 167
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->notiImgEx:Ljava/lang/String;

    .line 172
    .line 173
    const-string v1, "noti_title_ex"

    .line 174
    .line 175
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->notiTitleEx:Ljava/lang/String;

    .line 180
    .line 181
    const-string v1, "noti_txt_ex"

    .line 182
    .line 183
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->notiTxtEx:Ljava/lang/String;

    .line 188
    .line 189
    const-string v1, "noti_open_type"

    .line 190
    .line 191
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    invoke-static {v1}, Lcom/transsion/push/utils/p0;->d(Ljava/lang/String;)I

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    iput v1, v0, Lcom/transsion/push/bean/PushMessage;->notiOpenType:I

    .line 200
    .line 201
    const-string v1, "noti_open_content"

    .line 202
    .line 203
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->notiOpenContent:Ljava/lang/String;

    .line 208
    .line 209
    const-string v1, "trans_data"

    .line 210
    .line 211
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    invoke-static {v1}, Lcom/transsion/push/utils/p0;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->transData:Ljava/lang/String;

    .line 220
    .line 221
    const-string v1, "tcm_msg_timestamp"

    .line 222
    .line 223
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->timeStamp:Ljava/lang/String;

    .line 228
    .line 229
    const-string v1, "noti_small_icon"

    .line 230
    .line 231
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->notiSmallIcon:Ljava/lang/String;

    .line 236
    .line 237
    const-string v1, "display_policy"

    .line 238
    .line 239
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    invoke-static {v1}, Lcom/transsion/push/utils/p0;->d(Ljava/lang/String;)I

    .line 244
    .line 245
    .line 246
    move-result v1

    .line 247
    iput v1, v0, Lcom/transsion/push/bean/PushMessage;->displayPolicy:I

    .line 248
    .line 249
    const-string v1, "app_name"

    .line 250
    .line 251
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->appName:Ljava/lang/String;

    .line 256
    .line 257
    const-string v1, "noti_layout_id"

    .line 258
    .line 259
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    invoke-static {v1}, Lcom/transsion/push/utils/p0;->d(Ljava/lang/String;)I

    .line 264
    .line 265
    .line 266
    move-result v1

    .line 267
    iput v1, v0, Lcom/transsion/push/bean/PushMessage;->layoutStyleId:I

    .line 268
    .line 269
    const-string v1, "noti_channel_id"

    .line 270
    .line 271
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->channelId:Ljava/lang/String;

    .line 276
    .line 277
    const-string v1, "noti_channel_name"

    .line 278
    .line 279
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->channelName:Ljava/lang/String;

    .line 284
    .line 285
    const-string v1, "noti_small_icon_color"

    .line 286
    .line 287
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->iconColor:Ljava/lang/String;

    .line 292
    .line 293
    const-string v1, "noti_imp_urls"

    .line 294
    .line 295
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->impUrlList:Ljava/lang/String;

    .line 300
    .line 301
    const-string v1, "noti_click_urls"

    .line 302
    .line 303
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->clickUrlList:Ljava/lang/String;

    .line 308
    .line 309
    const-string v1, "noti_is_headsup"

    .line 310
    .line 311
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v1

    .line 315
    invoke-static {v1}, Lcom/transsion/push/utils/p0;->d(Ljava/lang/String;)I

    .line 316
    .line 317
    .line 318
    move-result v1

    .line 319
    iput v1, v0, Lcom/transsion/push/bean/PushMessage;->isHeadsUp:I

    .line 320
    .line 321
    const-string v1, "tcm_target_msg_id"

    .line 322
    .line 323
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    invoke-static {v1}, Lcom/transsion/push/utils/p0;->e(Ljava/lang/String;)J

    .line 328
    .line 329
    .line 330
    move-result-wide v1

    .line 331
    iput-wide v1, v0, Lcom/transsion/push/bean/PushMessage;->retraceMsgId:J

    .line 332
    .line 333
    const-string v1, "noti_btn_ex"

    .line 334
    .line 335
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->notiExtensionBtn:Ljava/lang/String;

    .line 340
    .line 341
    const-string v1, "noti_btn_background_color"

    .line 342
    .line 343
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v1

    .line 347
    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->notiBtnBgColor:Ljava/lang/String;

    .line 348
    .line 349
    const-string v1, "noti_btn_word_color"

    .line 350
    .line 351
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v1

    .line 355
    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->notiBtnTxtColor:Ljava/lang/String;

    .line 356
    .line 357
    const-string v1, "noti_optional_icon"

    .line 358
    .line 359
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v1

    .line 363
    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->notiOptionalIcon:Ljava/lang/String;

    .line 364
    .line 365
    const-string v1, "tcm_msg_priority"

    .line 366
    .line 367
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v1

    .line 371
    invoke-static {v1}, Lcom/transsion/push/utils/p0;->d(Ljava/lang/String;)I

    .line 372
    .line 373
    .line 374
    move-result v1

    .line 375
    iput v1, v0, Lcom/transsion/push/bean/PushMessage;->priority:I

    .line 376
    .line 377
    const-string v1, "tcm_msg_sdkshow"

    .line 378
    .line 379
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v1

    .line 383
    invoke-static {v1}, Lcom/transsion/push/utils/p0;->d(Ljava/lang/String;)I

    .line 384
    .line 385
    .line 386
    move-result v1

    .line 387
    iput v1, v0, Lcom/transsion/push/bean/PushMessage;->sdkShow:I

    .line 388
    .line 389
    const-string v1, "noti_float"

    .line 390
    .line 391
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v1

    .line 395
    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->floatNotice:Ljava/lang/String;

    .line 396
    .line 397
    const-string v1, "tcm_material_id"

    .line 398
    .line 399
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v1

    .line 403
    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->materialId:Ljava/lang/String;

    .line 404
    .line 405
    const-string v1, "tcm_seq"

    .line 406
    .line 407
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v1

    .line 411
    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->seq:Ljava/lang/String;

    .line 412
    .line 413
    const-string v1, "tcm_source_type"

    .line 414
    .line 415
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v1

    .line 419
    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->sourceType:Ljava/lang/String;

    .line 420
    .line 421
    const-string v1, "tcm_schedule_date"

    .line 422
    .line 423
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v1

    .line 427
    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->scheduleDate:Ljava/lang/String;

    .line 428
    .line 429
    const-string v1, "tcm_tag"

    .line 430
    .line 431
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object p1

    .line 435
    iput-object p1, v0, Lcom/transsion/push/bean/PushMessage;->tag:Ljava/lang/String;

    .line 436
    .line 437
    return-object v0
.end method

.method private static c(Landroid/content/Intent;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "com.google.android.c2dm.intent.RECEIVE"

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    const-string v0, "com.google.android.c2dm.intent.REGISTRATION"

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 29
    :goto_1
    return p0
.end method

.method private d(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    .line 1
    invoke-static {}, Lcom/transsion/push/PushManager;->getInstance()Lcom/transsion/push/PushManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/transsion/push/PushManager;->init(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lcom/transsion/push/tracker/Tracker;->getInstance()Lcom/transsion/push/tracker/Tracker;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/transsion/push/tracker/Tracker;->trackBroadcastInfoeye()V

    .line 17
    .line 18
    .line 19
    if-eqz p2, :cond_6

    .line 20
    .line 21
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    goto/16 :goto_1

    .line 28
    .line 29
    :cond_0
    invoke-static {p2}, Lcom/transsion/push/broadcast/FCMMessageReceiver;->c(Landroid/content/Intent;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    invoke-static {}, Lcom/transsion/push/tracker/Tracker;->getInstance()Lcom/transsion/push/tracker/Tracker;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/transsion/push/tracker/Tracker;->trackBroadcastGcmInfoeye()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-direct {p0, p2}, Lcom/transsion/push/broadcast/FCMMessageReceiver;->b(Landroid/os/Bundle;)Lcom/transsion/push/bean/PushMessage;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    sget-object v0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 52
    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v2, "Receiving FCM messages packageName:"

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v2, "  "

    .line 71
    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    invoke-direct {p0, p2}, Lcom/transsion/push/broadcast/FCMMessageReceiver;->a(Lcom/transsion/push/bean/PushMessage;)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    const/4 v1, -0x1

    .line 90
    if-nez v0, :cond_3

    .line 91
    .line 92
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isOrderedBroadcast()Z

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    if-eqz p1, :cond_2

    .line 97
    .line 98
    invoke-virtual {p0, v1}, Landroid/content/BroadcastReceiver;->setResultCode(I)V

    .line 99
    .line 100
    .line 101
    :cond_2
    return-void

    .line 102
    :cond_3
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isOrderedBroadcast()Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_4

    .line 107
    .line 108
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->abortBroadcast()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, v1}, Landroid/content/BroadcastReceiver;->setResultCode(I)V

    .line 112
    .line 113
    .line 114
    :cond_4
    invoke-static {}, Lcom/transsion/push/tracker/Tracker;->getInstance()Lcom/transsion/push/tracker/Tracker;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    iget-wide v3, p2, Lcom/transsion/push/bean/PushMessage;->messageId:J

    .line 119
    .line 120
    iget v5, p2, Lcom/transsion/push/bean/PushMessage;->type:I

    .line 121
    .line 122
    iget-object v6, p2, Lcom/transsion/push/bean/PushMessage;->timeStamp:Ljava/lang/String;

    .line 123
    .line 124
    const-string v7, "all"

    .line 125
    .line 126
    const/4 v8, 0x0

    .line 127
    invoke-virtual/range {v2 .. v8}, Lcom/transsion/push/tracker/Tracker;->trackMessage(JILjava/lang/String;Ljava/lang/String;I)V

    .line 128
    .line 129
    .line 130
    :try_start_0
    invoke-static {p2}, Lcom/transsion/json/b;->b(Ljava/lang/Object;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    goto :goto_0

    .line 135
    :catch_0
    move-exception p2

    .line 136
    sget-object v0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 137
    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    const-string v2, "Receiving FCM messages to messageContent fail, e:"

    .line 144
    .line 145
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p2

    .line 159
    invoke-virtual {v0, p2}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    const/4 p2, 0x0

    .line 163
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-eqz v0, :cond_5

    .line 168
    .line 169
    return-void

    .line 170
    :cond_5
    new-instance v0, Landroid/os/Bundle;

    .line 171
    .line 172
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 173
    .line 174
    .line 175
    const-string v1, "message"

    .line 176
    .line 177
    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    const-string p2, "service_type"

    .line 181
    .line 182
    invoke-virtual {v0, p2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    invoke-static {p1, v0}, Lcom/transsion/push/utils/ServiceUtils;->startTargetIntentService(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 190
    .line 191
    .line 192
    :cond_6
    :goto_1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lyj/a;->b(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/transsion/push/broadcast/FCMMessageReceiver;->d(Landroid/content/Context;Landroid/content/Intent;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
