.class public final enum Lcom/bytedance/adsdk/ugeno/core/Ym;
.super Ljava/lang/Enum;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/adsdk/ugeno/core/Ym;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Dq:Lcom/bytedance/adsdk/ugeno/core/Ym;

.field public static final enum EjP:Lcom/bytedance/adsdk/ugeno/core/Ym;

.field public static final enum Fmk:Lcom/bytedance/adsdk/ugeno/core/Ym;

.field public static final enum HiB:Lcom/bytedance/adsdk/ugeno/core/Ym;

.field public static final enum Jcg:Lcom/bytedance/adsdk/ugeno/core/Ym;

.field public static final enum RiZ:Lcom/bytedance/adsdk/ugeno/core/Ym;

.field public static final enum Sj:Lcom/bytedance/adsdk/ugeno/core/Ym;

.field public static final enum TEQ:Lcom/bytedance/adsdk/ugeno/core/Ym;

.field public static final enum TKC:Lcom/bytedance/adsdk/ugeno/core/Ym;

.field public static final enum TzV:Lcom/bytedance/adsdk/ugeno/core/Ym;

.field public static final enum Ym:Lcom/bytedance/adsdk/ugeno/core/Ym;

.field public static final enum Zq:Lcom/bytedance/adsdk/ugeno/core/Ym;

.field public static final enum aa:Lcom/bytedance/adsdk/ugeno/core/Ym;

.field public static final enum dNu:Lcom/bytedance/adsdk/ugeno/core/Ym;

