.class public abstract Lcom/transsion/baselib/db/video/VideoDetailPlayDao$DefaultImpls;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static a(Lcom/transsion/baselib/db/video/VideoDetailPlayDao;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 36

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    instance-of v3, v2, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$getHistory$1;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    move-object v3, v2

    .line 12
    check-cast v3, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$getHistory$1;

    .line 13
    .line 14
    iget v4, v3, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$getHistory$1;->label:I

    .line 15
    .line 16
    const/high16 v5, -0x80000000

    .line 17
    .line 18
    and-int v6, v4, v5

    .line 19
    .line 20
    if-eqz v6, :cond_0

    .line 21
    .line 22
    sub-int/2addr v4, v5

    .line 23
    iput v4, v3, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$getHistory$1;->label:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v3, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$getHistory$1;

    .line 27
    .line 28
    invoke-direct {v3, v2}, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$getHistory$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v2, v3, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$getHistory$1;->result:Ljava/lang/Object;

    .line 32
    .line 33
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    iget v5, v3, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$getHistory$1;->label:I

    .line 38
    .line 39
    const/4 v6, 0x3

    .line 40
    const/4 v7, 0x2

    .line 41
    const/4 v8, 0x1

    .line 42
    if-eqz v5, :cond_4

    .line 43
    .line 44
    if-eq v5, v8, :cond_3

    .line 45
    .line 46
    if-eq v5, v7, :cond_2

    .line 47
    .line 48
    if-ne v5, v6, :cond_1

    .line 49
    .line 50
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    goto/16 :goto_4

    .line 54
    .line 55
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 56
    .line 57
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 58
    .line 59
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw v0

    .line 63
    :cond_2
    iget-object v0, v3, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$getHistory$1;->L$1:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 66
    .line 67
    iget-object v1, v3, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$getHistory$1;->L$0:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v1, Ljava/lang/String;

    .line 70
    .line 71
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    move-object/from16 v35, v2

    .line 75
    .line 76
    move-object v2, v1

    .line 77
    move-object/from16 v1, v35

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_3
    iget-object v0, v3, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$getHistory$1;->L$1:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v0, Ljava/lang/String;

    .line 83
    .line 84
    iget-object v1, v3, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$getHistory$1;->L$0:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v1, Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    .line 87
    .line 88
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    move-object/from16 v35, v1

    .line 92
    .line 93
    move-object v1, v0

    .line 94
    move-object/from16 v0, v35

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_4
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    iput-object v0, v3, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$getHistory$1;->L$0:Ljava/lang/Object;

    .line 101
    .line 102
    iput-object v1, v3, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$getHistory$1;->L$1:Ljava/lang/Object;

    .line 103
    .line 104
    iput v8, v3, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$getHistory$1;->label:I

    .line 105
    .line 106
    invoke-interface {v0, v1, v3}, Lcom/transsion/baselib/db/video/VideoDetailPlayDao;->n(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    if-ne v2, v4, :cond_5

    .line 111
    .line 112
    return-object v4

    .line 113
    :cond_5
    :goto_1
    check-cast v2, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 114
    .line 115
    if-eqz v2, :cond_9

    .line 116
    .line 117
    invoke-virtual {v2}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getSubjectId()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v5

    .line 125
    if-eqz v5, :cond_6

    .line 126
    .line 127
    goto/16 :goto_3

    .line 128
    .line 129
    :cond_6
    iput-object v1, v3, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$getHistory$1;->L$0:Ljava/lang/Object;

    .line 130
    .line 131
    iput-object v2, v3, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$getHistory$1;->L$1:Ljava/lang/Object;

    .line 132
    .line 133
    iput v7, v3, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$getHistory$1;->label:I

    .line 134
    .line 135
    invoke-interface {v0, v1, v3}, Lcom/transsion/baselib/db/video/VideoDetailPlayDao;->e(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    if-ne v0, v4, :cond_7

    .line 140
    .line 141
    return-object v4

    .line 142
    :cond_7
    move-object/from16 v35, v1

    .line 143
    .line 144
    move-object v1, v0

    .line 145
    move-object v0, v2

    .line 146
    move-object/from16 v2, v35

    .line 147
    .line 148
    :goto_2
    check-cast v1, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 149
    .line 150
    if-nez v1, :cond_8

    .line 151
    .line 152
    new-instance v34, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 153
    .line 154
    move-object/from16 v1, v34

    .line 155
    .line 156
    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getId()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getEp()I

    .line 161
    .line 162
    .line 163
    move-result v4

    .line 164
    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getSe()I

    .line 165
    .line 166
    .line 167
    move-result v5

    .line 168
    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getProgress()J

    .line 169
    .line 170
    .line 171
    move-result-wide v6

    .line 172
    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getTitle()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v8

    .line 176
    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getCoverUrl()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v9

    .line 180
    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getThumbnail()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v10

    .line 184
    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getVideoUrl()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v11

    .line 188
    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getTimeStamp()J

    .line 189
    .line 190
    .line 191
    move-result-wide v12

    .line 192
    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getSubtitleSelectId()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v14

    .line 196
    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getTotalDuration()Ljava/lang/Long;

    .line 197
    .line 198
    .line 199
    move-result-object v15

    .line 200
    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getSubjectDurationSeconds()Ljava/lang/Long;

    .line 201
    .line 202
    .line 203
    move-result-object v16

    .line 204
    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getAverageHueLight()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v17

    .line 208
    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getSubjectType()Ljava/lang/Integer;

    .line 209
    .line 210
    .line 211
    move-result-object v18

    .line 212
    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getHasDelete()Z

    .line 213
    .line 214
    .line 215
    move-result v19

    .line 216
    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getPlayMode()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v20

    .line 220
    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getDownloadUrl()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v21

    .line 224
    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getDownloadFilePath()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v22

    .line 228
    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getDownloadSize()J

    .line 229
    .line 230
    .line 231
    move-result-wide v23

    .line 232
    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getDubs()Ljava/util/ArrayList;

    .line 233
    .line 234
    .line 235
    move-result-object v25

    .line 236
    const/high16 v32, 0x7e00000

    .line 237
    .line 238
    const/16 v33, 0x0

    .line 239
    .line 240
    const/16 v26, 0x0

    .line 241
    .line 242
    const/16 v27, 0x0

    .line 243
    .line 244
    const/16 v28, 0x0

    .line 245
    .line 246
    const/16 v29, 0x0

    .line 247
    .line 248
    const/16 v30, 0x0

    .line 249
    .line 250
    const/16 v31, 0x0

    .line 251
    .line 252
    invoke-direct/range {v1 .. v33}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;-><init>(Ljava/lang/String;Ljava/lang/String;IIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/ArrayList;Ljava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 253
    .line 254
    .line 255
    move-object/from16 v2, v34

    .line 256
    .line 257
    goto :goto_3

    .line 258
    :cond_8
    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getProgress()J

    .line 259
    .line 260
    .line 261
    move-result-wide v2

    .line 262
    invoke-virtual {v1, v2, v3}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->setProgress(J)V

    .line 263
    .line 264
    .line 265
    move-object v2, v1

    .line 266
    :goto_3
    return-object v2

    .line 267
    :cond_9
    const/4 v2, 0x0

    .line 268
    iput-object v2, v3, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$getHistory$1;->L$0:Ljava/lang/Object;

    .line 269
    .line 270
    iput-object v2, v3, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$getHistory$1;->L$1:Ljava/lang/Object;

    .line 271
    .line 272
    iput v6, v3, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$getHistory$1;->label:I

    .line 273
    .line 274
    invoke-interface {v0, v1, v3}, Lcom/transsion/baselib/db/video/VideoDetailPlayDao;->e(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v2

    .line 278
    if-ne v2, v4, :cond_a

    .line 279
    .line 280
    return-object v4

    .line 281
    :cond_a
    :goto_4
    return-object v2
.end method

.method public static b(Lcom/transsion/baselib/db/video/VideoDetailPlayDao;Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    .line 1
    instance-of v0, p2, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdate$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdate$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdate$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdate$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdate$1;

    .line 21
    .line 22
    invoke-direct {v0, p2}, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdate$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdate$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdate$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x3

    .line 34
    const/4 v4, 0x2

    .line 35
    const/4 v5, 0x1

    .line 36
    if-eqz v2, :cond_4

    .line 37
    .line 38
    if-eq v2, v5, :cond_3

    .line 39
    .line 40
    if-eq v2, v4, :cond_2

    .line 41
    .line 42
    if-ne v2, v3, :cond_1

    .line 43
    .line 44
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    goto :goto_3

    .line 48
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p0

    .line 56
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_3
    iget-object p0, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdate$1;->L$1:Ljava/lang/Object;

    .line 61
    .line 62
    move-object p1, p0

    .line 63
    check-cast p1, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 64
    .line 65
    iget-object p0, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdate$1;->L$0:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast p0, Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    .line 68
    .line 69
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getSubjectId()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    invoke-virtual {p1}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getSe()I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    invoke-virtual {p1}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getEp()I

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    iput-object p0, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdate$1;->L$0:Ljava/lang/Object;

    .line 89
    .line 90
    iput-object p1, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdate$1;->L$1:Ljava/lang/Object;

    .line 91
    .line 92
    iput v5, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdate$1;->label:I

    .line 93
    .line 94
    invoke-interface {p0, p2, v2, v6, v0}, Lcom/transsion/baselib/db/video/VideoDetailPlayDao;->m(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    if-ne p2, v1, :cond_5

    .line 99
    .line 100
    return-object v1

    .line 101
    :cond_5
    :goto_1
    const/4 v2, 0x0

    .line 102
    if-nez p2, :cond_7

    .line 103
    .line 104
    iput-object v2, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdate$1;->L$0:Ljava/lang/Object;

    .line 105
    .line 106
    iput-object v2, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdate$1;->L$1:Ljava/lang/Object;

    .line 107
    .line 108
    iput v4, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdate$1;->label:I

    .line 109
    .line 110
    invoke-interface {p0, p1, v0}, Lcom/transsion/baselib/db/video/VideoDetailPlayDao;->o(Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    if-ne p0, v1, :cond_6

    .line 115
    .line 116
    return-object v1

    .line 117
    :cond_6
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 118
    .line 119
    return-object p0

    .line 120
    :cond_7
    iput-object v2, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdate$1;->L$0:Ljava/lang/Object;

    .line 121
    .line 122
    iput-object v2, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdate$1;->L$1:Ljava/lang/Object;

    .line 123
    .line 124
    iput v3, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdate$1;->label:I

    .line 125
    .line 126
    invoke-interface {p0, p1, v0}, Lcom/transsion/baselib/db/video/VideoDetailPlayDao;->k(Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    if-ne p0, v1, :cond_8

    .line 131
    .line 132
    return-object v1

    .line 133
    :cond_8
    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 134
    .line 135
    return-object p0
.end method

.method public static c(Lcom/transsion/baselib/db/video/VideoDetailPlayDao;Ljava/lang/String;IIJJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 51

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    move-object/from16 v4, p8

    .line 10
    .line 11
    instance-of v5, v4, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;

    .line 12
    .line 13
    if-eqz v5, :cond_0

    .line 14
    .line 15
    move-object v5, v4

    .line 16
    check-cast v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;

    .line 17
    .line 18
    iget v6, v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;->label:I

    .line 19
    .line 20
    const/high16 v7, -0x80000000

    .line 21
    .line 22
    and-int v8, v6, v7

    .line 23
    .line 24
    if-eqz v8, :cond_0

    .line 25
    .line 26
    sub-int/2addr v6, v7

    .line 27
    iput v6, v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;->label:I

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;

    .line 31
    .line 32
    invoke-direct {v5, v4}, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    iget-object v4, v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;->result:Ljava/lang/Object;

    .line 36
    .line 37
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    iget v7, v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;->label:I

    .line 42
    .line 43
    const/4 v8, 0x5

    .line 44
    const/4 v9, 0x4

    .line 45
    const/4 v10, 0x3

    .line 46
    const/4 v11, 0x2

    .line 47
    const/4 v12, 0x1

    .line 48
    const/4 v13, 0x0

    .line 49
    if-eqz v7, :cond_6

    .line 50
    .line 51
    if-eq v7, v12, :cond_5

    .line 52
    .line 53
    if-eq v7, v11, :cond_4

    .line 54
    .line 55
    if-eq v7, v10, :cond_3

    .line 56
    .line 57
    if-eq v7, v9, :cond_2

    .line 58
    .line 59
    if-ne v7, v8, :cond_1

    .line 60
    .line 61
    invoke-static {v4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    goto/16 :goto_6

    .line 65
    .line 66
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 67
    .line 68
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 69
    .line 70
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw v0

    .line 74
    :cond_2
    iget-wide v0, v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;->J$0:J

    .line 75
    .line 76
    iget-object v2, v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;->L$0:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v2, Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    .line 79
    .line 80
    invoke-static {v4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    move-object v3, v4

    .line 84
    goto/16 :goto_5

    .line 85
    .line 86
    :cond_3
    invoke-static {v4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    goto/16 :goto_4

    .line 90
    .line 91
    :cond_4
    iget-wide v0, v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;->J$1:J

    .line 92
    .line 93
    iget-wide v2, v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;->J$0:J

    .line 94
    .line 95
    iget v7, v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;->I$1:I

    .line 96
    .line 97
    iget v8, v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;->I$0:I

    .line 98
    .line 99
    iget-object v9, v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;->L$1:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v9, Ljava/lang/String;

    .line 102
    .line 103
    iget-object v11, v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;->L$0:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast v11, Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    .line 106
    .line 107
    invoke-static {v4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    move-wide/from16 v21, v0

    .line 111
    .line 112
    move-wide/from16 v27, v2

    .line 113
    .line 114
    move/from16 v19, v7

    .line 115
    .line 116
    move/from16 v20, v8

    .line 117
    .line 118
    move-object/from16 v17, v9

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_5
    iget-wide v0, v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;->J$1:J

    .line 122
    .line 123
    iget-wide v2, v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;->J$0:J

    .line 124
    .line 125
    iget v7, v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;->I$1:I

    .line 126
    .line 127
    iget v12, v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;->I$0:I

    .line 128
    .line 129
    iget-object v14, v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;->L$1:Ljava/lang/Object;

    .line 130
    .line 131
    check-cast v14, Ljava/lang/String;

    .line 132
    .line 133
    iget-object v15, v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;->L$0:Ljava/lang/Object;

    .line 134
    .line 135
    check-cast v15, Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    .line 136
    .line 137
    invoke-static {v4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    move-wide v8, v0

    .line 141
    move-object v0, v4

    .line 142
    goto :goto_1

    .line 143
    :cond_6
    invoke-static {v4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    iput-object v0, v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;->L$0:Ljava/lang/Object;

    .line 147
    .line 148
    iput-object v1, v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;->L$1:Ljava/lang/Object;

    .line 149
    .line 150
    iput v2, v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;->I$0:I

    .line 151
    .line 152
    iput v3, v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;->I$1:I

    .line 153
    .line 154
    move-wide/from16 v14, p4

    .line 155
    .line 156
    iput-wide v14, v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;->J$0:J

    .line 157
    .line 158
    move-wide/from16 v8, p6

    .line 159
    .line 160
    iput-wide v8, v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;->J$1:J

    .line 161
    .line 162
    iput v12, v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;->label:I

    .line 163
    .line 164
    invoke-interface {v0, v1, v2, v3, v5}, Lcom/transsion/baselib/db/video/VideoDetailPlayDao;->m(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v7

    .line 168
    if-ne v7, v6, :cond_7

    .line 169
    .line 170
    return-object v6

    .line 171
    :cond_7
    move v12, v2

    .line 172
    move-wide/from16 v49, v14

    .line 173
    .line 174
    move-object v15, v0

    .line 175
    move-object v14, v1

    .line 176
    move-object v0, v7

    .line 177
    move v7, v3

    .line 178
    move-wide/from16 v2, v49

    .line 179
    .line 180
    :goto_1
    if-nez v0, :cond_b

    .line 181
    .line 182
    iput-object v15, v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;->L$0:Ljava/lang/Object;

    .line 183
    .line 184
    iput-object v14, v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;->L$1:Ljava/lang/Object;

    .line 185
    .line 186
    iput v12, v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;->I$0:I

    .line 187
    .line 188
    iput v7, v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;->I$1:I

    .line 189
    .line 190
    iput-wide v2, v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;->J$0:J

    .line 191
    .line 192
    iput-wide v8, v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;->J$1:J

    .line 193
    .line 194
    iput v11, v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;->label:I

    .line 195
    .line 196
    invoke-interface {v15, v14, v5}, Lcom/transsion/baselib/db/video/VideoDetailPlayDao;->c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v4

    .line 200
    if-ne v4, v6, :cond_8

    .line 201
    .line 202
    return-object v6

    .line 203
    :cond_8
    move-wide/from16 v27, v2

    .line 204
    .line 205
    move/from16 v19, v7

    .line 206
    .line 207
    move-wide/from16 v21, v8

    .line 208
    .line 209
    move/from16 v20, v12

    .line 210
    .line 211
    move-object/from16 v17, v14

    .line 212
    .line 213
    move-object v11, v15

    .line 214
    :goto_2
    check-cast v4, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 215
    .line 216
    if-eqz v4, :cond_9

    .line 217
    .line 218
    new-instance v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 219
    .line 220
    move-object/from16 v16, v0

    .line 221
    .line 222
    invoke-virtual {v4}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getSubjectId()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v17

    .line 226
    invoke-virtual {v4}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getId()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v18

    .line 230
    const v47, 0x7fffde0

    .line 231
    .line 232
    .line 233
    const/16 v48, 0x0

    .line 234
    .line 235
    const/16 v23, 0x0

    .line 236
    .line 237
    const/16 v24, 0x0

    .line 238
    .line 239
    const/16 v25, 0x0

    .line 240
    .line 241
    const/16 v26, 0x0

    .line 242
    .line 243
    const/16 v29, 0x0

    .line 244
    .line 245
    const/16 v30, 0x0

    .line 246
    .line 247
    const/16 v31, 0x0

    .line 248
    .line 249
    const/16 v32, 0x0

    .line 250
    .line 251
    const/16 v33, 0x0

    .line 252
    .line 253
    const/16 v34, 0x0

    .line 254
    .line 255
    const/16 v35, 0x0

    .line 256
    .line 257
    const/16 v36, 0x0

    .line 258
    .line 259
    const/16 v37, 0x0

    .line 260
    .line 261
    const-wide/16 v38, 0x0

    .line 262
    .line 263
    const/16 v40, 0x0

    .line 264
    .line 265
    const/16 v41, 0x0

    .line 266
    .line 267
    const/16 v42, 0x0

    .line 268
    .line 269
    const/16 v43, 0x0

    .line 270
    .line 271
    const/16 v44, 0x0

    .line 272
    .line 273
    const/16 v45, 0x0

    .line 274
    .line 275
    const/16 v46, 0x0

    .line 276
    .line 277
    invoke-direct/range {v16 .. v48}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;-><init>(Ljava/lang/String;Ljava/lang/String;IIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/ArrayList;Ljava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 278
    .line 279
    .line 280
    goto :goto_3

    .line 281
    :cond_9
    new-instance v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 282
    .line 283
    move-object/from16 v16, v0

    .line 284
    .line 285
    const v47, 0x7fffde0

    .line 286
    .line 287
    .line 288
    const/16 v48, 0x0

    .line 289
    .line 290
    const-string v18, ""

    .line 291
    .line 292
    const/16 v23, 0x0

    .line 293
    .line 294
    const/16 v24, 0x0

    .line 295
    .line 296
    const/16 v25, 0x0

    .line 297
    .line 298
    const/16 v26, 0x0

    .line 299
    .line 300
    const/16 v29, 0x0

    .line 301
    .line 302
    const/16 v30, 0x0

    .line 303
    .line 304
    const/16 v31, 0x0

    .line 305
    .line 306
    const/16 v32, 0x0

    .line 307
    .line 308
    const/16 v33, 0x0

    .line 309
    .line 310
    const/16 v34, 0x0

    .line 311
    .line 312
    const/16 v35, 0x0

    .line 313
    .line 314
    const/16 v36, 0x0

    .line 315
    .line 316
    const/16 v37, 0x0

    .line 317
    .line 318
    const-wide/16 v38, 0x0

    .line 319
    .line 320
    const/16 v40, 0x0

    .line 321
    .line 322
    const/16 v41, 0x0

    .line 323
    .line 324
    const/16 v42, 0x0

    .line 325
    .line 326
    const/16 v43, 0x0

    .line 327
    .line 328
    const/16 v44, 0x0

    .line 329
    .line 330
    const/16 v45, 0x0

    .line 331
    .line 332
    const/16 v46, 0x0

    .line 333
    .line 334
    invoke-direct/range {v16 .. v48}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;-><init>(Ljava/lang/String;Ljava/lang/String;IIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/ArrayList;Ljava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 335
    .line 336
    .line 337
    :goto_3
    iput-object v13, v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;->L$0:Ljava/lang/Object;

    .line 338
    .line 339
    iput-object v13, v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;->L$1:Ljava/lang/Object;

    .line 340
    .line 341
    iput v10, v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;->label:I

    .line 342
    .line 343
    invoke-interface {v11, v0, v5}, Lcom/transsion/baselib/db/video/VideoDetailPlayDao;->o(Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    if-ne v0, v6, :cond_a

    .line 348
    .line 349
    return-object v6

    .line 350
    :cond_a
    :goto_4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 351
    .line 352
    return-object v0

    .line 353
    :cond_b
    iput-object v15, v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;->L$0:Ljava/lang/Object;

    .line 354
    .line 355
    iput-object v13, v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;->L$1:Ljava/lang/Object;

    .line 356
    .line 357
    iput-wide v8, v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;->J$0:J

    .line 358
    .line 359
    const/4 v0, 0x4

    .line 360
    iput v0, v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;->label:I

    .line 361
    .line 362
    invoke-interface {v15, v14, v12, v7, v5}, Lcom/transsion/baselib/db/video/VideoDetailPlayDao;->l(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    if-ne v0, v6, :cond_c

    .line 367
    .line 368
    return-object v6

    .line 369
    :cond_c
    move-object v3, v0

    .line 370
    move-wide v0, v8

    .line 371
    move-object v2, v15

    .line 372
    :goto_5
    check-cast v3, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 373
    .line 374
    if-eqz v3, :cond_d

    .line 375
    .line 376
    invoke-virtual {v3, v0, v1}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->setProgress(J)V

    .line 377
    .line 378
    .line 379
    iput-object v13, v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;->L$0:Ljava/lang/Object;

    .line 380
    .line 381
    const/4 v0, 0x5

    .line 382
    iput v0, v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;->label:I

    .line 383
    .line 384
    invoke-interface {v2, v3, v5}, Lcom/transsion/baselib/db/video/VideoDetailPlayDao;->k(Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    if-ne v0, v6, :cond_d

    .line 389
    .line 390
    return-object v6

    .line 391
    :cond_d
    :goto_6
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 392
    .line 393
    return-object v0
.end method
