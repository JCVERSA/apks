.class public final Lcom/google/android/exoplayer2/source/rtsp/j;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Lcom/google/android/exoplayer2/p1;

.field public final d:Lcom/google/common/collect/ImmutableMap;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/p1;IILjava/util/Map;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/google/android/exoplayer2/source/rtsp/j;->a:I

    .line 5
    .line 6
    iput p3, p0, Lcom/google/android/exoplayer2/source/rtsp/j;->b:I

    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/j;->c:Lcom/google/android/exoplayer2/p1;

    .line 9
    .line 10
    invoke-static {p4}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/j;->d:Lcom/google/common/collect/ImmutableMap;

    .line 15
    .line 16
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/common/base/a;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 6
    .line 7
    .line 8
    const/4 v1, -0x1

    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    sparse-switch v2, :sswitch_data_0

    .line 14
    .line 15
    .line 16
    goto/16 :goto_0

    .line 17
    .line 18
    :sswitch_0
    const-string v2, "H263-2000"

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    goto/16 :goto_0

    .line 27
    .line 28
    :cond_0
    const/16 v1, 0xf

    .line 29
    .line 30
    goto/16 :goto_0

    .line 31
    .line 32
    :sswitch_1
    const-string v2, "H263-1998"

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    goto/16 :goto_0

    .line 41
    .line 42
    :cond_1
    const/16 v1, 0xe

    .line 43
    .line 44
    goto/16 :goto_0

    .line 45
    .line 46
    :sswitch_2
    const-string v2, "MP4V-ES"

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_2

    .line 53
    .line 54
    goto/16 :goto_0

    .line 55
    .line 56
    :cond_2
    const/16 v1, 0xd

    .line 57
    .line 58
    goto/16 :goto_0

    .line 59
    .line 60
    :sswitch_3
    const-string v2, "AMR-WB"

    .line 61
    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-nez v0, :cond_3

    .line 67
    .line 68
    goto/16 :goto_0

    .line 69
    .line 70
    :cond_3
    const/16 v1, 0xc

    .line 71
    .line 72
    goto/16 :goto_0

    .line 73
    .line 74
    :sswitch_4
    const-string v2, "PCMU"

    .line 75
    .line 76
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-nez v0, :cond_4

    .line 81
    .line 82
    goto/16 :goto_0

    .line 83
    .line 84
    :cond_4
    const/16 v1, 0xb

    .line 85
    .line 86
    goto/16 :goto_0

    .line 87
    .line 88
    :sswitch_5
    const-string v2, "PCMA"

    .line 89
    .line 90
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-nez v0, :cond_5

    .line 95
    .line 96
    goto/16 :goto_0

    .line 97
    .line 98
    :cond_5
    const/16 v1, 0xa

    .line 99
    .line 100
    goto/16 :goto_0

    .line 101
    .line 102
    :sswitch_6
    const-string v2, "OPUS"

    .line 103
    .line 104
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-nez v0, :cond_6

    .line 109
    .line 110
    goto/16 :goto_0

    .line 111
    .line 112
    :cond_6
    const/16 v1, 0x9

    .line 113
    .line 114
    goto/16 :goto_0

    .line 115
    .line 116
    :sswitch_7
    const-string v2, "H265"

    .line 117
    .line 118
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-nez v0, :cond_7

    .line 123
    .line 124
    goto/16 :goto_0

    .line 125
    .line 126
    :cond_7
    const/16 v1, 0x8

    .line 127
    .line 128
    goto/16 :goto_0

    .line 129
    .line 130
    :sswitch_8
    const-string v2, "H264"

    .line 131
    .line 132
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-nez v0, :cond_8

    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_8
    const/4 v1, 0x7

    .line 140
    goto :goto_0

    .line 141
    :sswitch_9
    const-string v2, "VP9"

    .line 142
    .line 143
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-nez v0, :cond_9

    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_9
    const/4 v1, 0x6

    .line 151
    goto :goto_0

    .line 152
    :sswitch_a
    const-string v2, "VP8"

    .line 153
    .line 154
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    if-nez v0, :cond_a

    .line 159
    .line 160
    goto :goto_0

    .line 161
    :cond_a
    const/4 v1, 0x5

    .line 162
    goto :goto_0

    .line 163
    :sswitch_b
    const-string v2, "L16"

    .line 164
    .line 165
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    if-nez v0, :cond_b

    .line 170
    .line 171
    goto :goto_0

    .line 172
    :cond_b
    const/4 v1, 0x4

    .line 173
    goto :goto_0

    .line 174
    :sswitch_c
    const-string v2, "AMR"

    .line 175
    .line 176
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    if-nez v0, :cond_c

    .line 181
    .line 182
    goto :goto_0

    .line 183
    :cond_c
    const/4 v1, 0x3

    .line 184
    goto :goto_0

    .line 185
    :sswitch_d
    const-string v2, "AC3"

    .line 186
    .line 187
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    if-nez v0, :cond_d

    .line 192
    .line 193
    goto :goto_0

    .line 194
    :cond_d
    const/4 v1, 0x2

    .line 195
    goto :goto_0

    .line 196
    :sswitch_e
    const-string v2, "L8"

    .line 197
    .line 198
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    if-nez v0, :cond_e

    .line 203
    .line 204
    goto :goto_0

    .line 205
    :cond_e
    const/4 v1, 0x1

    .line 206
    goto :goto_0

    .line 207
    :sswitch_f
    const-string v2, "MPEG4-GENERIC"

    .line 208
    .line 209
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    if-nez v0, :cond_f

    .line 214
    .line 215
    goto :goto_0

    .line 216
    :cond_f
    const/4 v1, 0x0

    .line 217
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 218
    .line 219
    .line 220
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 221
    .line 222
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    throw v0

    .line 226
    :pswitch_0
    const-string p0, "video/3gpp"

    .line 227
    .line 228
    return-object p0

    .line 229
    :pswitch_1
    const-string p0, "video/mp4v-es"

    .line 230
    .line 231
    return-object p0

    .line 232
    :pswitch_2
    const-string p0, "audio/amr-wb"

    .line 233
    .line 234
    return-object p0

    .line 235
    :pswitch_3
    const-string p0, "audio/g711-mlaw"

    .line 236
    .line 237
    return-object p0

    .line 238
    :pswitch_4
    const-string p0, "audio/g711-alaw"

    .line 239
    .line 240
    return-object p0

    .line 241
    :pswitch_5
    const-string p0, "audio/opus"

    .line 242
    .line 243
    return-object p0

    .line 244
    :pswitch_6
    const-string p0, "video/hevc"

    .line 245
    .line 246
    return-object p0

    .line 247
    :pswitch_7
    const-string p0, "video/avc"

    .line 248
    .line 249
    return-object p0

    .line 250
    :pswitch_8
    const-string p0, "video/x-vnd.on2.vp9"

    .line 251
    .line 252
    return-object p0

    .line 253
    :pswitch_9
    const-string p0, "video/x-vnd.on2.vp8"

    .line 254
    .line 255
    return-object p0

    .line 256
    :pswitch_a
    const-string p0, "audio/3gpp"

    .line 257
    .line 258
    return-object p0

    .line 259
    :pswitch_b
    const-string p0, "audio/ac3"

    .line 260
    .line 261
    return-object p0

    .line 262
    :pswitch_c
    const-string p0, "audio/raw"

    .line 263
    .line 264
    return-object p0

    .line 265
    :pswitch_d
    const-string p0, "audio/mp4a-latm"

    .line 266
    .line 267
    return-object p0

    .line 268
    nop

    .line 269
    :sswitch_data_0
    .sparse-switch
        -0x7290cac7 -> :sswitch_f
        0x96c -> :sswitch_e
        0xfc51 -> :sswitch_d
        0xfda6 -> :sswitch_c
        0x12371 -> :sswitch_b
        0x14cbe -> :sswitch_a
        0x14cbf -> :sswitch_9
        0x217d28 -> :sswitch_8
        0x217d29 -> :sswitch_7
        0x25203f -> :sswitch_6
        0x2562c7 -> :sswitch_5
        0x2562db -> :sswitch_4
        0x734e0c52 -> :sswitch_3
        0x74c813f6 -> :sswitch_2
        0x7f62e82d -> :sswitch_1
        0x7f6339a4 -> :sswitch_0
    .end sparse-switch

    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_c
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static b(Ljava/lang/String;)I
    .locals 2

    .line 1
    const-string v0, "L8"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    const-string v1, "L16"

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 21
    :goto_1
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-eqz p0, :cond_2

    .line 29
    .line 30
    const/4 p0, 0x3

    .line 31
    goto :goto_2

    .line 32
    :cond_2
    const/high16 p0, 0x10000000

    .line 33
    .line 34
    :goto_2
    return p0
