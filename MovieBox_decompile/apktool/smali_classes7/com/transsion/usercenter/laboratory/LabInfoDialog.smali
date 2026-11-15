.class public final Lcom/transsion/usercenter/laboratory/LabInfoDialog;
.super Lcom/transsion/baseui/dialog/BaseDialog;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001f\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0019\u0010\u0010\u001a\u00020\u000f2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J!\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u00122\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/transsion/usercenter/laboratory/LabInfoDialog;",
        "Lcom/transsion/baseui/dialog/BaseDialog;",
        "<init>",
        "()V",
        "",
        "keyColor",
        "valueColor",
        "Lah/c;",
        "p0",
        "(II)Lah/c;",
        "",
        "q0",
        "()Ljava/lang/String;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/view/View;",
        "view",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "UserCenter_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget v0, Lcom/transsion/usercenter/R$layout;->dialog_lab_info:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/transsion/baseui/dialog/BaseDialog;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic n0(Lcom/transsion/usercenter/laboratory/LabInfoDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/usercenter/laboratory/LabInfoDialog;->r0(Lcom/transsion/usercenter/laboratory/LabInfoDialog;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic o0(Lxu/v;Lcom/transsion/usercenter/laboratory/LabInfoDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/usercenter/laboratory/LabInfoDialog;->s0(Lxu/v;Lcom/transsion/usercenter/laboratory/LabInfoDialog;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final p0(II)Lah/c;
    .locals 6

    .line 1
    invoke-static {}, Lah/c;->e()Lah/c$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "user_id = "

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lah/c$a;->e(Ljava/lang/CharSequence;)Lah/c$a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Lah/c$a;->c(I)Lah/c$a;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    new-array v1, v1, [Ljava/lang/Object;

    .line 17
    .line 18
    const-class v2, Lqx/a;

    .line 19
    .line 20
    invoke-static {v2, v1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lqx/a;

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-interface {v1}, Lqx/a;->i()Lcom/transsnet/loginapi/bean/UserInfo;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v1, 0x0

    .line 40
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v1, "\n"

    .line 49
    .line 50
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v0, v2}, Lah/c$a;->e(Ljava/lang/CharSequence;)Lah/c$a;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0, p2}, Lah/c$a;->c(I)Lah/c$a;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const-string v2, "device_id = "

    .line 66
    .line 67
    invoke-virtual {v0, v2}, Lah/c$a;->e(Ljava/lang/CharSequence;)Lah/c$a;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0, p1}, Lah/c$a;->c(I)Lah/c$a;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    sget-object v2, Ltg/b;->a:Ltg/b;

    .line 76
    .line 77
    invoke-virtual {v2}, Ltg/b;->h()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    new-instance v4, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-virtual {v0, v3}, Lah/c$a;->e(Ljava/lang/CharSequence;)Lah/c$a;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v0, p2}, Lah/c$a;->c(I)Lah/c$a;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    const-string v3, "version_name = "

    .line 105
    .line 106
    invoke-virtual {v0, v3}, Lah/c$a;->e(Ljava/lang/CharSequence;)Lah/c$a;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v0, p1}, Lah/c$a;->c(I)Lah/c$a;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-static {}, Lcom/blankj/utilcode/util/c;->h()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    new-instance v4, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    invoke-virtual {v0, v3}, Lah/c$a;->e(Ljava/lang/CharSequence;)Lah/c$a;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {v0, p2}, Lah/c$a;->c(I)Lah/c$a;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    const-string v3, "version_code = "

    .line 142
    .line 143
    invoke-virtual {v0, v3}, Lah/c$a;->e(Ljava/lang/CharSequence;)Lah/c$a;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {v0, p1}, Lah/c$a;->c(I)Lah/c$a;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-static {}, Lcom/blankj/utilcode/util/c;->f()I

    .line 152
    .line 153
    .line 154
    move-result v3

    .line 155
    new-instance v4, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    invoke-virtual {v0, v3}, Lah/c$a;->e(Ljava/lang/CharSequence;)Lah/c$a;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-virtual {v0, p2}, Lah/c$a;->c(I)Lah/c$a;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    const-string v3, "os_version = "

    .line 179
    .line 180
    invoke-virtual {v0, v3}, Lah/c$a;->e(Ljava/lang/CharSequence;)Lah/c$a;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-virtual {v0, p1}, Lah/c$a;->c(I)Lah/c$a;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-virtual {v2}, Ltg/b;->n()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    new-instance v4, Ljava/lang/StringBuilder;

    .line 193
    .line 194
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    invoke-virtual {v0, v3}, Lah/c$a;->e(Ljava/lang/CharSequence;)Lah/c$a;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-virtual {v0, p2}, Lah/c$a;->c(I)Lah/c$a;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    const-string v3, "model = "

    .line 216
    .line 217
    invoke-virtual {v0, v3}, Lah/c$a;->e(Ljava/lang/CharSequence;)Lah/c$a;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    invoke-virtual {v0, p1}, Lah/c$a;->c(I)Lah/c$a;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    invoke-virtual {v2}, Ltg/b;->l()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v3

    .line 229
    new-instance v4, Ljava/lang/StringBuilder;

    .line 230
    .line 231
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v3

    .line 244
    invoke-virtual {v0, v3}, Lah/c$a;->e(Ljava/lang/CharSequence;)Lah/c$a;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    invoke-virtual {v0, p2}, Lah/c$a;->c(I)Lah/c$a;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    const-string v3, "install_ch = "

    .line 253
    .line 254
    invoke-virtual {v0, v3}, Lah/c$a;->e(Ljava/lang/CharSequence;)Lah/c$a;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    invoke-virtual {v0, p1}, Lah/c$a;->c(I)Lah/c$a;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    sget-object v3, Lmg/a;->a:Lmg/a$a;

    .line 263
    .line 264
    invoke-virtual {v3}, Lmg/a$a;->a()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v3

    .line 268
    new-instance v4, Ljava/lang/StringBuilder;

    .line 269
    .line 270
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v3

    .line 283
    invoke-virtual {v0, v3}, Lah/c$a;->e(Ljava/lang/CharSequence;)Lah/c$a;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    invoke-virtual {v0, p2}, Lah/c$a;->c(I)Lah/c$a;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    const-string v3, "gaid = "

    .line 292
    .line 293
    invoke-virtual {v0, v3}, Lah/c$a;->e(Ljava/lang/CharSequence;)Lah/c$a;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    invoke-virtual {v0, p1}, Lah/c$a;->c(I)Lah/c$a;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    invoke-virtual {v2}, Ltg/b;->i()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v2

    .line 305
    new-instance v3, Ljava/lang/StringBuilder;

    .line 306
    .line 307
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v2

    .line 320
    invoke-virtual {v0, v2}, Lah/c$a;->e(Ljava/lang/CharSequence;)Lah/c$a;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    invoke-virtual {v0, p2}, Lah/c$a;->c(I)Lah/c$a;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    const-string v2, "net = "

    .line 329
    .line 330
    invoke-virtual {v0, v2}, Lah/c$a;->e(Ljava/lang/CharSequence;)Lah/c$a;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    invoke-virtual {v0, p1}, Lah/c$a;->c(I)Lah/c$a;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    sget-object v2, Lyg/l;->a:Lyg/l;

    .line 339
    .line 340
    invoke-virtual {v2}, Lyg/l;->d()Lcom/tn/lib/util/networkinfo/NetworkType;

    .line 341
    .line 342
    .line 343
    move-result-object v2

    .line 344
    new-instance v3, Ljava/lang/StringBuilder;

    .line 345
    .line 346
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v2

    .line 359
    invoke-virtual {v0, v2}, Lah/c$a;->e(Ljava/lang/CharSequence;)Lah/c$a;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    invoke-virtual {v0, p2}, Lah/c$a;->c(I)Lah/c$a;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    const-string v2, "region = "

    .line 368
    .line 369
    invoke-virtual {v0, v2}, Lah/c$a;->e(Ljava/lang/CharSequence;)Lah/c$a;

    .line 370
    .line 371
    .line 372
    move-result-object v0

    .line 373
    invoke-virtual {v0, p1}, Lah/c$a;->c(I)Lah/c$a;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 378
    .line 379
    .line 380
    move-result-object v2

    .line 381
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v2

    .line 385
    new-instance v3, Ljava/lang/StringBuilder;

    .line 386
    .line 387
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 388
    .line 389
    .line 390
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v2

    .line 400
    invoke-virtual {v0, v2}, Lah/c$a;->e(Ljava/lang/CharSequence;)Lah/c$a;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    invoke-virtual {v0, p2}, Lah/c$a;->c(I)Lah/c$a;

    .line 405
    .line 406
    .line 407
    move-result-object v0

    .line 408
    const-string v2, "timezone = "

    .line 409
    .line 410
    invoke-virtual {v0, v2}, Lah/c$a;->e(Ljava/lang/CharSequence;)Lah/c$a;

    .line 411
    .line 412
    .line 413
    move-result-object v0

    .line 414
    invoke-virtual {v0, p1}, Lah/c$a;->c(I)Lah/c$a;

    .line 415
    .line 416
    .line 417
    move-result-object v0

    .line 418
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 419
    .line 420
    .line 421
    move-result-object v2

    .line 422
    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v2

    .line 426
    new-instance v3, Ljava/lang/StringBuilder;

    .line 427
    .line 428
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 429
    .line 430
    .line 431
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    .line 433
    .line 434
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    .line 436
    .line 437
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v2

    .line 441
    invoke-virtual {v0, v2}, Lah/c$a;->e(Ljava/lang/CharSequence;)Lah/c$a;

    .line 442
    .line 443
    .line 444
    move-result-object v0

    .line 445
    invoke-virtual {v0, p2}, Lah/c$a;->c(I)Lah/c$a;

    .line 446
    .line 447
    .line 448
    move-result-object v0

    .line 449
    const-string v2, "sp_code = "

    .line 450
    .line 451
    invoke-virtual {v0, v2}, Lah/c$a;->e(Ljava/lang/CharSequence;)Lah/c$a;

    .line 452
    .line 453
    .line 454
    move-result-object v0

    .line 455
    invoke-virtual {v0, p1}, Lah/c$a;->c(I)Lah/c$a;

    .line 456
    .line 457
    .line 458
    move-result-object v0

    .line 459
    invoke-direct {p0}, Lcom/transsion/usercenter/laboratory/LabInfoDialog;->q0()Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v2

    .line 463
    new-instance v3, Ljava/lang/StringBuilder;

    .line 464
    .line 465
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 466
    .line 467
    .line 468
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    .line 470
    .line 471
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    .line 473
    .line 474
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v2

    .line 478
    invoke-virtual {v0, v2}, Lah/c$a;->e(Ljava/lang/CharSequence;)Lah/c$a;

    .line 479
    .line 480
    .line 481
    move-result-object v0

    .line 482
    invoke-virtual {v0, p2}, Lah/c$a;->c(I)Lah/c$a;

    .line 483
    .line 484
    .line 485
    move-result-object v0

    .line 486
    const-string v2, "channel = "

    .line 487
    .line 488
    invoke-virtual {v0, v2}, Lah/c$a;->e(Ljava/lang/CharSequence;)Lah/c$a;

    .line 489
    .line 490
    .line 491
    move-result-object v0

    .line 492
    invoke-virtual {v0, p1}, Lah/c$a;->c(I)Lah/c$a;

    .line 493
    .line 494
    .line 495
    move-result-object v0

    .line 496
    sget-object v2, Ljg/b;->a:Ljg/b$a;

    .line 497
    .line 498
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 499
    .line 500
    .line 501
    move-result-object v3

    .line 502
    const-string v4, "getApp(...)"

    .line 503
    .line 504
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 505
    .line 506
    .line 507
    invoke-virtual {v2, v3}, Ljg/b$a;->e(Landroid/content/Context;)Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object v2

    .line 511
    new-instance v3, Ljava/lang/StringBuilder;

    .line 512
    .line 513
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 514
    .line 515
    .line 516
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    .line 518
    .line 519
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    .line 521
    .line 522
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 523
    .line 524
    .line 525
    move-result-object v2

    .line 526
    invoke-virtual {v0, v2}, Lah/c$a;->e(Ljava/lang/CharSequence;)Lah/c$a;

    .line 527
    .line 528
    .line 529
    move-result-object v0

    .line 530
    invoke-virtual {v0, p2}, Lah/c$a;->c(I)Lah/c$a;

    .line 531
    .line 532
    .line 533
    move-result-object v0

    .line 534
    const-string v2, "package = "

    .line 535
    .line 536
    invoke-virtual {v0, v2}, Lah/c$a;->e(Ljava/lang/CharSequence;)Lah/c$a;

    .line 537
    .line 538
    .line 539
    move-result-object v0

    .line 540
    invoke-virtual {v0, p1}, Lah/c$a;->c(I)Lah/c$a;

    .line 541
    .line 542
    .line 543
    move-result-object v0

    .line 544
    invoke-static {}, Lcom/blankj/utilcode/util/c;->e()Ljava/lang/String;

    .line 545
    .line 546
    .line 547
    move-result-object v2

    .line 548
    new-instance v3, Ljava/lang/StringBuilder;

    .line 549
    .line 550
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 551
    .line 552
    .line 553
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    .line 555
    .line 556
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    .line 558
    .line 559
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    move-result-object v2

    .line 563
    invoke-virtual {v0, v2}, Lah/c$a;->e(Ljava/lang/CharSequence;)Lah/c$a;

    .line 564
    .line 565
    .line 566
    move-result-object v0

    .line 567
    invoke-virtual {v0, p2}, Lah/c$a;->c(I)Lah/c$a;

    .line 568
    .line 569
    .line 570
    move-result-object v0

    .line 571
    const-string v2, "SignatureMD5 = "

    .line 572
    .line 573
    invoke-virtual {v0, v2}, Lah/c$a;->e(Ljava/lang/CharSequence;)Lah/c$a;

    .line 574
    .line 575
    .line 576
    move-result-object v0

    .line 577
    invoke-virtual {v0, p1}, Lah/c$a;->c(I)Lah/c$a;

    .line 578
    .line 579
    .line 580
    move-result-object v0

    .line 581
    sget-object v2, Lij/d;->a:Lij/d;

    .line 582
    .line 583
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 584
    .line 585
    .line 586
    move-result-object v3

    .line 587
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 588
    .line 589
    .line 590
    invoke-virtual {v2, v3}, Lij/d;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 591
    .line 592
    .line 593
    move-result-object v3

    .line 594
    new-instance v5, Ljava/lang/StringBuilder;

    .line 595
    .line 596
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 597
    .line 598
    .line 599
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    .line 601
    .line 602
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    .line 604
    .line 605
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 606
    .line 607
    .line 608
    move-result-object v3

    .line 609
    invoke-virtual {v0, v3}, Lah/c$a;->e(Ljava/lang/CharSequence;)Lah/c$a;

    .line 610
    .line 611
    .line 612
    move-result-object v0

    .line 613
    invoke-virtual {v0, p2}, Lah/c$a;->c(I)Lah/c$a;

    .line 614
    .line 615
    .line 616
    move-result-object v0

    .line 617
    const-string v3, "SignatureSha1 = "

    .line 618
    .line 619
    invoke-virtual {v0, v3}, Lah/c$a;->e(Ljava/lang/CharSequence;)Lah/c$a;

    .line 620
    .line 621
    .line 622
    move-result-object v0

    .line 623
    invoke-virtual {v0, p1}, Lah/c$a;->c(I)Lah/c$a;

    .line 624
    .line 625
    .line 626
    move-result-object v0

    .line 627
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 628
    .line 629
    .line 630
    move-result-object v3

    .line 631
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 632
    .line 633
    .line 634
    invoke-static {v3}, Lij/d;->c(Landroid/content/Context;)Ljava/lang/String;

    .line 635
    .line 636
    .line 637
    move-result-object v3

    .line 638
    new-instance v5, Ljava/lang/StringBuilder;

    .line 639
    .line 640
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 641
    .line 642
    .line 643
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    .line 645
    .line 646
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    .line 648
    .line 649
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 650
    .line 651
    .line 652
    move-result-object v3

    .line 653
    invoke-virtual {v0, v3}, Lah/c$a;->e(Ljava/lang/CharSequence;)Lah/c$a;

    .line 654
    .line 655
    .line 656
    move-result-object v0

    .line 657
    invoke-virtual {v0, p2}, Lah/c$a;->c(I)Lah/c$a;

    .line 658
    .line 659
    .line 660
    move-result-object v0

    .line 661
    const-string v3, "SignatureSHA256 = "

    .line 662
    .line 663
    invoke-virtual {v0, v3}, Lah/c$a;->e(Ljava/lang/CharSequence;)Lah/c$a;

    .line 664
    .line 665
    .line 666
    move-result-object v0

    .line 667
    invoke-virtual {v0, p1}, Lah/c$a;->c(I)Lah/c$a;

    .line 668
    .line 669
    .line 670
    move-result-object p1

    .line 671
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 672
    .line 673
    .line 674
    move-result-object v0

    .line 675
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 676
    .line 677
    .line 678
    invoke-virtual {v2, v0}, Lij/d;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 679
    .line 680
    .line 681
    move-result-object v0

    .line 682
    new-instance v2, Ljava/lang/StringBuilder;

    .line 683
    .line 684
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 685
    .line 686
    .line 687
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    .line 689
    .line 690
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    .line 692
    .line 693
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 694
    .line 695
    .line 696
    move-result-object v0

    .line 697
    invoke-virtual {p1, v0}, Lah/c$a;->e(Ljava/lang/CharSequence;)Lah/c$a;

    .line 698
    .line 699
    .line 700
    move-result-object p1

    .line 701
    invoke-virtual {p1, p2}, Lah/c$a;->c(I)Lah/c$a;

    .line 702
    .line 703
    .line 704
    move-result-object p1

    .line 705
    invoke-virtual {p1}, Lah/c$a;->b()Lah/c;

    .line 706
    .line 707
    .line 708
    move-result-object p1

    .line 709
    const-string p2, "build(...)"

    .line 710
    .line 711
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 712
    .line 713
    .line 714
    return-object p1
