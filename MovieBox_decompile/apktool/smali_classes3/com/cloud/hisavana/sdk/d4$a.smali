.class Lcom/cloud/hisavana/sdk/d4$a;
.super Landroid/content/BroadcastReceiver;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/d4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/cloud/hisavana/sdk/d4;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/d4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/d4$a;->a:Lcom/cloud/hisavana/sdk/d4;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "fc_problem_onReceive,intent: "

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "InterGemini"

    .line 23
    .line 24
    invoke-virtual {p1, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    if-eqz p2, :cond_a

    .line 28
    .line 29
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-nez p1, :cond_0

    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/d4$a;->a:Lcom/cloud/hisavana/sdk/d4;

    .line 37
    .line 38
    if-eqz v0, :cond_a

    .line 39
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/d4$a;->a:Lcom/cloud/hisavana/sdk/d4;

    .line 46
    .line 47
    invoke-static {v2}, Lcom/cloud/hisavana/sdk/d4;->c(Lcom/cloud/hisavana/sdk/d4;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v2, "_click"

    .line 55
    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    const-string v2, "mAdBean"

    .line 68
    .line 69
    if-eqz v0, :cond_4

    .line 70
    .line 71
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    const-string v0, "receive interstitial click"

    .line 76
    .line 77
    invoke-virtual {p1, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    check-cast p1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 85
    .line 86
    if-eqz p1, :cond_1

    .line 87
    .line 88
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/d4$a;->a:Lcom/cloud/hisavana/sdk/d4;

    .line 89
    .line 90
    invoke-static {p2, p1}, Lcom/cloud/hisavana/sdk/d4;->a(Lcom/cloud/hisavana/sdk/d4;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 91
    .line 92
    .line 93
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/d4$a;->a:Lcom/cloud/hisavana/sdk/d4;

    .line 94
    .line 95
    invoke-static {p2}, Lcom/cloud/hisavana/sdk/d4;->f(Lcom/cloud/hisavana/sdk/d4;)Lcom/cloud/hisavana/sdk/v2;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    invoke-virtual {p2, p1}, Lcom/cloud/hisavana/sdk/v2;->G(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 100
    .line 101
    .line 102
    :cond_1
    if-eqz p1, :cond_2

    .line 103
    .line 104
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isAllowTrackingADClick()Z

    .line 105
    .line 106
    .line 107
    move-result p2

    .line 108
    if-eqz p2, :cond_2

    .line 109
    .line 110
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->W(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_2
    if-eqz p1, :cond_3

    .line 115
    .line 116
    const/4 p2, 0x1

    .line 117
    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setAdClickTracking(Z)V

    .line 118
    .line 119
    .line 120
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    const-string p2, "tracking is not allowed\uff0cchange isAdClickTracking = true"

    .line 125
    .line 126
    invoke-virtual {p1, v1, p2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/d4$a;->a:Lcom/cloud/hisavana/sdk/d4;

    .line 130
    .line 131
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/d4;->f(Lcom/cloud/hisavana/sdk/d4;)Lcom/cloud/hisavana/sdk/v2;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/v2;->I()V

    .line 136
    .line 137
    .line 138
    goto/16 :goto_1

    .line 139
    .line 140
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .line 144
    .line 145
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/d4$a;->a:Lcom/cloud/hisavana/sdk/d4;

    .line 146
    .line 147
    invoke-static {v3}, Lcom/cloud/hisavana/sdk/d4;->c(Lcom/cloud/hisavana/sdk/d4;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    const-string v3, "_close"

    .line 155
    .line 156
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    const/4 v3, 0x0

    .line 168
    if-eqz v0, :cond_6

    .line 169
    .line 170
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    const-string v0, "receive interstitial ad_close"

    .line 175
    .line 176
    invoke-virtual {p1, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    check-cast p1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 184
    .line 185
    if-eqz p1, :cond_5

    .line 186
    .line 187
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/d4$a;->a:Lcom/cloud/hisavana/sdk/d4;

    .line 188
    .line 189
    invoke-static {p2, p1}, Lcom/cloud/hisavana/sdk/d4;->a(Lcom/cloud/hisavana/sdk/d4;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 190
    .line 191
    .line 192
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/d4$a;->a:Lcom/cloud/hisavana/sdk/d4;

    .line 193
    .line 194
    invoke-static {p2}, Lcom/cloud/hisavana/sdk/d4;->f(Lcom/cloud/hisavana/sdk/d4;)Lcom/cloud/hisavana/sdk/v2;

    .line 195
    .line 196
    .line 197
    move-result-object p2

    .line 198
    invoke-virtual {p2, p1}, Lcom/cloud/hisavana/sdk/v2;->G(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 199
    .line 200
    .line 201
    :cond_5
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/d4$a;->a:Lcom/cloud/hisavana/sdk/d4;

    .line 202
    .line 203
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/d4;->f(Lcom/cloud/hisavana/sdk/d4;)Lcom/cloud/hisavana/sdk/v2;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/v2;->J()V

    .line 208
    .line 209
    .line 210
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/d4$a;->a:Lcom/cloud/hisavana/sdk/d4;

    .line 211
    .line 212
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/d4;->i(Lcom/cloud/hisavana/sdk/d4;)V

    .line 213
    .line 214
    .line 215
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/d4$a;->a:Lcom/cloud/hisavana/sdk/d4;

    .line 216
    .line 217
    invoke-static {p1, v3}, Lcom/cloud/hisavana/sdk/d4;->b(Lcom/cloud/hisavana/sdk/d4;Lcom/cloud/hisavana/sdk/d4$a;)Lcom/cloud/hisavana/sdk/d4$a;

    .line 218
    .line 219
    .line 220
    goto/16 :goto_1

    .line 221
    .line 222
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    .line 226
    .line 227
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/d4$a;->a:Lcom/cloud/hisavana/sdk/d4;

    .line 228
    .line 229
    invoke-static {v2}, Lcom/cloud/hisavana/sdk/d4;->c(Lcom/cloud/hisavana/sdk/d4;)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    const-string v2, "_error"

    .line 237
    .line 238
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    move-result v0

    .line 249
    if-eqz v0, :cond_7

    .line 250
    .line 251
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    const-string v0, "receive interstitial error"

    .line 256
    .line 257
    invoke-virtual {p1, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/d4$a;->a:Lcom/cloud/hisavana/sdk/d4;

    .line 261
    .line 262
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/d4;->f(Lcom/cloud/hisavana/sdk/d4;)Lcom/cloud/hisavana/sdk/v2;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    new-instance v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 267
    .line 268
    const-string v1, "error_code"

    .line 269
    .line 270
    const/4 v2, -0x1

    .line 271
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 272
    .line 273
    .line 274
    move-result v1

    .line 275
    const-string v2, "error_msg"

    .line 276
    .line 277
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object p2

    .line 281
    invoke-direct {v0, v1, p2}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;-><init>(ILjava/lang/String;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/v2;->F(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 285
    .line 286
    .line 287
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/d4$a;->a:Lcom/cloud/hisavana/sdk/d4;

    .line 288
    .line 289
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/d4;->i(Lcom/cloud/hisavana/sdk/d4;)V

    .line 290
    .line 291
    .line 292
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/d4$a;->a:Lcom/cloud/hisavana/sdk/d4;

    .line 293
    .line 294
    invoke-static {p1, v3}, Lcom/cloud/hisavana/sdk/d4;->b(Lcom/cloud/hisavana/sdk/d4;Lcom/cloud/hisavana/sdk/d4$a;)Lcom/cloud/hisavana/sdk/d4$a;

    .line 295
    .line 296
    .line 297
    goto/16 :goto_1

    .line 298
    .line 299
    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    .line 300
    .line 301
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 302
    .line 303
    .line 304
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/d4$a;->a:Lcom/cloud/hisavana/sdk/d4;

    .line 305
    .line 306
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/d4;->c(Lcom/cloud/hisavana/sdk/d4;)Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    const-string v0, "_show"

    .line 314
    .line 315
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object p2

    .line 322
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 323
    .line 324
    .line 325
    move-result p2

    .line 326
    if-eqz p2, :cond_8

    .line 327
    .line 328
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 329
    .line 330
    .line 331
    move-result-object p1

    .line 332
    const-string p2, "receive interstitial show"

    .line 333
    .line 334
    invoke-virtual {p1, v1, p2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/d4$a;->a:Lcom/cloud/hisavana/sdk/d4;

    .line 338
    .line 339
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/d4;->f(Lcom/cloud/hisavana/sdk/d4;)Lcom/cloud/hisavana/sdk/v2;

    .line 340
    .line 341
    .line 342
    move-result-object p1

    .line 343
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/v2;->K()V

    .line 344
    .line 345
    .line 346
    goto :goto_1

    .line 347
    :cond_8
    new-instance p2, Ljava/lang/StringBuilder;

    .line 348
    .line 349
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 350
    .line 351
    .line 352
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/d4$a;->a:Lcom/cloud/hisavana/sdk/d4;

    .line 353
    .line 354
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/d4;->c(Lcom/cloud/hisavana/sdk/d4;)Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v0

    .line 358
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    const-string v0, "_pre_imp"

    .line 362
    .line 363
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object p2

    .line 370
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 371
    .line 372
    .line 373
    move-result p2

    .line 374
    if-eqz p2, :cond_9

    .line 375
    .line 376
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 377
    .line 378
    .line 379
    move-result-object p1

    .line 380
    const-string p2, "receive interstitial pre impression"

    .line 381
    .line 382
    invoke-virtual {p1, v1, p2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    goto :goto_1

    .line 386
    :cond_9
    new-instance p2, Ljava/lang/StringBuilder;

    .line 387
    .line 388
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 389
    .line 390
    .line 391
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/d4$a;->a:Lcom/cloud/hisavana/sdk/d4;

    .line 392
    .line 393
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/d4;->c(Lcom/cloud/hisavana/sdk/d4;)Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    const-string v0, "_destroy"

    .line 401
    .line 402
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object p2

    .line 409
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 410
    .line 411
    .line 412
    move-result p1

    .line 413
    if-eqz p1, :cond_a

    .line 414
    .line 415
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 416
    .line 417
    .line 418
    move-result-object p1

    .line 419
    const-string p2, "receive interstitial ad_destroy"

    .line 420
    .line 421
    invoke-virtual {p1, v1, p2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/d4$a;->a:Lcom/cloud/hisavana/sdk/d4;

    .line 425
    .line 426
    if-eqz p1, :cond_a

    .line 427
    .line 428
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/d4;->i(Lcom/cloud/hisavana/sdk/d4;)V

    .line 429
    .line 430
    .line 431
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/d4$a;->a:Lcom/cloud/hisavana/sdk/d4;

    .line 432
    .line 433
    invoke-static {p1, v3}, Lcom/cloud/hisavana/sdk/d4;->b(Lcom/cloud/hisavana/sdk/d4;Lcom/cloud/hisavana/sdk/d4$a;)Lcom/cloud/hisavana/sdk/d4$a;

    .line 434
    .line 435
    .line 436
    :cond_a
    :goto_1
    return-void
.end method