.end method

.method public static c(Lcom/google/android/exoplayer2/source/rtsp/a;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/a;->j:Lcom/google/android/exoplayer2/source/rtsp/a$c;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/a$c;->b:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {p0}, Lcom/google/common/base/a;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 12
    .line 13
    .line 14
    const/4 v2, -0x1

    .line 15
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    sparse-switch v3, :sswitch_data_0

    .line 20
    .line 21
    .line 22
    goto/16 :goto_0

    .line 23
    .line 24
    :sswitch_0
    const-string v3, "H263-2000"

    .line 25
    .line 26
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-nez p0, :cond_0

    .line 31
    .line 32
    goto/16 :goto_0

    .line 33
    .line 34
    :cond_0
    const/16 v2, 0xf

    .line 35
    .line 36
    goto/16 :goto_0

    .line 37
    .line 38
    :sswitch_1
    const-string v3, "H263-1998"

    .line 39
    .line 40
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    if-nez p0, :cond_1

    .line 45
    .line 46
    goto/16 :goto_0

    .line 47
    .line 48
    :cond_1
    const/16 v2, 0xe

    .line 49
    .line 50
    goto/16 :goto_0

    .line 51
    .line 52
    :sswitch_2
    const-string v3, "MP4V-ES"

    .line 53
    .line 54
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    if-nez p0, :cond_2

    .line 59
    .line 60
    goto/16 :goto_0

    .line 61
    .line 62
    :cond_2
    const/16 v2, 0xd

    .line 63
    .line 64
    goto/16 :goto_0

    .line 65
    .line 66
    :sswitch_3
    const-string v3, "AMR-WB"

    .line 67
    .line 68
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    if-nez p0, :cond_3

    .line 73
    .line 74
    goto/16 :goto_0

    .line 75
    .line 76
    :cond_3
    const/16 v2, 0xc

    .line 77
    .line 78
    goto/16 :goto_0

    .line 79
    .line 80
    :sswitch_4
    const-string v3, "PCMU"

    .line 81
    .line 82
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result p0

    .line 86
    if-nez p0, :cond_4

    .line 87
    .line 88
    goto/16 :goto_0

    .line 89
    .line 90
    :cond_4
    const/16 v2, 0xb

    .line 91
    .line 92
    goto/16 :goto_0

    .line 93
    .line 94
    :sswitch_5
    const-string v3, "PCMA"

    .line 95
    .line 96
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result p0

    .line 100
    if-nez p0, :cond_5

    .line 101
    .line 102
    goto/16 :goto_0

    .line 103
    .line 104
    :cond_5
    const/16 v2, 0xa

    .line 105
    .line 106
    goto/16 :goto_0

    .line 107
    .line 108
    :sswitch_6
    const-string v3, "OPUS"

    .line 109
    .line 110
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result p0

    .line 114
    if-nez p0, :cond_6

    .line 115
    .line 116
    goto/16 :goto_0

    .line 117
    .line 118
    :cond_6
    const/16 v2, 0x9

    .line 119
    .line 120
    goto/16 :goto_0

    .line 121
    .line 122
    :sswitch_7
    const-string v3, "H265"

    .line 123
    .line 124
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result p0

    .line 128
    if-nez p0, :cond_7

    .line 129
    .line 130
    goto/16 :goto_0

    .line 131
    .line 132
    :cond_7
    const/16 v2, 0x8

    .line 133
    .line 134
    goto/16 :goto_0

    .line 135
    .line 136
    :sswitch_8
    const-string v3, "H264"

    .line 137
    .line 138
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result p0

    .line 142
    if-nez p0, :cond_8

    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_8
    const/4 v2, 0x7

    .line 146
    goto :goto_0

    .line 147
    :sswitch_9
    const-string v3, "VP9"

    .line 148
    .line 149
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result p0

    .line 153
    if-nez p0, :cond_9

    .line 154
    .line 155
    goto :goto_0

    .line 156
    :cond_9
    const/4 v2, 0x6

    .line 157
    goto :goto_0

    .line 158
    :sswitch_a
    const-string v3, "VP8"

    .line 159
    .line 160
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result p0

    .line 164
    if-nez p0, :cond_a

    .line 165
    .line 166
    goto :goto_0

    .line 167
    :cond_a
    const/4 v2, 0x5

    .line 168
    goto :goto_0

    .line 169
    :sswitch_b
    const-string v3, "L16"

    .line 170
    .line 171
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result p0

    .line 175
    if-nez p0, :cond_b

    .line 176
    .line 177
    goto :goto_0

    .line 178
    :cond_b
    const/4 v2, 0x4

    .line 179
    goto :goto_0

    .line 180
    :sswitch_c
    const-string v3, "AMR"

    .line 181
    .line 182
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result p0

    .line 186
    if-nez p0, :cond_c

    .line 187
    .line 188
    goto :goto_0

    .line 189
    :cond_c
    const/4 v2, 0x3

    .line 190
    goto :goto_0

    .line 191
    :sswitch_d
    const-string v3, "AC3"

    .line 192
    .line 193
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result p0

    .line 197
    if-nez p0, :cond_d

    .line 198
    .line 199
    goto :goto_0

    .line 200
    :cond_d
    const/4 v2, 0x2

    .line 201
    goto :goto_0

    .line 202
    :sswitch_e
    const-string v3, "L8"

    .line 203
    .line 204
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result p0

    .line 208
    if-nez p0, :cond_e

    .line 209
    .line 210
    goto :goto_0

    .line 211
    :cond_e
    move v2, v0

    .line 212
    goto :goto_0

    .line 213
    :sswitch_f
    const-string v3, "MPEG4-GENERIC"

    .line 214
    .line 215
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result p0

    .line 219
    if-nez p0, :cond_f

    .line 220
    .line 221
    goto :goto_0

    .line 222
    :cond_f
    move v2, v1

    .line 223
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 224
    .line 225
    .line 226
    return v1

    .line 227
    :pswitch_0
    return v0

    .line 228
    nop

    .line 229
    :sswitch_data_0
    .sparse-switch
        -0x7290cac7 -> :sswitch_f
        0x96c -> :sswitch_e
        0xfc51 -> :sswitch_d
        0xfda6 -> :sswitch_c
        0x12371 -> :sswitch_b
        0x14cbe -> :sswitch_a
        0x14cbf -> :sswitch_9
        0x217d28 -> :sswitch_8
        0x217d29 -> :sswitch_7
        0x25203f -> :sswitch_6
        0x2562c7 -> :sswitch_5
        0x2562db -> :sswitch_4
        0x734e0c52 -> :sswitch_3
        0x74c813f6 -> :sswitch_2
        0x7f62e82d -> :sswitch_1
        0x7f6339a4 -> :sswitch_0
    .end sparse-switch

    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-class v3, Lcom/google/android/exoplayer2/source/rtsp/j;

    .line 13
    .line 14
    if-eq v3, v2, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/source/rtsp/j;

    .line 18
    .line 19
    iget v2, p0, Lcom/google/android/exoplayer2/source/rtsp/j;->a:I

    .line 20
    .line 21
    iget v3, p1, Lcom/google/android/exoplayer2/source/rtsp/j;->a:I

    .line 22
    .line 23
    if-ne v2, v3, :cond_2

    .line 24
    .line 25
    iget v2, p0, Lcom/google/android/exoplayer2/source/rtsp/j;->b:I

    .line 26
    .line 27
    iget v3, p1, Lcom/google/android/exoplayer2/source/rtsp/j;->b:I

    .line 28
    .line 29
    if-ne v2, v3, :cond_2

    .line 30
    .line 31
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/j;->c:Lcom/google/android/exoplayer2/p1;

    .line 32
    .line 33
    iget-object v3, p1, Lcom/google/android/exoplayer2/source/rtsp/j;->c:Lcom/google/android/exoplayer2/p1;

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/p1;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/j;->d:Lcom/google/common/collect/ImmutableMap;

    .line 42
    .line 43
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/rtsp/j;->d:Lcom/google/common/collect/ImmutableMap;

    .line 44
    .line 45
    invoke-virtual {v2, p1}, Lcom/google/common/collect/ImmutableMap;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    move v0, v1

    .line 53
    :goto_0
    return v0

    .line 54
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    const/16 v0, 0xd9

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/exoplayer2/source/rtsp/j;->a:I

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    mul-int/lit8 v0, v0, 0x1f

    .line 7
    .line 8
    iget v1, p0, Lcom/google/android/exoplayer2/source/rtsp/j;->b:I

    .line 9
    .line 10
    add-int/2addr v0, v1

    .line 11
    mul-int/lit8 v0, v0, 0x1f

    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/j;->c:Lcom/google/android/exoplayer2/p1;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/p1;->hashCode()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    add-int/2addr v0, v1

    .line 20
    mul-int/lit8 v0, v0, 0x1f

    .line 21
    .line 22
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/j;->d:Lcom/google/common/collect/ImmutableMap;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap;->hashCode()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    add-int/2addr v0, v1

    .line 29
    return v0
.end method
