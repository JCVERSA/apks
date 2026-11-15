.class public final Lcom/transsion/shorttv/bean/OperateItem$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/shorttv/bean/OperateItem;
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
.method public final a(Landroid/os/Parcel;)Lcom/transsion/shorttv/bean/OperateItem;
    .locals 29

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
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_1

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    sget-object v1, Lcom/transsion/shorttv/bean/BannerBean;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 46
    .line 47
    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    :goto_1
    move-object v7, v1

    .line 52
    check-cast v7, Lcom/transsion/shorttv/bean/BannerBean;

    .line 53
    .line 54
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-nez v1, :cond_2

    .line 59
    .line 60
    const/4 v9, 0x0

    .line 61
    goto :goto_3

    .line 62
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    new-instance v9, Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-direct {v9, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 69
    .line 70
    .line 71
    const/4 v10, 0x0

    .line 72
    :goto_2
    if-eq v10, v1, :cond_3

    .line 73
    .line 74
    sget-object v11, Lcom/transsion/shorttv/bean/FilterItem;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 75
    .line 76
    invoke-interface {v11, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v11

    .line 80
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    add-int/lit8 v10, v10, 0x1

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_3
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-nez v1, :cond_4

    .line 91
    .line 92
    const/4 v10, 0x0

    .line 93
    goto :goto_5

    .line 94
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    new-instance v10, Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-direct {v10, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 101
    .line 102
    .line 103
    const/4 v11, 0x0

    .line 104
    :goto_4
    if-eq v11, v1, :cond_5

    .line 105
    .line 106
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 107
    .line 108
    .line 109
    move-result-object v12

    .line 110
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    add-int/lit8 v11, v11, 0x1

    .line 114
    .line 115
    goto :goto_4

    .line 116
    :cond_5
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-nez v1, :cond_6

    .line 121
    .line 122
    const/4 v1, 0x0

    .line 123
    goto :goto_6

    .line 124
    :cond_6
    sget-object v1, Lcom/transsion/shorttv/bean/CustomData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 125
    .line 126
    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    :goto_6
    check-cast v1, Lcom/transsion/shorttv/bean/CustomData;

    .line 131
    .line 132
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 133
    .line 134
    .line 135
    move-result v11

    .line 136
    if-nez v11, :cond_7

    .line 137
    .line 138
    const/4 v11, 0x0

    .line 139
    goto :goto_7

    .line 140
    :cond_7
    sget-object v11, Lcom/transsion/shorttv/bean/PlayListItem;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 141
    .line 142
    invoke-interface {v11, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v11

    .line 146
    :goto_7
    check-cast v11, Lcom/transsion/shorttv/bean/PlayListItem;

    .line 147
    .line 148
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 149
    .line 150
    .line 151
    move-result-object v12

    .line 152
    check-cast v12, Lcom/transsion/shorttv/bean/Subject;

    .line 153
    .line 154
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v13

    .line 158
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 159
    .line 160
    .line 161
    move-result v14

    .line 162
    if-nez v14, :cond_8

    .line 163
    .line 164
    const/4 v14, 0x0

    .line 165
    goto :goto_8

    .line 166
    :cond_8
    sget-object v14, Lcom/transsion/shorttv/bean/SingleImagePage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 167
    .line 168
    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v14

    .line 172
    :goto_8
    check-cast v14, Lcom/transsion/shorttv/bean/SingleImagePage;

    .line 173
    .line 174
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 175
    .line 176
    .line 177
    move-result v15

    .line 178
    if-nez v15, :cond_9

    .line 179
    .line 180
    const/4 v15, 0x0

    .line 181
    goto :goto_a

    .line 182
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 183
    .line 184
    .line 185
    move-result v15

    .line 186
    new-instance v2, Ljava/util/ArrayList;

    .line 187
    .line 188
    invoke-direct {v2, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 189
    .line 190
    .line 191
    const/4 v8, 0x0

    .line 192
    :goto_9
    if-eq v8, v15, :cond_a

    .line 193
    .line 194
    move/from16 v18, v15

    .line 195
    .line 196
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 197
    .line 198
    .line 199
    move-result-object v15

    .line 200
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    add-int/lit8 v8, v8, 0x1

    .line 204
    .line 205
    move/from16 v15, v18

    .line 206
    .line 207
    goto :goto_9

    .line 208
    :cond_a
    move-object v15, v2

    .line 209
    :goto_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 210
    .line 211
    .line 212
    move-result v2

    .line 213
    if-nez v2, :cond_b

    .line 214
    .line 215
    const/4 v2, 0x0

    .line 216
    goto :goto_b

    .line 217
    :cond_b
    sget-object v2, Lcom/transsion/shorttv/bean/RankingData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 218
    .line 219
    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    :goto_b
    move-object/from16 v18, v2

    .line 224
    .line 225
    check-cast v18, Lcom/transsion/shorttv/bean/RankingData;

    .line 226
    .line 227
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 228
    .line 229
    .line 230
    move-result v2

    .line 231
    if-nez v2, :cond_c

    .line 232
    .line 233
    const/4 v2, 0x0

    .line 234
    goto :goto_c

    .line 235
    :cond_c
    sget-object v2, Lcom/transsion/shorttv/bean/RankingListData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 236
    .line 237
    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    :goto_c
    move-object/from16 v19, v2

    .line 242
    .line 243
    check-cast v19, Lcom/transsion/shorttv/bean/RankingListData;

    .line 244
    .line 245
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 246
    .line 247
    .line 248
    move-result v2

    .line 249
    if-nez v2, :cond_d

    .line 250
    .line 251
    move-object/from16 v26, v15

    .line 252
    .line 253
    const/16 v27, 0x0

    .line 254
    .line 255
    goto :goto_e

    .line 256
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 257
    .line 258
    .line 259
    move-result v2

    .line 260
    new-instance v8, Ljava/util/ArrayList;

    .line 261
    .line 262
    invoke-direct {v8, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 263
    .line 264
    .line 265
    move-object/from16 v26, v15

    .line 266
    .line 267
    const/4 v15, 0x0

    .line 268
    :goto_d
    if-eq v15, v2, :cond_e

    .line 269
    .line 270
    move/from16 v20, v2

    .line 271
    .line 272
    sget-object v2, Lcom/transsion/shorttv/bean/LiveListItem;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 273
    .line 274
    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v2

    .line 278
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    add-int/lit8 v15, v15, 0x1

    .line 282
    .line 283
    move/from16 v2, v20

    .line 284
    .line 285
    goto :goto_d

    .line 286
    :cond_e
    move-object/from16 v27, v8

    .line 287
    .line 288
    :goto_e
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 289
    .line 290
    .line 291
    move-result v2

    .line 292
    if-nez v2, :cond_f

    .line 293
    .line 294
    const/4 v0, 0x0

    .line 295
    goto :goto_10

    .line 296
    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 297
    .line 298
    .line 299
    move-result v2

    .line 300
    new-instance v8, Ljava/util/ArrayList;

    .line 301
    .line 302
    invoke-direct {v8, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 303
    .line 304
    .line 305
    const/4 v15, 0x0

    .line 306
    :goto_f
    if-eq v15, v2, :cond_10

    .line 307
    .line 308
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    .line 314
    .line 315
    add-int/lit8 v15, v15, 0x1

    .line 316
    .line 317
    move-object/from16 v0, p1

    .line 318
    .line 319
    goto :goto_f

    .line 320
    :cond_10
    move-object v0, v8

    .line 321
    :goto_10
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v21

    .line 325
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v22

    .line 329
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v23

    .line 333
    new-instance v28, Lcom/transsion/shorttv/bean/OperateItem;

    .line 334
    .line 335
    move-object/from16 v2, v28

    .line 336
    .line 337
    const/16 v20, 0x0

    .line 338
    .line 339
    const/high16 v24, 0x20000

    .line 340
    .line 341
    const/16 v25, 0x0

    .line 342
    .line 343
    move-object v8, v9

    .line 344
    move-object v9, v10

    .line 345
    move-object v10, v1

    .line 346
    move-object/from16 v15, v26

    .line 347
    .line 348
    move-object/from16 v16, v18

    .line 349
    .line 350
    move-object/from16 v17, v19

    .line 351
    .line 352
    move-object/from16 v18, v27

    .line 353
    .line 354
    move-object/from16 v19, v0

    .line 355
    .line 356
    invoke-direct/range {v2 .. v25}, Lcom/transsion/shorttv/bean/OperateItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lcom/transsion/shorttv/bean/BannerBean;Ljava/util/List;Ljava/util/List;Lcom/transsion/shorttv/bean/CustomData;Lcom/transsion/shorttv/bean/PlayListItem;Lcom/transsion/shorttv/bean/Subject;Ljava/lang/String;Lcom/transsion/shorttv/bean/SingleImagePage;Ljava/util/List;Lcom/transsion/shorttv/bean/RankingData;Lcom/transsion/shorttv/bean/RankingListData;Ljava/util/List;Ljava/util/List;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 357
    .line 358
    .line 359
    return-object v28
.end method

.method public final b(I)[Lcom/transsion/shorttv/bean/OperateItem;
    .locals 0

    .line 1
    new-array p1, p1, [Lcom/transsion/shorttv/bean/OperateItem;

    .line 2
    .line 3
    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/shorttv/bean/OperateItem$a;->a(Landroid/os/Parcel;)Lcom/transsion/shorttv/bean/OperateItem;

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
    invoke-virtual {p0, p1}, Lcom/transsion/shorttv/bean/OperateItem$a;->b(I)[Lcom/transsion/shorttv/bean/OperateItem;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
