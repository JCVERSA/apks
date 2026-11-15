.class public final Lcom/transsion/ad/monopoly/model/AdPlans$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/ad/monopoly/model/AdPlans;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
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
.method public final a(Landroid/os/Parcel;)Lcom/transsion/ad/monopoly/model/AdPlans;
    .locals 45

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "parcel"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    const/4 v5, 0x0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    move-object v5, v1

    .line 33
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v8

    .line 45
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_1

    .line 50
    .line 51
    const/4 v9, 0x0

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    move-object v9, v1

    .line 62
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v10

    .line 66
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 67
    .line 68
    .line 69
    move-result-object v11

    .line 70
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-nez v1, :cond_2

    .line 75
    .line 76
    const/4 v12, 0x0

    .line 77
    goto :goto_2

    .line 78
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    move-object v12, v1

    .line 87
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 88
    .line 89
    .line 90
    move-result-object v13

    .line 91
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 92
    .line 93
    .line 94
    move-result-object v14

    .line 95
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 96
    .line 97
    .line 98
    move-result-object v15

    .line 99
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 100
    .line 101
    .line 102
    move-result-object v16

    .line 103
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 104
    .line 105
    .line 106
    move-result-object v17

    .line 107
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v18

    .line 111
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v19

    .line 115
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v20

    .line 119
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v21

    .line 123
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    const/16 v22, 0x0

    .line 128
    .line 129
    if-nez v1, :cond_3

    .line 130
    .line 131
    move-object/from16 v24, v15

    .line 132
    .line 133
    const/4 v1, 0x0

    .line 134
    goto :goto_4

    .line 135
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    new-instance v2, Ljava/util/ArrayList;

    .line 140
    .line 141
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 142
    .line 143
    .line 144
    move-object/from16 v24, v15

    .line 145
    .line 146
    move/from16 v15, v22

    .line 147
    .line 148
    :goto_3
    if-eq v15, v1, :cond_4

    .line 149
    .line 150
    move/from16 v25, v1

    .line 151
    .line 152
    sget-object v1, Lcom/transsion/ad/monopoly/model/AdMaterialList;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 153
    .line 154
    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    add-int/lit8 v15, v15, 0x1

    .line 162
    .line 163
    move/from16 v1, v25

    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_4
    move-object v1, v2

    .line 167
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v25

    .line 171
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v26

    .line 175
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v27

    .line 179
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v28

    .line 183
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v29

    .line 187
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v30

    .line 191
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v31

    .line 195
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 196
    .line 197
    .line 198
    move-result v2

    .line 199
    if-nez v2, :cond_5

    .line 200
    .line 201
    const/4 v2, 0x0

    .line 202
    goto :goto_5

    .line 203
    :cond_5
    sget-object v2, Lcom/transsion/ad/monopoly/model/CtxAttributeConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 204
    .line 205
    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    :goto_5
    move-object/from16 v32, v2

    .line 210
    .line 211
    check-cast v32, Lcom/transsion/ad/monopoly/model/CtxAttributeConfig;

    .line 212
    .line 213
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v33

    .line 217
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v34

    .line 221
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v35

    .line 225
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v36

    .line 229
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 230
    .line 231
    .line 232
    move-result v2

    .line 233
    if-nez v2, :cond_6

    .line 234
    .line 235
    const/4 v2, 0x0

    .line 236
    goto :goto_6

    .line 237
    :cond_6
    sget-object v2, Lcom/transsion/ad/monopoly/model/MbAdImage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 238
    .line 239
    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v2

    .line 243
    :goto_6
    move-object/from16 v37, v2

    .line 244
    .line 245
    check-cast v37, Lcom/transsion/ad/monopoly/model/MbAdImage;

    .line 246
    .line 247
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v38

    .line 251
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 252
    .line 253
    .line 254
    move-result v2

    .line 255
    if-nez v2, :cond_7

    .line 256
    .line 257
    const/16 v39, 0x0

    .line 258
    .line 259
    goto :goto_7

    .line 260
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    .line 261
    .line 262
    .line 263
    move-result-wide v39

    .line 264
    invoke-static/range {v39 .. v40}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 265
    .line 266
    .line 267
    move-result-object v2

    .line 268
    move-object/from16 v39, v2

    .line 269
    .line 270
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 271
    .line 272
    .line 273
    move-result v2

    .line 274
    if-nez v2, :cond_8

    .line 275
    .line 276
    const/16 v40, 0x0

    .line 277
    .line 278
    goto :goto_8

    .line 279
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 280
    .line 281
    .line 282
    move-result-wide v40

    .line 283
    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 284
    .line 285
    .line 286
    move-result-object v2

    .line 287
    move-object/from16 v40, v2

    .line 288
    .line 289
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 290
    .line 291
    .line 292
    move-result v2

    .line 293
    const/4 v15, 0x1

    .line 294
    if-eqz v2, :cond_9

    .line 295
    .line 296
    move/from16 v41, v15

    .line 297
    .line 298
    goto :goto_9

    .line 299
    :cond_9
    move/from16 v41, v22

    .line 300
    .line 301
    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 302
    .line 303
    .line 304
    move-result v2

    .line 305
    if-eqz v2, :cond_a

    .line 306
    .line 307
    move/from16 v43, v15

    .line 308
    .line 309
    goto :goto_a

    .line 310
    :cond_a
    move/from16 v43, v22

    .line 311
    .line 312
    :goto_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 313
    .line 314
    .line 315
    move-result v2

    .line 316
    if-eqz v2, :cond_b

    .line 317
    .line 318
    move/from16 v44, v15

    .line 319
    .line 320
    goto :goto_b

    .line 321
    :cond_b
    move/from16 v44, v22

    .line 322
    .line 323
    :goto_b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v42

    .line 327
    new-instance v0, Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 328
    .line 329
    move-object v2, v0

    .line 330
    move-object/from16 v15, v24

    .line 331
    .line 332
    move-object/from16 v22, v1

    .line 333
    .line 334
    move-object/from16 v23, v25

    .line 335
    .line 336
    move-object/from16 v24, v26

    .line 337
    .line 338
    move-object/from16 v25, v27

    .line 339
    .line 340
    move-object/from16 v26, v28

    .line 341
    .line 342
    move-object/from16 v27, v29

    .line 343
    .line 344
    move-object/from16 v28, v30

    .line 345
    .line 346
    move-object/from16 v29, v31

    .line 347
    .line 348
    move-object/from16 v30, v32

    .line 349
    .line 350
    move-object/from16 v31, v33

    .line 351
    .line 352
    move-object/from16 v32, v34

    .line 353
    .line 354
    move-object/from16 v33, v35

    .line 355
    .line 356
    move-object/from16 v34, v36

    .line 357
    .line 358
    move-object/from16 v35, v37

    .line 359
    .line 360
    move-object/from16 v36, v38

    .line 361
    .line 362
    move-object/from16 v37, v39

    .line 363
    .line 364
    move-object/from16 v38, v40

    .line 365
    .line 366
    move/from16 v39, v41

    .line 367
    .line 368
    move/from16 v40, v43

    .line 369
    .line 370
    move/from16 v41, v44

    .line 371
    .line 372
    invoke-direct/range {v2 .. v42}, Lcom/transsion/ad/monopoly/model/AdPlans;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ad/monopoly/model/CtxAttributeConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ad/monopoly/model/MbAdImage;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Long;ZZZLjava/lang/String;)V

    .line 373
    .line 374
    .line 375
    return-object v0
.end method

.method public final b(I)[Lcom/transsion/ad/monopoly/model/AdPlans;
    .locals 0

    .line 1
    new-array p1, p1, [Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 2
    .line 3
    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/ad/monopoly/model/AdPlans$a;->a(Landroid/os/Parcel;)Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/ad/monopoly/model/AdPlans$a;->b(I)[Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