.field private static final synthetic ib:[Lcom/bytedance/adsdk/ugeno/core/Ym;

.field public static final enum sP:Lcom/bytedance/adsdk/ugeno/core/Ym;

.field public static final enum sU:Lcom/bytedance/adsdk/ugeno/core/Ym;

.field public static final enum sef:Lcom/bytedance/adsdk/ugeno/core/Ym;

.field public static final enum uA:Lcom/bytedance/adsdk/ugeno/core/Ym;

.field public static final enum uvD:Lcom/bytedance/adsdk/ugeno/core/Ym;

.field public static final enum vS:Lcom/bytedance/adsdk/ugeno/core/Ym;


# instance fields
.field private dx:Ljava/lang/String;

.field private zR:I


# direct methods
.method static constructor <clinit>()V
    .locals 24

    .line 1
    new-instance v0, Lcom/bytedance/adsdk/ugeno/core/Ym;

    .line 2
    .line 3
    const-string v1, "UNKNOWN_EVENT"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v1, v2}, Lcom/bytedance/adsdk/ugeno/core/Ym;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/bytedance/adsdk/ugeno/core/Ym;->Sj:Lcom/bytedance/adsdk/ugeno/core/Ym;

    .line 10
    .line 11
    new-instance v1, Lcom/bytedance/adsdk/ugeno/core/Ym;

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    const-string v4, "onTap"

    .line 15
    .line 16
    const-string v5, "TAP_EVENT"

    .line 17
    .line 18
    invoke-direct {v1, v5, v3, v4, v3}, Lcom/bytedance/adsdk/ugeno/core/Ym;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    sput-object v1, Lcom/bytedance/adsdk/ugeno/core/Ym;->sP:Lcom/bytedance/adsdk/ugeno/core/Ym;

    .line 22
    .line 23
    new-instance v4, Lcom/bytedance/adsdk/ugeno/core/Ym;

    .line 24
    .line 25
    const/4 v5, 0x2

    .line 26
    const-string v6, "onLongTap"

    .line 27
    .line 28
    const-string v7, "LONG_TAP_EVENT"

    .line 29
    .line 30
    invoke-direct {v4, v7, v5, v6, v5}, Lcom/bytedance/adsdk/ugeno/core/Ym;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    sput-object v4, Lcom/bytedance/adsdk/ugeno/core/Ym;->TKC:Lcom/bytedance/adsdk/ugeno/core/Ym;

    .line 34
    .line 35
    new-instance v6, Lcom/bytedance/adsdk/ugeno/core/Ym;

    .line 36
    .line 37
    const/4 v7, 0x3

    .line 38
    const-string v8, "onShake"

    .line 39
    .line 40
    const-string v9, "SHAKE_EVENT"

    .line 41
    .line 42
    invoke-direct {v6, v9, v7, v8, v7}, Lcom/bytedance/adsdk/ugeno/core/Ym;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 43
    .line 44
    .line 45
    sput-object v6, Lcom/bytedance/adsdk/ugeno/core/Ym;->EjP:Lcom/bytedance/adsdk/ugeno/core/Ym;

    .line 46
    .line 47
    new-instance v8, Lcom/bytedance/adsdk/ugeno/core/Ym;

    .line 48
    .line 49
    const-string v9, "TWIST_EVENT"

    .line 50
    .line 51
    const/4 v10, 0x4

    .line 52
    const-string v11, "onTwist"

    .line 53
    .line 54
    const/16 v12, 0x12

    .line 55
    .line 56
    invoke-direct {v8, v9, v10, v11, v12}, Lcom/bytedance/adsdk/ugeno/core/Ym;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v8, Lcom/bytedance/adsdk/ugeno/core/Ym;->HiB:Lcom/bytedance/adsdk/ugeno/core/Ym;

    .line 60
    .line 61
    new-instance v9, Lcom/bytedance/adsdk/ugeno/core/Ym;

    .line 62
    .line 63
    const-string v11, "onSlide"

    .line 64
    .line 65
    const-string v13, "SLIDE_EVENT"

    .line 66
    .line 67
    const/4 v14, 0x5

    .line 68
    invoke-direct {v9, v13, v14, v11, v10}, Lcom/bytedance/adsdk/ugeno/core/Ym;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 69
    .line 70
    .line 71
    sput-object v9, Lcom/bytedance/adsdk/ugeno/core/Ym;->vS:Lcom/bytedance/adsdk/ugeno/core/Ym;

    .line 72
    .line 73
    new-instance v11, Lcom/bytedance/adsdk/ugeno/core/Ym;

    .line 74
    .line 75
    const-string v13, "onExposure"

    .line 76
    .line 77
    const-string v15, "EXPOSURE_EVENT"

    .line 78
    .line 79
    const/4 v10, 0x6

    .line 80
    invoke-direct {v11, v15, v10, v13, v14}, Lcom/bytedance/adsdk/ugeno/core/Ym;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 81
    .line 82
    .line 83
    sput-object v11, Lcom/bytedance/adsdk/ugeno/core/Ym;->Jcg:Lcom/bytedance/adsdk/ugeno/core/Ym;

    .line 84
    .line 85
    new-instance v13, Lcom/bytedance/adsdk/ugeno/core/Ym;

    .line 86
    .line 87
    const-string v15, "onScroll"

    .line 88
    .line 89
    const-string v14, "SCROLL_EVENT"

    .line 90
    .line 91
    const/4 v7, 0x7

    .line 92
    invoke-direct {v13, v14, v7, v15, v10}, Lcom/bytedance/adsdk/ugeno/core/Ym;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 93
    .line 94
    .line 95
    sput-object v13, Lcom/bytedance/adsdk/ugeno/core/Ym;->Dq:Lcom/bytedance/adsdk/ugeno/core/Ym;

    .line 96
    .line 97
    new-instance v14, Lcom/bytedance/adsdk/ugeno/core/Ym;

    .line 98
    .line 99
    const-string v15, "onPullToRefresh"

    .line 100
    .line 101
    const-string v10, "PULL_TO_REFRESH_EVENT"

    .line 102
    .line 103
    const/16 v5, 0x8

    .line 104
    .line 105
    invoke-direct {v14, v10, v5, v15, v7}, Lcom/bytedance/adsdk/ugeno/core/Ym;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 106
    .line 107
    .line 108
    sput-object v14, Lcom/bytedance/adsdk/ugeno/core/Ym;->uA:Lcom/bytedance/adsdk/ugeno/core/Ym;

    .line 109
    .line 110
    new-instance v10, Lcom/bytedance/adsdk/ugeno/core/Ym;

    .line 111
    .line 112
    const-string v15, "onLoadMore"

    .line 113
    .line 114
    const-string v7, "LOAD_MORE_EVENT"

    .line 115
    .line 116
    const/16 v3, 0x9

    .line 117
    .line 118
    invoke-direct {v10, v7, v3, v15, v5}, Lcom/bytedance/adsdk/ugeno/core/Ym;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 119
    .line 120
    .line 121
    sput-object v10, Lcom/bytedance/adsdk/ugeno/core/Ym;->TEQ:Lcom/bytedance/adsdk/ugeno/core/Ym;

    .line 122
    .line 123
    new-instance v7, Lcom/bytedance/adsdk/ugeno/core/Ym;

    .line 124
    .line 125
    const-string v15, "onTimer"

    .line 126
    .line 127
    const-string v5, "TIMER"

    .line 128
    .line 129
    const/16 v2, 0xa

    .line 130
    .line 131
    invoke-direct {v7, v5, v2, v15, v3}, Lcom/bytedance/adsdk/ugeno/core/Ym;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 132
    .line 133
    .line 134
    sput-object v7, Lcom/bytedance/adsdk/ugeno/core/Ym;->Ym:Lcom/bytedance/adsdk/ugeno/core/Ym;

    .line 135
    .line 136
    new-instance v5, Lcom/bytedance/adsdk/ugeno/core/Ym;

    .line 137
    .line 138
    const-string v15, "onDelay"

    .line 139
    .line 140
    const-string v3, "DELAY"

    .line 141
    .line 142
    const/16 v12, 0xb

    .line 143
    .line 144
    invoke-direct {v5, v3, v12, v15, v2}, Lcom/bytedance/adsdk/ugeno/core/Ym;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 145
    .line 146
    .line 147
    sput-object v5, Lcom/bytedance/adsdk/ugeno/core/Ym;->aa:Lcom/bytedance/adsdk/ugeno/core/Ym;

    .line 148
    .line 149
    new-instance v3, Lcom/bytedance/adsdk/ugeno/core/Ym;

    .line 150
    .line 151
    const-string v15, "onAnimation"

    .line 152
    .line 153
    const-string v2, "ANIMATION"

    .line 154
    .line 155
    move-object/from16 v16, v5

    .line 156
    .line 157
    const/16 v5, 0xc

    .line 158
    .line 159
    invoke-direct {v3, v2, v5, v15, v12}, Lcom/bytedance/adsdk/ugeno/core/Ym;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 160
    .line 161
    .line 162
    sput-object v3, Lcom/bytedance/adsdk/ugeno/core/Ym;->Fmk:Lcom/bytedance/adsdk/ugeno/core/Ym;

    .line 163
    .line 164
    new-instance v2, Lcom/bytedance/adsdk/ugeno/core/Ym;

    .line 165
    .line 166
    const-string v15, "onVideoProgress"

    .line 167
    .line 168
    const-string v12, "VIDEO_PROGRESS"

    .line 169
    .line 170
    move-object/from16 v17, v3

    .line 171
    .line 172
    const/16 v3, 0xd

    .line 173
    .line 174
    invoke-direct {v2, v12, v3, v15, v5}, Lcom/bytedance/adsdk/ugeno/core/Ym;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 175
    .line 176
    .line 177
    sput-object v2, Lcom/bytedance/adsdk/ugeno/core/Ym;->sef:Lcom/bytedance/adsdk/ugeno/core/Ym;

    .line 178
    .line 179
    new-instance v12, Lcom/bytedance/adsdk/ugeno/core/Ym;

    .line 180
    .line 181
    const-string v15, "onVideoPause"

    .line 182
    .line 183
    const-string v5, "VIDEO_PAUSE"

    .line 184
    .line 185
    move-object/from16 v18, v2

    .line 186
    .line 187
    const/16 v2, 0xe

    .line 188
    .line 189
    invoke-direct {v12, v5, v2, v15, v3}, Lcom/bytedance/adsdk/ugeno/core/Ym;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 190
    .line 191
    .line 192
    sput-object v12, Lcom/bytedance/adsdk/ugeno/core/Ym;->Zq:Lcom/bytedance/adsdk/ugeno/core/Ym;

    .line 193
    .line 194
    new-instance v5, Lcom/bytedance/adsdk/ugeno/core/Ym;

    .line 195
    .line 196
    const-string v15, "onVideoResume"

    .line 197
    .line 198
    const-string v3, "VIDEO_RESUME"

    .line 199
    .line 200
    move-object/from16 v19, v12

    .line 201
    .line 202
    const/16 v12, 0xf

    .line 203
    .line 204
    invoke-direct {v5, v3, v12, v15, v2}, Lcom/bytedance/adsdk/ugeno/core/Ym;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 205
    .line 206
    .line 207
    sput-object v5, Lcom/bytedance/adsdk/ugeno/core/Ym;->uvD:Lcom/bytedance/adsdk/ugeno/core/Ym;

    .line 208
    .line 209
    new-instance v3, Lcom/bytedance/adsdk/ugeno/core/Ym;

    .line 210
    .line 211
    const-string v15, "onVideoFinish"

    .line 212
    .line 213
    const-string v2, "VIDEO_FINISH"

    .line 214
    .line 215
    move-object/from16 v20, v5

    .line 216
    .line 217
    const/16 v5, 0x10

    .line 218
    .line 219
    invoke-direct {v3, v2, v5, v15, v12}, Lcom/bytedance/adsdk/ugeno/core/Ym;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 220
    .line 221
    .line 222
    sput-object v3, Lcom/bytedance/adsdk/ugeno/core/Ym;->dNu:Lcom/bytedance/adsdk/ugeno/core/Ym;

    .line 223
    .line 224
    new-instance v2, Lcom/bytedance/adsdk/ugeno/core/Ym;

    .line 225
    .line 226
    const-string v15, "onVideoPlay"

    .line 227
    .line 228
    const-string v12, "VIDEO_PLAY"

    .line 229
    .line 230
    move-object/from16 v21, v3

    .line 231
    .line 232
    const/16 v3, 0x11

    .line 233
    .line 234
    invoke-direct {v2, v12, v3, v15, v5}, Lcom/bytedance/adsdk/ugeno/core/Ym;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 235
    .line 236
    .line 237
    sput-object v2, Lcom/bytedance/adsdk/ugeno/core/Ym;->TzV:Lcom/bytedance/adsdk/ugeno/core/Ym;

    .line 238
    .line 239
    new-instance v12, Lcom/bytedance/adsdk/ugeno/core/Ym;

    .line 240
    .line 241
    const-string v15, "DOWN_EVENT"

    .line 242
    .line 243
    const-string v5, "onDown"

    .line 244
    .line 245
    move-object/from16 v22, v2

    .line 246
    .line 247
    const/16 v2, 0x12

    .line 248
    .line 249
    invoke-direct {v12, v15, v2, v5, v3}, Lcom/bytedance/adsdk/ugeno/core/Ym;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 250
    .line 251
    .line 252
    sput-object v12, Lcom/bytedance/adsdk/ugeno/core/Ym;->RiZ:Lcom/bytedance/adsdk/ugeno/core/Ym;

    .line 253
    .line 254
    new-instance v2, Lcom/bytedance/adsdk/ugeno/core/Ym;

    .line 255
    .line 256
    const-string v5, "onRenderSuccess"

    .line 257
    .line 258
    const/16 v15, 0x16

    .line 259
    .line 260
    const-string v3, "RENDER_SUCCESS"

    .line 261
    .line 262
    move-object/from16 v23, v12

    .line 263
    .line 264
    const/16 v12, 0x13

    .line 265
    .line 266
    invoke-direct {v2, v3, v12, v5, v15}, Lcom/bytedance/adsdk/ugeno/core/Ym;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 267
    .line 268
    .line 269
    sput-object v2, Lcom/bytedance/adsdk/ugeno/core/Ym;->sU:Lcom/bytedance/adsdk/ugeno/core/Ym;

    .line 270
    .line 271
    const/16 v3, 0x14

    .line 272
    .line 273
    new-array v3, v3, [Lcom/bytedance/adsdk/ugeno/core/Ym;

    .line 274
    .line 275
    const/4 v5, 0x0

    .line 276
    aput-object v0, v3, v5

    .line 277
    .line 278
    const/4 v0, 0x1

    .line 279
    aput-object v1, v3, v0

    .line 280
    .line 281
    const/4 v0, 0x2

    .line 282
    aput-object v4, v3, v0

    .line 283
    .line 284
    const/4 v0, 0x3

    .line 285
    aput-object v6, v3, v0

    .line 286
    .line 287
    const/4 v0, 0x4

    .line 288
    aput-object v8, v3, v0

    .line 289
    .line 290
    const/4 v0, 0x5

    .line 291
    aput-object v9, v3, v0

    .line 292
    .line 293
    const/4 v0, 0x6

    .line 294
    aput-object v11, v3, v0

    .line 295
    .line 296
    const/4 v0, 0x7

    .line 297
    aput-object v13, v3, v0

    .line 298
    .line 299
    const/16 v0, 0x8

    .line 300
    .line 301
    aput-object v14, v3, v0

    .line 302
    .line 303
    const/16 v0, 0x9

    .line 304
    .line 305
    aput-object v10, v3, v0

    .line 306
    .line 307
    const/16 v0, 0xa

    .line 308
    .line 309
    aput-object v7, v3, v0

    .line 310
    .line 311
    const/16 v0, 0xb

    .line 312
    .line 313
    aput-object v16, v3, v0

    .line 314
    .line 315
    const/16 v0, 0xc

    .line 316
    .line 317
    aput-object v17, v3, v0

    .line 318
    .line 319
    const/16 v0, 0xd

    .line 320
    .line 321
    aput-object v18, v3, v0

    .line 322
    .line 323
    const/16 v0, 0xe

    .line 324
    .line 325
    aput-object v19, v3, v0

    .line 326
    .line 327
    const/16 v0, 0xf

    .line 328
    .line 329
    aput-object v20, v3, v0

    .line 330
    .line 331
    const/16 v0, 0x10

    .line 332
    .line 333
    aput-object v21, v3, v0

    .line 334
    .line 335
    const/16 v0, 0x11

    .line 336
    .line 337
    aput-object v22, v3, v0

    .line 338
    .line 339
    const/16 v0, 0x12

    .line 340
    .line 341
    aput-object v23, v3, v0

    .line 342
    .line 343
    aput-object v2, v3, v12

    .line 344
    .line 345
    sput-object v3, Lcom/bytedance/adsdk/ugeno/core/Ym;->ib:[Lcom/bytedance/adsdk/ugeno/core/Ym;

    .line 346
    .line 347
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/bytedance/adsdk/ugeno/core/Ym;->dx:Ljava/lang/String;

    .line 5
    .line 6
    iput p4, p0, Lcom/bytedance/adsdk/ugeno/core/Ym;->zR:I

    .line 7
    .line 8
    return-void
.end method

.method public static Sj(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/core/Ym;
    .locals 5

    .line 2
    invoke-static {}, Lcom/bytedance/adsdk/ugeno/core/Ym;->values()[Lcom/bytedance/adsdk/ugeno/core/Ym;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 3
    iget-object v4, v3, Lcom/bytedance/adsdk/ugeno/core/Ym;->dx:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_1
    sget-object p0, Lcom/bytedance/adsdk/ugeno/core/Ym;->Sj:Lcom/bytedance/adsdk/ugeno/core/Ym;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/core/Ym;
    .locals 1

    .line 1
    const-class v0, Lcom/bytedance/adsdk/ugeno/core/Ym;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/bytedance/adsdk/ugeno/core/Ym;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/bytedance/adsdk/ugeno/core/Ym;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/adsdk/ugeno/core/Ym;->ib:[Lcom/bytedance/adsdk/ugeno/core/Ym;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/bytedance/adsdk/ugeno/core/Ym;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/bytedance/adsdk/ugeno/core/Ym;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public Sj()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/adsdk/ugeno/core/Ym;->zR:I

    return v0
.end method