.end method

.method private final q0()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lmg/a;->a:Lmg/a$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lmg/a$a;->c()Lcom/tencent/mmkv/MMKV;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, ""

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    const-string v2, "sp_code"

    .line 12
    .line 13
    invoke-virtual {v0, v2, v1}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-object v1, v0

    .line 21
    :cond_1
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    sget-object v0, Ltg/b;->a:Ltg/b;

    .line 28
    .line 29
    invoke-virtual {v0}, Ltg/b;->o()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    :cond_2
    return-object v1
.end method

.method private static final r0(Lcom/transsion/usercenter/laboratory/LabInfoDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final s0(Lxu/v;Lcom/transsion/usercenter/laboratory/LabInfoDialog;Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lxu/v;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {p0}, Lcom/blankj/utilcode/util/g;->a(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const-string p2, "copy success"

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    invoke-static {p0, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 29
    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    sget v0, Lcom/transsion/usercenter/R$style;->BaseDialogStyle:I

    .line 6
    .line 7
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Lxu/v;->a(Landroid/view/View;)Lxu/v;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    const-string v0, "bind(...)"

    .line 14
    .line 15
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p2, Lxu/v;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    sget v2, Lcom/tn/lib/widget/R$color;->main:I

    .line 25
    .line 26
    invoke-static {v1, v2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    sget v2, Lcom/tn/lib/widget/R$color;->text_02:I

    .line 35
    .line 36
    invoke-static {p1, v2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    invoke-direct {p0, v1, p1}, Lcom/transsion/usercenter/laboratory/LabInfoDialog;->p0(II)Lah/c;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p2, Lxu/v;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 48
    .line 49
    new-instance v0, Lcom/transsion/usercenter/laboratory/s;

    .line 50
    .line 51
    invoke-direct {v0, p0}, Lcom/transsion/usercenter/laboratory/s;-><init>(Lcom/transsion/usercenter/laboratory/LabInfoDialog;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p2, Lxu/v;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 58
    .line 59
    new-instance v0, Lcom/transsion/usercenter/laboratory/t;

    .line 60
    .line 61
    invoke-direct {v0, p2, p0}, Lcom/transsion/usercenter/laboratory/t;-><init>(Lxu/v;Lcom/transsion/usercenter/laboratory/LabInfoDialog;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method
