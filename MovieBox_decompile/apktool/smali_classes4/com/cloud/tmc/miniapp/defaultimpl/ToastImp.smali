.class public final Lcom/cloud/tmc/miniapp/defaultimpl/ToastImp;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/integration/proxy/ToastProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/defaultimpl/ToastImp$OooO00o;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/miniapp/defaultimpl/ToastImp$OooO00o;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniapp/defaultimpl/ToastImp$OooO00o;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/defaultimpl/ToastImp$OooO00o;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/tmc/miniapp/defaultimpl/ToastImp;->Companion:Lcom/cloud/tmc/miniapp/defaultimpl/ToastImp$OooO00o;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public showActionSheet(Lcom/google/gson/JsonArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 26

    .line 1
    move-object/from16 v1, p2

    .line 2
    .line 3
    move-object/from16 v2, p3

    .line 4
    .line 5
    move-object/from16 v3, p4

    .line 6
    .line 7
    move-object/from16 v4, p7

    .line 8
    .line 9
    move-object/from16 v5, p9

    .line 10
    .line 11
    move-object/from16 v6, p11

    .line 12
    .line 13
    const-string v7, "ToastImp"

    .line 14
    .line 15
    const-string v8, "errMsg"

    .line 16
    .line 17
    const-string v0, "actions"

    .line 18
    .line 19
    move-object/from16 v9, p1

    .line 20
    .line 21
    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v0, "type"

    .line 25
    .line 26
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string v0, "cancelText"

    .line 30
    .line 31
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string v0, "cancelColor"

    .line 35
    .line 36
    move-object/from16 v12, p8

    .line 37
    .line 38
    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string v0, "context"

    .line 42
    .line 43
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/JsonArray;->size()I

    .line 47
    .line 48
    .line 49
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 50
    const/4 v15, 0x1

    .line 51
    if-gt v15, v0, :cond_12

    .line 52
    .line 53
    const/16 v10, 0xb

    .line 54
    .line 55
    if-ge v0, v10, :cond_12

    .line 56
    .line 57
    const/4 v10, 0x0

    .line 58
    :try_start_1
    invoke-static/range {p1 .. p1}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtilsKt;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    new-instance v11, Lcom/cloud/tmc/miniapp/defaultimpl/ToastImp$showActionSheet$data$itemList$1;

    .line 63
    .line 64
    invoke-direct {v11}, Lcom/cloud/tmc/miniapp/defaultimpl/ToastImp$showActionSheet$data$itemList$1;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v11}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 68
    .line 69
    .line 70
    move-result-object v11

    .line 71
    const-string v13, "object : TypeToken<ArrayList<String>>() {}.type"

    .line 72
    .line 73
    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-static {v0, v11}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :catchall_0
    move-exception v0

    .line 84
    :try_start_2
    const-string v11, "itemList parse error!"

    .line 85
    .line 86
    invoke-static {v7, v11, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    .line 88
    .line 89
    move-object v0, v10

    .line 90
    :goto_0
    if-eqz v0, :cond_0

    .line 91
    .line 92
    new-instance v9, Ljava/util/ArrayList;

    .line 93
    .line 94
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .line 96
    .line 97
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 102
    .line 103
    .line 104
    move-result v11

    .line 105
    if-eqz v11, :cond_3

    .line 106
    .line 107
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v11

    .line 111
    move-object/from16 v18, v11

    .line 112
    .line 113
    check-cast v18, Ljava/lang/String;

    .line 114
    .line 115
    new-instance v11, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;

    .line 116
    .line 117
    const/16 v24, 0x79

    .line 118
    .line 119
    const/16 v25, 0x0

    .line 120
    .line 121
    const/16 v17, 0x0

    .line 122
    .line 123
    const/16 v20, 0x0

    .line 124
    .line 125
    const/16 v21, 0x0

    .line 126
    .line 127
    const/16 v22, 0x0

    .line 128
    .line 129
    const/16 v23, 0x0

    .line 130
    .line 131
    move-object/from16 v16, v11

    .line 132
    .line 133
    move-object/from16 v19, p5

    .line 134
    .line 135
    invoke-direct/range {v16 .. v25}, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    goto :goto_1

    .line 142
    :catchall_1
    move-exception v0

    .line 143
    goto/16 :goto_b

    .line 144
    .line 145
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtilsKt;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    new-instance v9, Lcom/cloud/tmc/miniapp/defaultimpl/ToastImp$showActionSheet$data$3;

    .line 150
    .line 151
    invoke-direct {v9}, Lcom/cloud/tmc/miniapp/defaultimpl/ToastImp$showActionSheet$data$3;-><init>()V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v9}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 155
    .line 156
    .line 157
    move-result-object v9

    .line 158
    const-string v11, "object :\n               \u2026og.ActionItem>>() {}.type"

    .line 159
    .line 160
    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-static {v0, v9}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    check-cast v0, Ljava/lang/Iterable;

    .line 168
    .line 169
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 170
    .line 171
    .line 172
    move-result-object v9

    .line 173
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 174
    .line 175
    .line 176
    move-result v11

    .line 177
    if-eqz v11, :cond_2

    .line 178
    .line 179
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v11

    .line 183
    check-cast v11, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;

    .line 184
    .line 185
    invoke-virtual {v11}, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->getText()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v11

    .line 189
    if-eqz v11, :cond_1

    .line 190
    .line 191
    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    .line 192
    .line 193
    .line 194
    move-result v11

    .line 195
    if-eqz v11, :cond_1

    .line 196
    .line 197
    goto :goto_2

    .line 198
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 199
    .line 200
    const-string v1, "Action\'s text is null or empty"

    .line 201
    .line 202
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    throw v0

    .line 206
    :cond_2
    move-object v9, v0

    .line 207
    check-cast v9, Ljava/util/ArrayList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 208
    .line 209
    :cond_3
    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/OooOO0;

    .line 210
    .line 211
    invoke-direct {v0, v5}, Lcom/cloud/tmc/miniapp/dialog/OooOO0;-><init>(Landroid/content/Context;)V

    .line 212
    .line 213
    .line 214
    if-eqz v3, :cond_d

    .line 215
    .line 216
    invoke-interface/range {p4 .. p4}, Ljava/lang/CharSequence;->length()I

    .line 217
    .line 218
    .line 219
    move-result v5

    .line 220
    if-nez v5, :cond_4

    .line 221
    .line 222
    goto :goto_6

    .line 223
    :cond_4
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/dialog/OooOO0;->OooO0OO()Landroidx/appcompat/widget/AppCompatTextView;

    .line 224
    .line 225
    .line 226
    move-result-object v5

    .line 227
    const/4 v7, 0x0

    .line 228
    if-eqz v5, :cond_7

    .line 229
    .line 230
    if-eqz v2, :cond_6

    .line 231
    .line 232
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    .line 233
    .line 234
    .line 235
    move-result v8

    .line 236
    if-nez v8, :cond_5

    .line 237
    .line 238
    goto :goto_3

    .line 239
    :cond_5
    move v8, v7

    .line 240
    goto :goto_4

    .line 241
    :cond_6
    :goto_3
    move v8, v15

    .line 242
    :goto_4
    xor-int/2addr v8, v15

    .line 243
    invoke-static {v5, v8}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toVisibleOrGone(Landroid/view/View;Z)V

    .line 244
    .line 245
    .line 246
    :cond_7
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/dialog/OooOO0;->OooO0OO()Landroidx/appcompat/widget/AppCompatTextView;

    .line 247
    .line 248
    .line 249
    move-result-object v5

    .line 250
    if-nez v5, :cond_8

    .line 251
    .line 252
    goto :goto_5

    .line 253
    :cond_8
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    .line 255
    .line 256
    :goto_5
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/dialog/OooOO0;->OooO0O0()Landroidx/appcompat/widget/AppCompatTextView;

    .line 257
    .line 258
    .line 259
    move-result-object v2

    .line 260
    if-eqz v2, :cond_b

    .line 261
    .line 262
    if-eqz v3, :cond_9

    .line 263
    .line 264
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    .line 265
    .line 266
    .line 267
    move-result v5

    .line 268
    if-nez v5, :cond_a

    .line 269
    .line 270
    :cond_9
    move v7, v15

    .line 271
    :cond_a
    xor-int/lit8 v5, v7, 0x1

    .line 272
    .line 273
    invoke-static {v2, v5}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toVisibleOrGone(Landroid/view/View;Z)V

    .line 274
    .line 275
    .line 276
    :cond_b
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/dialog/OooOO0;->OooO0O0()Landroidx/appcompat/widget/AppCompatTextView;

    .line 277
    .line 278
    .line 279
    move-result-object v2

    .line 280
    if-nez v2, :cond_c

    .line 281
    .line 282
    goto :goto_6

    .line 283
    :cond_c
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    .line 285
    .line 286
    :cond_d
    :goto_6
    const-string v2, "showType"

    .line 287
    .line 288
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    iget-object v3, v0, Lcom/cloud/tmc/miniapp/dialog/OooOO0;->OooO0oO:Lcom/cloud/tmc/miniapp/dialog/OooO0o;

    .line 292
    .line 293
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 294
    .line 295
    .line 296
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    iput-object v1, v3, Lcom/cloud/tmc/miniapp/dialog/OooO0o;->OooO0O0:Ljava/lang/String;

    .line 300
    .line 301
    iget-object v1, v0, Lcom/cloud/tmc/miniapp/dialog/OooOO0;->OooO0oO:Lcom/cloud/tmc/miniapp/dialog/OooO0o;

    .line 302
    .line 303
    move-object/from16 v2, p10

    .line 304
    .line 305
    iput-object v2, v1, Lcom/cloud/tmc/miniapp/dialog/OooO0o;->OooO0OO:Ljava/lang/String;

    .line 306
    .line 307
    invoke-virtual {v0, v9}, Lcom/cloud/tmc/miniapp/dialog/OooOO0;->OooO00o(Ljava/util/ArrayList;)Lcom/cloud/tmc/miniapp/dialog/OooOO0;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    if-eqz p6, :cond_11

    .line 312
    .line 313
    iget-object v1, v0, Lcom/cloud/tmc/miniapp/dialog/OooOO0;->OooO0oO:Lcom/cloud/tmc/miniapp/dialog/OooO0o;

    .line 314
    .line 315
    if-eqz v4, :cond_10

    .line 316
    .line 317
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    .line 318
    .line 319
    .line 320
    move-result v2

    .line 321
    if-lez v2, :cond_e

    .line 322
    .line 323
    goto :goto_7

    .line 324
    :cond_e
    move-object v4, v10

    .line 325
    :goto_7
    if-nez v4, :cond_f

    .line 326
    .line 327
    goto :goto_8

    .line 328
    :cond_f
    move-object v11, v4

    .line 329
    goto :goto_9

    .line 330
    :cond_10
    :goto_8
    const-string v2, "Cancel"

    .line 331
    .line 332
    move-object v11, v2

    .line 333
    :goto_9
    new-instance v2, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;

    .line 334
    .line 335
    const/16 v17, 0x20

    .line 336
    .line 337
    const/16 v18, 0x0

    .line 338
    .line 339
    const-string v10, "Cancel"

    .line 340
    .line 341
    const-string v13, "#4D191F2B"

    .line 342
    .line 343
    const/4 v14, 0x1

    .line 344
    const/4 v3, 0x0

    .line 345
    const-string v16, "#0F191F2B"

    .line 346
    .line 347
    move-object v9, v2

    .line 348
    move-object/from16 v12, p8

    .line 349
    .line 350
    move v4, v15

    .line 351
    move-object v15, v3

    .line 352
    invoke-direct/range {v9 .. v18}, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v1, v2}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;->addItem(Ljava/lang/Object;)V

    .line 356
    .line 357
    .line 358
    goto :goto_a

    .line 359
    :cond_11
    move v4, v15

    .line 360
    :goto_a
    new-instance v1, Lcom/cloud/tmc/miniapp/defaultimpl/ToastImp$OooO0O0;

    .line 361
    .line 362
    invoke-direct {v1, v6}, Lcom/cloud/tmc/miniapp/defaultimpl/ToastImp$OooO0O0;-><init>(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 363
    .line 364
    .line 365
    iput-object v1, v0, Lcom/cloud/tmc/miniapp/dialog/OooOO0;->OooO0oo:Lcom/cloud/tmc/miniapp/dialog/OooOO0O;

    .line 366
    .line 367
    invoke-virtual {v0, v4}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setCancelable(Z)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    check-cast v0, Lcom/cloud/tmc/miniapp/dialog/OooOO0;

    .line 372
    .line 373
    invoke-virtual {v0, v4}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setCanceledOnTouchOutside(Z)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    check-cast v0, Lcom/cloud/tmc/miniapp/dialog/OooOO0;

    .line 378
    .line 379
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/dialog/OooOO0;->show()V

    .line 380
    .line 381
    .line 382
    return-void

    .line 383
    :cond_12
    if-eqz v6, :cond_13

    .line 384
    .line 385
    :try_start_3
    new-instance v1, Lcom/google/gson/JsonObject;

    .line 386
    .line 387
    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 388
    .line 389
    .line 390
    new-instance v2, Ljava/lang/StringBuilder;

    .line 391
    .line 392
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 393
    .line 394
    .line 395
    const-string v3, "Invalid "

    .line 396
    .line 397
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 401
    .line 402
    .line 403
    const-string v0, ", must be between 1 and 10 : AS10003"

    .line 404
    .line 405
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v0

    .line 412
    invoke-virtual {v1, v8, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    invoke-interface {v6, v1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 416
    .line 417
    .line 418
    :cond_13
    return-void

    .line 419
    :goto_b
    invoke-static {v7, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 420
    .line 421
    .line 422
    if-eqz v6, :cond_14

    .line 423
    .line 424
    const-string v0, "Parameter error: AS10001"

    .line 425
    .line 426
    invoke-static {v8, v0, v6}, Lcom/cloud/tmc/miniapp/bridge/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 427
    .line 428
    .line 429
    :cond_14
    return-void
.end method

.method public showAddHomeSuccessfulToast()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->showAddhomeSuccessToast()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public showCommonDialog(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/cloud/tmc/integration/callback/CommonDialogCallback;)V
    .locals 2

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-direct {v0, p9, v1}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;-><init>(Landroid/content/Context;Z)V

    .line 10
    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 15
    .line 16
    .line 17
    move-result p9

    .line 18
    if-nez p9, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO0Oo(Ljava/lang/String;)Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    .line 22
    .line 23
    .line 24
    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    .line 25
    .line 26
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-nez p1, :cond_2

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    invoke-virtual {v0, p2}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO00o(Ljava/lang/String;)Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    .line 34
    .line 35
    .line 36
    :cond_3
    :goto_1
    if-lez p3, :cond_4

    .line 37
    .line 38
    invoke-virtual {v0, p3}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO00o(I)Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    .line 39
    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_4
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO00o(Z)Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    .line 43
    .line 44
    .line 45
    :goto_2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 46
    .line 47
    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_8

    .line 52
    .line 53
    if-eqz p5, :cond_7

    .line 54
    .line 55
    invoke-interface {p5}, Ljava/lang/CharSequence;->length()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-nez p1, :cond_5

    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_5
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO0Oo()Landroid/widget/TextView;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    if-nez p1, :cond_6

    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_6
    const/16 p2, 0xc

    .line 70
    .line 71
    invoke-virtual {v0, p5, p2}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO00o(Ljava/lang/String;I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    .line 77
    .line 78
    :cond_7
    :goto_3
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO0O0(Z)Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    .line 79
    .line 80
    .line 81
    :cond_8
    if-eqz p7, :cond_a

    .line 82
    .line 83
    invoke-interface {p7}, Ljava/lang/CharSequence;->length()I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-nez p1, :cond_9

    .line 88
    .line 89
    goto :goto_4

    .line 90
    :cond_9
    invoke-virtual {v0, p7}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO0OO(Ljava/lang/String;)Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    .line 91
    .line 92
    .line 93
    :cond_a
    :goto_4
    if-eqz p6, :cond_c

    .line 94
    .line 95
    :try_start_0
    invoke-interface {p6}, Ljava/lang/CharSequence;->length()I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-nez p1, :cond_b

    .line 100
    .line 101
    goto :goto_5

    .line 102
    :cond_b
    invoke-static {p6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO0O0(I)Lcom/cloud/tmc/miniapp/dialog/OooOo00;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .line 108
    .line 109
    goto :goto_5

    .line 110
    :catch_0
    move-exception p1

    .line 111
    const-string p2, "[ToastImp]: set common dialog cancel button color error"

    .line 112
    .line 113
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 114
    .line 115
    .line 116
    const-string p1, "cancel button color error"

    .line 117
    .line 118
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/defaultimpl/ToastImp;->toast(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    :cond_c
    :goto_5
    if-eqz p8, :cond_e

    .line 122
    .line 123
    :try_start_1
    invoke-interface {p8}, Ljava/lang/CharSequence;->length()I

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    if-nez p1, :cond_d

    .line 128
    .line 129
    goto :goto_6

    .line 130
    :cond_d
    invoke-static {p8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO0OO(I)Lcom/cloud/tmc/miniapp/dialog/OooOo00;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 135
    .line 136
    .line 137
    goto :goto_6

    .line 138
    :catch_1
    move-exception p1

    .line 139
    const-string p2, "[ToastImp]: set common dialog confirm button color error"

    .line 140
    .line 141
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 142
    .line 143
    .line 144
    const-string p1, "confirm button color error"

    .line 145
    .line 146
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/defaultimpl/ToastImp;->toast(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    :cond_e
    :goto_6
    new-instance p1, Lcom/cloud/tmc/miniapp/defaultimpl/ToastImp$OooO0OO;

    .line 150
    .line 151
    invoke-direct {p1, p10}, Lcom/cloud/tmc/miniapp/defaultimpl/ToastImp$OooO0OO;-><init>(Lcom/cloud/tmc/integration/callback/CommonDialogCallback;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO00o(Lcom/cloud/tmc/miniapp/dialog/OooOo;)Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    const/4 p2, 0x0

    .line 159
    invoke-virtual {p1, p2}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setCanceledOnTouchOutside(Z)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    check-cast p1, Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    .line 164
    .line 165
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->show()V

    .line 166
    .line 167
    .line 168
    return-void
.end method

.method public showCommonDialogWithOperate(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/cloud/tmc/integration/callback/CommonDialogCallback;)Lcom/cloud/tmc/integration/callback/CommonDialogOperate;
    .locals 2

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-direct {v0, p9, v1}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;-><init>(Landroid/content/Context;Z)V

    .line 10
    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 15
    .line 16
    .line 17
    move-result p9

    .line 18
    if-nez p9, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO0Oo(Ljava/lang/String;)Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    .line 22
    .line 23
    .line 24
    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    .line 25
    .line 26
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-nez p1, :cond_2

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    invoke-virtual {v0, p2}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO00o(Ljava/lang/String;)Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    .line 34
    .line 35
    .line 36
    :cond_3
    :goto_1
    if-lez p3, :cond_4

    .line 37
    .line 38
    invoke-virtual {v0, p3}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO00o(I)Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    .line 39
    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_4
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO00o(Z)Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    .line 43
    .line 44
    .line 45
    :goto_2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 46
    .line 47
    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_8

    .line 52
    .line 53
    if-eqz p5, :cond_7

    .line 54
    .line 55
    invoke-interface {p5}, Ljava/lang/CharSequence;->length()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-nez p1, :cond_5

    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_5
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO0Oo()Landroid/widget/TextView;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    if-nez p1, :cond_6

    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_6
    const/16 p2, 0xc

    .line 70
    .line 71
    invoke-virtual {v0, p5, p2}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO00o(Ljava/lang/String;I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    .line 77
    .line 78
    :cond_7
    :goto_3
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO0O0(Z)Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    .line 79
    .line 80
    .line 81
    :cond_8
    if-eqz p7, :cond_a

    .line 82
    .line 83
    invoke-interface {p7}, Ljava/lang/CharSequence;->length()I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-nez p1, :cond_9

    .line 88
    .line 89
    goto :goto_4

    .line 90
    :cond_9
    invoke-virtual {v0, p7}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO0OO(Ljava/lang/String;)Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    .line 91
    .line 92
    .line 93
    :cond_a
    :goto_4
    if-eqz p6, :cond_c

    .line 94
    .line 95
    :try_start_0
    invoke-interface {p6}, Ljava/lang/CharSequence;->length()I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-nez p1, :cond_b

    .line 100
    .line 101
    goto :goto_5

    .line 102
    :cond_b
    invoke-static {p6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO0O0(I)Lcom/cloud/tmc/miniapp/dialog/OooOo00;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .line 108
    .line 109
    goto :goto_5

    .line 110
    :catch_0
    move-exception p1

    .line 111
    const-string p2, "[ToastImp]: set common dialog cancel button color error"

    .line 112
    .line 113
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 114
    .line 115
    .line 116
    const-string p1, "cancel button color error"

    .line 117
    .line 118
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/defaultimpl/ToastImp;->toast(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    :cond_c
    :goto_5
    if-eqz p8, :cond_e

    .line 122
    .line 123
    :try_start_1
    invoke-interface {p8}, Ljava/lang/CharSequence;->length()I

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    if-nez p1, :cond_d

    .line 128
    .line 129
    goto :goto_6

    .line 130
    :cond_d
    invoke-static {p8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO0OO(I)Lcom/cloud/tmc/miniapp/dialog/OooOo00;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 135
    .line 136
    .line 137
    goto :goto_6

    .line 138
    :catch_1
    move-exception p1

    .line 139
    const-string p2, "[ToastImp]: set common dialog confirm button color error"

    .line 140
    .line 141
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 142
    .line 143
    .line 144
    const-string p1, "confirm button color error"

    .line 145
    .line 146
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/defaultimpl/ToastImp;->toast(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    :cond_e
    :goto_6
    new-instance p1, Lcom/cloud/tmc/miniapp/defaultimpl/ToastImp$OooO0o;

    .line 150
    .line 151
    invoke-direct {p1, p10}, Lcom/cloud/tmc/miniapp/defaultimpl/ToastImp$OooO0o;-><init>(Lcom/cloud/tmc/integration/callback/CommonDialogCallback;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO00o(Lcom/cloud/tmc/miniapp/dialog/OooOo;)Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    const/4 p2, 0x0

    .line 159
    invoke-virtual {p1, p2}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setCanceledOnTouchOutside(Z)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    check-cast p1, Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    .line 164
    .line 165
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->show()V

    .line 166
    .line 167
    .line 168
    new-instance p1, Lcom/cloud/tmc/miniapp/defaultimpl/ToastImp$OooO;

    .line 169
    .line 170
    invoke-direct {p1, v0}, Lcom/cloud/tmc/miniapp/defaultimpl/ToastImp$OooO;-><init>(Lcom/cloud/tmc/miniapp/dialog/OooOo00;)V

    .line 171
    .line 172
    .line 173
    return-object p1
.end method

.method public showModal(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 2

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p10, v1}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;-><init>(Landroid/content/Context;Z)V

    .line 10
    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 15
    .line 16
    .line 17
    move-result p10

    .line 18
    if-nez p10, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO0Oo(Ljava/lang/String;)Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    .line 22
    .line 23
    .line 24
    :cond_1
    :goto_0
    iget-object p1, v0, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO0Oo:Lkotlin/Lazy;

    .line 25
    .line 26
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Landroid/widget/FrameLayout;

    .line 31
    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    xor-int/lit8 p10, p4, 0x1

    .line 35
    .line 36
    invoke-static {p1, p10}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toVisibleOrGone(Landroid/view/View;Z)V

    .line 37
    .line 38
    .line 39
    :cond_2
    iget-object p1, v0, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO0o0:Lkotlin/Lazy;

    .line 40
    .line 41
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Landroid/widget/FrameLayout;

    .line 46
    .line 47
    if-eqz p1, :cond_3

    .line 48
    .line 49
    invoke-static {p1, p4}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toVisibleOrGone(Landroid/view/View;Z)V

    .line 50
    .line 51
    .line 52
    :cond_3
    if-eqz p5, :cond_7

    .line 53
    .line 54
    invoke-interface {p5}, Ljava/lang/CharSequence;->length()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-nez p1, :cond_4

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_4
    if-eqz p5, :cond_7

    .line 62
    .line 63
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-nez p1, :cond_5

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_5
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO0oO()Landroid/widget/TextView;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    if-nez p1, :cond_6

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_6
    invoke-virtual {p1, p5}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 78
    .line 79
    .line 80
    :cond_7
    :goto_1
    if-eqz p2, :cond_9

    .line 81
    .line 82
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-nez p1, :cond_8

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_8
    invoke-virtual {v0, p2}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO00o(Ljava/lang/String;)Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    .line 90
    .line 91
    .line 92
    :cond_9
    :goto_2
    const/4 p1, 0x1

    .line 93
    if-eqz p3, :cond_d

    .line 94
    .line 95
    if-eqz p6, :cond_c

    .line 96
    .line 97
    invoke-interface {p6}, Ljava/lang/CharSequence;->length()I

    .line 98
    .line 99
    .line 100
    move-result p2

    .line 101
    if-nez p2, :cond_a

    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_a
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO0Oo()Landroid/widget/TextView;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    if-nez p2, :cond_b

    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_b
    const/16 p3, 0xc

    .line 112
    .line 113
    invoke-virtual {v0, p6, p3}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO00o(Ljava/lang/String;I)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p3

    .line 117
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    .line 119
    .line 120
    :cond_c
    :goto_3
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO0O0(Z)Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    .line 121
    .line 122
    .line 123
    :cond_d
    if-eqz p8, :cond_f

    .line 124
    .line 125
    invoke-interface {p8}, Ljava/lang/CharSequence;->length()I

    .line 126
    .line 127
    .line 128
    move-result p2

    .line 129
    if-nez p2, :cond_e

    .line 130
    .line 131
    goto :goto_4

    .line 132
    :cond_e
    invoke-virtual {v0, p8}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO0OO(Ljava/lang/String;)Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    .line 133
    .line 134
    .line 135
    :cond_f
    :goto_4
    if-eqz p7, :cond_11

    .line 136
    .line 137
    :try_start_0
    invoke-interface {p7}, Ljava/lang/CharSequence;->length()I

    .line 138
    .line 139
    .line 140
    move-result p2

    .line 141
    if-nez p2, :cond_10

    .line 142
    .line 143
    goto :goto_5

    .line 144
    :cond_10
    invoke-static {p7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    move-result p2

    .line 148
    invoke-virtual {v0, p2}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO0O0(I)Lcom/cloud/tmc/miniapp/dialog/OooOo00;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .line 150
    .line 151
    goto :goto_5

    .line 152
    :catch_0
    move-exception p2

    .line 153
    const-string p3, "[ToastImp]: set common dialog cancel button color error"

    .line 154
    .line 155
    invoke-static {p3, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 156
    .line 157
    .line 158
    const-string p2, "cancel button color error"

    .line 159
    .line 160
    invoke-virtual {p0, p2}, Lcom/cloud/tmc/miniapp/defaultimpl/ToastImp;->toast(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    :cond_11
    :goto_5
    if-eqz p9, :cond_13

    .line 164
    .line 165
    :try_start_1
    invoke-interface {p9}, Ljava/lang/CharSequence;->length()I

    .line 166
    .line 167
    .line 168
    move-result p2

    .line 169
    if-nez p2, :cond_12

    .line 170
    .line 171
    goto :goto_6

    .line 172
    :cond_12
    invoke-static {p9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    move-result p2

    .line 176
    invoke-virtual {v0, p2}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO0OO(I)Lcom/cloud/tmc/miniapp/dialog/OooOo00;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 177
    .line 178
    .line 179
    goto :goto_6

    .line 180
    :catch_1
    move-exception p2

    .line 181
    const-string p3, "[ToastImp]: set common dialog confirm button color error"

    .line 182
    .line 183
    invoke-static {p3, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 184
    .line 185
    .line 186
    const-string p2, "confirm button color error"

    .line 187
    .line 188
    invoke-virtual {p0, p2}, Lcom/cloud/tmc/miniapp/defaultimpl/ToastImp;->toast(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    :cond_13
    :goto_6
    new-instance p2, Lcom/cloud/tmc/miniapp/defaultimpl/ToastImp$OooOO0;

    .line 192
    .line 193
    invoke-direct {p2, p11, p4, v0}, Lcom/cloud/tmc/miniapp/defaultimpl/ToastImp$OooOO0;-><init>(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;ZLcom/cloud/tmc/miniapp/dialog/OooOo00;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0, p2}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO00o(Lcom/cloud/tmc/miniapp/dialog/OooOo;)Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    .line 197
    .line 198
    .line 199
    move-result-object p2

    .line 200
    invoke-virtual {p2, p1}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO00o(Z)Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    invoke-virtual {p1, v1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setCanceledOnTouchOutside(Z)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    check-cast p1, Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    .line 209
    .line 210
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->show()V

    .line 211
    .line 212
    .line 213
    return-void
.end method

.method public toast(I)V
    .locals 7

    const/16 v5, 0xe

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move v0, p1

    .line 3
    invoke-static/range {v0 .. v6}, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->showToast$default(IIJZILjava/lang/Object;)V

    return-void
.end method

.method public toast(Ljava/lang/String;)V
    .locals 9

    .line 1
    const-string v0, ""

    invoke-static {p1, v0}, Lcom/cloud/tmc/integration/utils/ext/StringExtKt;->orDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x1e

    const/4 v8, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v8}, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->showToast$default(Ljava/lang/CharSequence;IJZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public toast(Ljava/lang/String;I)V
    .locals 9

    .line 2
    const-string v0, ""

    invoke-static {p1, v0}, Lcom/cloud/tmc/integration/utils/ext/StringExtKt;->orDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x1c

    const/4 v8, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v2, p2

    invoke-static/range {v1 .. v8}, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->showToast$default(Ljava/lang/CharSequence;IJZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method
