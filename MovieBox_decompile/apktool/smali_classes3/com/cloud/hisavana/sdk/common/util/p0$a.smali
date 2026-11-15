.class public final Lcom/cloud/hisavana/sdk/common/util/p0$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/common/util/p0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/util/p0$a;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/cloud/hisavana/sdk/common/util/p0$a;ZZZZLcom/cloud/hisavana/sdk/common/util/p0$b;Z)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/cloud/hisavana/sdk/common/util/p0$a;->b(ZZZZLcom/cloud/hisavana/sdk/common/util/p0$b;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final b(ZZZZLcom/cloud/hisavana/sdk/common/util/p0$b;Z)V
    .locals 0

    .line 1
    if-eqz p3, :cond_2

    .line 2
    .line 3
    if-eqz p2, :cond_2

    .line 4
    .line 5
    if-eqz p1, :cond_2

    .line 6
    .line 7
    if-eqz p4, :cond_1

    .line 8
    .line 9
    if-eqz p6, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/16 p1, 0xfa

    .line 14
    .line 15
    :goto_0
    if-eqz p5, :cond_2

    .line 16
    .line 17
    invoke-interface {p5, p1}, Lcom/cloud/hisavana/sdk/common/util/p0$b;->b(I)V

    .line 18
    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    if-eqz p5, :cond_2

    .line 22
    .line 23
    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->MAIN_VIDEO_DOWNLOAD_FAIL_ERROR:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 24
    .line 25
    const-string p2, "MAIN_VIDEO_DOWNLOAD_FAIL_ERROR"

    .line 26
    .line 27
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-interface {p5, p1}, Lcom/cloud/hisavana/sdk/common/util/p0$b;->a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 31
    .line 32
    .line 33
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public final c(Lcom/cloud/hisavana/sdk/common/util/p0$b;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 19

    .line 1
    move-object/from16 v8, p1

    .line 2
    .line 3
    move-object/from16 v9, p2

    .line 4
    .line 5
    if-nez v9, :cond_1

    .line 6
    .line 7
    if-eqz v8, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_AD_VAST_MATERIAL_DOWNLOAD_IS_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 10
    .line 11
    const-string v1, "ERROR_AD_VAST_MATERIAL_DOWNLOAD_IS_NULL"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {v8, v0}, Lcom/cloud/hisavana/sdk/common/util/p0$b;->a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void

    .line 20
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getVideoInfo()Lcom/cloud/hisavana/sdk/common/bean/VastData;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const/4 v1, 0x0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->getMainAd()Lcom/cloud/hisavana/sdk/common/bean/VastMedia;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/common/bean/VastMedia;->getMediaResource()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    move-object v10, v2

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    move-object v10, v1

    .line 40
    :goto_0
    if-eqz v0, :cond_3

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->getIcon()Lcom/cloud/hisavana/sdk/common/bean/VastIcon;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    if-eqz v2, :cond_3

    .line 47
    .line 48
    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/common/bean/VastIcon;->getIconResource()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    move-object v11, v2

    .line 53
    goto :goto_1

    .line 54
    :cond_3
    move-object v11, v1

    .line 55
    :goto_1
    if-eqz v0, :cond_4

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->getVideoMask()Lcom/cloud/hisavana/sdk/common/bean/VideoMask;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    if-eqz v0, :cond_4

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/VideoMask;->getResource()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    :cond_4
    move-object v12, v1

    .line 68
    new-instance v13, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 69
    .line 70
    invoke-direct {v13}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 71
    .line 72
    .line 73
    new-instance v14, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 74
    .line 75
    invoke-direct {v14}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 76
    .line 77
    .line 78
    new-instance v15, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 79
    .line 80
    invoke-direct {v15}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 81
    .line 82
    .line 83
    new-instance v7, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 84
    .line 85
    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 86
    .line 87
    .line 88
    new-instance v6, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 89
    .line 90
    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_6

    .line 98
    .line 99
    if-eqz v8, :cond_5

    .line 100
    .line 101
    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->NO_MAIN_VIDEO_DATA_ERROR:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 102
    .line 103
    const-string v1, "NO_MAIN_VIDEO_DATA_ERROR"

    .line 104
    .line 105
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-interface {v8, v0}, Lcom/cloud/hisavana/sdk/common/util/p0$b;->a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 109
    .line 110
    .line 111
    :cond_5
    return-void

    .line 112
    :cond_6
    const/4 v0, 0x0

    .line 113
    const/4 v5, 0x1

    .line 114
    if-eqz v10, :cond_8

    .line 115
    .line 116
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-ne v1, v5, :cond_7

    .line 121
    .line 122
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getAdType()I

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    invoke-static {v1}, Lcom/cloud/hisavana/sdk/common/constant/Constants;->a(I)Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-eqz v1, :cond_7

    .line 131
    .line 132
    iput-boolean v5, v14, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 133
    .line 134
    iput-boolean v5, v7, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 135
    .line 136
    iput-boolean v0, v6, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 137
    .line 138
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .line 146
    .line 147
    const-string v2, "jump for real-time ad, do not download video, adId="

    .line 148
    .line 149
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdCreativeId()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    const-string v2, ", url="

    .line 160
    .line 161
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    const-string v2, "VastMaterialDownloadUtil"

    .line 172
    .line 173
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    move-object/from16 v18, v7

    .line 177
    .line 178
    move-object/from16 v16, v12

    .line 179
    .line 180
    move v12, v5

    .line 181
    move-object v7, v6

    .line 182
    goto :goto_2

    .line 183
    :cond_7
    new-instance v4, Lcom/cloud/hisavana/sdk/common/util/p0$a$a;

    .line 184
    .line 185
    move-object v0, v4

    .line 186
    move-object v1, v10

    .line 187
    move-object v2, v14

    .line 188
    move-object v3, v13

    .line 189
    move-object v8, v4

    .line 190
    move-object v4, v15

    .line 191
    move-object/from16 v16, v12

    .line 192
    .line 193
    move v12, v5

    .line 194
    move-object v5, v7

    .line 195
    move-object/from16 v17, v6

    .line 196
    .line 197
    move-object/from16 v6, p1

    .line 198
    .line 199
    move-object/from16 v18, v7

    .line 200
    .line 201
    move-object/from16 v7, v17

    .line 202
    .line 203
    invoke-direct/range {v0 .. v7}, Lcom/cloud/hisavana/sdk/common/util/p0$a$a;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/cloud/hisavana/sdk/common/util/p0$b;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    .line 204
    .line 205
    .line 206
    invoke-static {v10, v9, v12, v8}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->l(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ZLcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V

    .line 207
    .line 208
    .line 209
    goto :goto_2

    .line 210
    :cond_8
    move-object/from16 v17, v6

    .line 211
    .line 212
    move-object/from16 v18, v7

    .line 213
    .line 214
    move-object/from16 v16, v12

    .line 215
    .line 216
    move v12, v5

    .line 217
    iput-boolean v12, v14, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 218
    .line 219
    move-object/from16 v7, v17

    .line 220
    .line 221
    iput-boolean v0, v7, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 222
    .line 223
    :goto_2
    if-eqz v11, :cond_9

    .line 224
    .line 225
    new-instance v8, Lcom/cloud/hisavana/sdk/common/util/p0$a$b;

    .line 226
    .line 227
    move-object v0, v8

    .line 228
    move-object v1, v13

    .line 229
    move-object v2, v14

    .line 230
    move-object v3, v15

    .line 231
    move-object/from16 v4, v18

    .line 232
    .line 233
    move-object/from16 v5, p1

    .line 234
    .line 235
    move-object v6, v7

    .line 236
    invoke-direct/range {v0 .. v6}, Lcom/cloud/hisavana/sdk/common/util/p0$a$b;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/cloud/hisavana/sdk/common/util/p0$b;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    .line 237
    .line 238
    .line 239
    const/16 v0, 0xb

    .line 240
    .line 241
    invoke-static {v11, v9, v0, v12, v8}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->k(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;IZLcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V

    .line 242
    .line 243
    .line 244
    goto :goto_3

    .line 245
    :cond_9
    iput-boolean v12, v13, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 246
    .line 247
    :goto_3
    if-eqz v16, :cond_a

    .line 248
    .line 249
    new-instance v8, Lcom/cloud/hisavana/sdk/common/util/p0$a$c;

    .line 250
    .line 251
    move-object v0, v8

    .line 252
    move-object v1, v15

    .line 253
    move-object v2, v14

    .line 254
    move-object v3, v13

    .line 255
    move-object/from16 v4, v18

    .line 256
    .line 257
    move-object/from16 v5, p1

    .line 258
    .line 259
    move-object v6, v7

    .line 260
    invoke-direct/range {v0 .. v6}, Lcom/cloud/hisavana/sdk/common/util/p0$a$c;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/cloud/hisavana/sdk/common/util/p0$b;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    .line 261
    .line 262
    .line 263
    const/16 v0, 0xc

    .line 264
    .line 265
    move-object/from16 v1, v16

    .line 266
    .line 267
    invoke-static {v1, v9, v0, v12, v8}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->k(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;IZLcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V

    .line 268
    .line 269
    .line 270
    goto :goto_4

    .line 271
    :cond_a
    iput-boolean v12, v15, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 272
    .line 273
    iget-boolean v1, v14, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 274
    .line 275
    iget-boolean v2, v13, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 276
    .line 277
    move-object/from16 v0, v18

    .line 278
    .line 279
    iget-boolean v4, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 280
    .line 281
    iget-boolean v6, v7, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 282
    .line 283
    const/4 v3, 0x1

    .line 284
    move-object/from16 v0, p0

    .line 285
    .line 286
    move-object/from16 v5, p1

    .line 287
    .line 288
    invoke-direct/range {v0 .. v6}, Lcom/cloud/hisavana/sdk/common/util/p0$a;->b(ZZZZLcom/cloud/hisavana/sdk/common/util/p0$b;Z)V

    .line 289
    .line 290
    .line 291
    :goto_4
    return-void
.end method
