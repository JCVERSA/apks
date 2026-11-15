.class Lsi/j$c;
.super Landroidx/room/e;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsi/j;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lsi/j;


# direct methods
.method constructor <init>(Lsi/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsi/j$c;->a:Lsi/j;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/room/e;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Ly3/e;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/baselib/db/audio/AudioBean;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lsi/j$c;->d(Ly3/e;Lcom/transsion/baselib/db/audio/AudioBean;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "UPDATE OR ABORT `audio` SET `audioId` = ?,`cover` = ?,`duration` = ?,`size` = ?,`url` = ?,`title` = ?,`desc` = ?,`bitrate` = ?,`updateTimeStamp` = ?,`readProcess` = ?,`localPath` = ?,`ops` = ?,`resourceId` = ?,`postId` = ?,`subjectId` = ?,`groupId` = ?,`status` = ?,`subjectTitle` = ?,`se` = ?,`ep` = ? WHERE `audioId` = ?"

    .line 2
    .line 3
    return-object v0
.end method

.method protected d(Ly3/e;Lcom/transsion/baselib/db/audio/AudioBean;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getAudioUrl()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getAudioUrl()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getCover()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x2

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getCover()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :goto_1
    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getDuration()Ljava/lang/Long;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const/4 v1, 0x3

    .line 42
    if-nez v0, :cond_2

    .line 43
    .line 44
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 45
    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getDuration()Ljava/lang/Long;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 53
    .line 54
    .line 55
    move-result-wide v2

    .line 56
    invoke-interface {p1, v1, v2, v3}, Ly3/e;->c(IJ)V

    .line 57
    .line 58
    .line 59
    :goto_2
    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getSize()Ljava/lang/Long;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const/4 v1, 0x4

    .line 64
    if-nez v0, :cond_3

    .line 65
    .line 66
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 67
    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_3
    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getSize()Ljava/lang/Long;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 75
    .line 76
    .line 77
    move-result-wide v2

    .line 78
    invoke-interface {p1, v1, v2, v3}, Ly3/e;->c(IJ)V

    .line 79
    .line 80
    .line 81
    :goto_3
    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getUrl()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    const/4 v1, 0x5

    .line 86
    if-nez v0, :cond_4

    .line 87
    .line 88
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 89
    .line 90
    .line 91
    goto :goto_4

    .line 92
    :cond_4
    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getUrl()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 97
    .line 98
    .line 99
    :goto_4
    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getTitle()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    const/4 v1, 0x6

    .line 104
    if-nez v0, :cond_5

    .line 105
    .line 106
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 107
    .line 108
    .line 109
    goto :goto_5

    .line 110
    :cond_5
    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getTitle()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 115
    .line 116
    .line 117
    :goto_5
    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getDesc()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    const/4 v1, 0x7

    .line 122
    if-nez v0, :cond_6

    .line 123
    .line 124
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 125
    .line 126
    .line 127
    goto :goto_6

    .line 128
    :cond_6
    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getDesc()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 133
    .line 134
    .line 135
    :goto_6
    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getBitrate()Ljava/lang/Integer;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    const/16 v1, 0x8

    .line 140
    .line 141
    if-nez v0, :cond_7

    .line 142
    .line 143
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 144
    .line 145
    .line 146
    goto :goto_7

    .line 147
    :cond_7
    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getBitrate()Ljava/lang/Integer;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    int-to-long v2, v0

    .line 156
    invoke-interface {p1, v1, v2, v3}, Ly3/e;->c(IJ)V

    .line 157
    .line 158
    .line 159
    :goto_7
    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getUpdateTimeStamp()Ljava/lang/Long;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    const/16 v1, 0x9

    .line 164
    .line 165
    if-nez v0, :cond_8

    .line 166
    .line 167
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 168
    .line 169
    .line 170
    goto :goto_8

    .line 171
    :cond_8
    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getUpdateTimeStamp()Ljava/lang/Long;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 176
    .line 177
    .line 178
    move-result-wide v2

    .line 179
    invoke-interface {p1, v1, v2, v3}, Ly3/e;->c(IJ)V

    .line 180
    .line 181
    .line 182
    :goto_8
    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getReadProcess()Ljava/lang/Long;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    const/16 v1, 0xa

    .line 187
    .line 188
    if-nez v0, :cond_9

    .line 189
    .line 190
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 191
    .line 192
    .line 193
    goto :goto_9

    .line 194
    :cond_9
    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getReadProcess()Ljava/lang/Long;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 199
    .line 200
    .line 201
    move-result-wide v2

    .line 202
    invoke-interface {p1, v1, v2, v3}, Ly3/e;->c(IJ)V

    .line 203
    .line 204
    .line 205
    :goto_9
    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getLocalPath()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    const/16 v1, 0xb

    .line 210
    .line 211
    if-nez v0, :cond_a

    .line 212
    .line 213
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 214
    .line 215
    .line 216
    goto :goto_a

    .line 217
    :cond_a
    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getLocalPath()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 222
    .line 223
    .line 224
    :goto_a
    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getOps()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    const/16 v1, 0xc

    .line 229
    .line 230
    if-nez v0, :cond_b

    .line 231
    .line 232
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 233
    .line 234
    .line 235
    goto :goto_b

    .line 236
    :cond_b
    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getOps()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 241
    .line 242
    .line 243
    :goto_b
    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getResourceId()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    const/16 v1, 0xd

    .line 248
    .line 249
    if-nez v0, :cond_c

    .line 250
    .line 251
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 252
    .line 253
    .line 254
    goto :goto_c

    .line 255
    :cond_c
    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getResourceId()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 260
    .line 261
    .line 262
    :goto_c
    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getPostId()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    const/16 v1, 0xe

    .line 267
    .line 268
    if-nez v0, :cond_d

    .line 269
    .line 270
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 271
    .line 272
    .line 273
    goto :goto_d

    .line 274
    :cond_d
    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getPostId()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 279
    .line 280
    .line 281
    :goto_d
    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getSubjectId()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    const/16 v1, 0xf

    .line 286
    .line 287
    if-nez v0, :cond_e

    .line 288
    .line 289
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 290
    .line 291
    .line 292
    goto :goto_e

    .line 293
    :cond_e
    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getSubjectId()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 298
    .line 299
    .line 300
    :goto_e
    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getGroupId()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    const/16 v1, 0x10

    .line 305
    .line 306
    if-nez v0, :cond_f

    .line 307
    .line 308
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 309
    .line 310
    .line 311
    goto :goto_f

    .line 312
    :cond_f
    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getGroupId()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 317
    .line 318
    .line 319
    :goto_f
    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getStatus()I

    .line 320
    .line 321
    .line 322
    move-result v0

    .line 323
    int-to-long v0, v0

    .line 324
    const/16 v2, 0x11

    .line 325
    .line 326
    invoke-interface {p1, v2, v0, v1}, Ly3/e;->c(IJ)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getSubjectTitle()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    const/16 v1, 0x12

    .line 334
    .line 335
    if-nez v0, :cond_10

    .line 336
    .line 337
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 338
    .line 339
    .line 340
    goto :goto_10

    .line 341
    :cond_10
    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getSubjectTitle()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 346
    .line 347
    .line 348
    :goto_10
    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getSe()I

    .line 349
    .line 350
    .line 351
    move-result v0

    .line 352
    int-to-long v0, v0

    .line 353
    const/16 v2, 0x13

    .line 354
    .line 355
    invoke-interface {p1, v2, v0, v1}, Ly3/e;->c(IJ)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getEp()I

    .line 359
    .line 360
    .line 361
    move-result v0

    .line 362
    int-to-long v0, v0

    .line 363
    const/16 v2, 0x14

    .line 364
    .line 365
    invoke-interface {p1, v2, v0, v1}, Ly3/e;->c(IJ)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getAudioUrl()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    const/16 v1, 0x15

    .line 373
    .line 374
    if-nez v0, :cond_11

    .line 375
    .line 376
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 377
    .line 378
    .line 379
    goto :goto_11

    .line 380
    :cond_11
    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getAudioUrl()Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object p2

    .line 384
    invoke-interface {p1, v1, p2}, Ly3/e;->i(ILjava/lang/String;)V

    .line 385
    .line 386
    .line 387
    :goto_11
    return-void
.end method
