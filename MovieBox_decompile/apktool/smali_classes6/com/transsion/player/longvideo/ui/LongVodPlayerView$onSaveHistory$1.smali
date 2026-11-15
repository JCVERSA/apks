.class final Lcom/transsion/player/longvideo/ui/LongVodPlayerView$onSaveHistory$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->onSaveHistory()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/n0;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lkotlinx/coroutines/n0;",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/n0;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsion.player.longvideo.ui.LongVodPlayerView$onSaveHistory$1"
    f = "LongVodPlayerView.kt"
    l = {
        0xa5c,
        0xa81
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $bean:Lln/a;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;


# direct methods
.method constructor <init>(Lln/a;Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lln/a;",
            "Lcom/transsion/player/longvideo/ui/LongVodPlayerView;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/player/longvideo/ui/LongVodPlayerView$onSaveHistory$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$onSaveHistory$1;->$bean:Lln/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$onSaveHistory$1;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$onSaveHistory$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$onSaveHistory$1;->$bean:Lln/a;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$onSaveHistory$1;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$onSaveHistory$1;-><init>(Lln/a;Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Lkotlin/coroutines/Continuation;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$onSaveHistory$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/n0;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$onSaveHistory$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$onSaveHistory$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$onSaveHistory$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 44

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget v2, v0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$onSaveHistory$1;->label:I

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    const/4 v6, 0x1

    .line 11
    const/4 v7, 0x0

    .line 12
    if-eqz v2, :cond_3

    .line 13
    .line 14
    if-eq v2, v6, :cond_1

    .line 15
    .line 16
    if-ne v2, v3, :cond_0

    .line 17
    .line 18
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    goto/16 :goto_a

    .line 22
    .line 23
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 26
    .line 27
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw v1

    .line 31
    :cond_1
    iget-object v2, v0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$onSaveHistory$1;->L$2:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v2, Ljava/util/ArrayList;

    .line 34
    .line 35
    iget-object v8, v0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$onSaveHistory$1;->L$1:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v8, Lln/a;

    .line 38
    .line 39
    iget-object v9, v0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$onSaveHistory$1;->L$0:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v9, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 42
    .line 43
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    move-object/from16 v10, p1

    .line 47
    .line 48
    :cond_2
    move-object/from16 v35, v2

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    iget-object v8, v0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$onSaveHistory$1;->$bean:Lln/a;

    .line 55
    .line 56
    if-eqz v8, :cond_11

    .line 57
    .line 58
    iget-object v9, v0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$onSaveHistory$1;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 59
    .line 60
    new-instance v2, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v8}, Lln/a;->a()Ljava/util/List;

    .line 66
    .line 67
    .line 68
    move-result-object v10

    .line 69
    check-cast v10, Ljava/lang/Iterable;

    .line 70
    .line 71
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 72
    .line 73
    .line 74
    move-result-object v10

    .line 75
    :cond_4
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result v11

    .line 79
    if-eqz v11, :cond_5

    .line 80
    .line 81
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v11

    .line 85
    check-cast v11, Lcom/transsion/moviedetailapi/bean/DubsInfo;

    .line 86
    .line 87
    invoke-virtual {v11}, Lcom/transsion/moviedetailapi/bean/DubsInfo;->getSubjectId()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v11

    .line 91
    if-eqz v11, :cond_4

    .line 92
    .line 93
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 98
    .line 99
    .line 100
    move-result v10

    .line 101
    if-eqz v10, :cond_6

    .line 102
    .line 103
    invoke-virtual {v8}, Lln/a;->o()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v10

    .line 107
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    :cond_6
    invoke-static {v9}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getVideoDetailPlayDao(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    .line 111
    .line 112
    .line 113
    move-result-object v10

    .line 114
    invoke-virtual {v8}, Lln/a;->o()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v11

    .line 118
    invoke-virtual {v8}, Lln/a;->l()I

    .line 119
    .line 120
    .line 121
    move-result v12

    .line 122
    invoke-virtual {v8}, Lln/a;->e()I

    .line 123
    .line 124
    .line 125
    move-result v13

    .line 126
    iput-object v9, v0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$onSaveHistory$1;->L$0:Ljava/lang/Object;

    .line 127
    .line 128
    iput-object v8, v0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$onSaveHistory$1;->L$1:Ljava/lang/Object;

    .line 129
    .line 130
    iput-object v2, v0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$onSaveHistory$1;->L$2:Ljava/lang/Object;

    .line 131
    .line 132
    iput v6, v0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$onSaveHistory$1;->label:I

    .line 133
    .line 134
    invoke-interface {v10, v11, v12, v13, v0}, Lcom/transsion/baselib/db/video/VideoDetailPlayDao;->l(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v10

    .line 138
    if-ne v10, v1, :cond_2

    .line 139
    .line 140
    return-object v1

    .line 141
    :goto_1
    check-cast v10, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 142
    .line 143
    if-eqz v10, :cond_7

    .line 144
    .line 145
    invoke-virtual {v10}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getRewardPlayed()Z

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    move/from16 v38, v2

    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_7
    move/from16 v38, v7

    .line 153
    .line 154
    :goto_2
    if-eqz v10, :cond_8

    .line 155
    .line 156
    invoke-virtual {v10}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getRewardFree()Z

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    move/from16 v40, v2

    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_8
    move/from16 v40, v7

    .line 164
    .line 165
    :goto_3
    if-eqz v10, :cond_9

    .line 166
    .line 167
    invoke-virtual {v10}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getRewardUnlock()Z

    .line 168
    .line 169
    .line 170
    move-result v2

    .line 171
    goto :goto_4

    .line 172
    :cond_9
    move v2, v7

    .line 173
    :goto_4
    invoke-static {v9, v2}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$setRewardUnlock$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Z)V

    .line 174
    .line 175
    .line 176
    invoke-static {v9}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getCurPlayStream$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lln/c;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    if-eqz v2, :cond_11

    .line 181
    .line 182
    invoke-virtual {v8}, Lln/a;->o()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v12

    .line 186
    invoke-virtual {v2}, Lln/c;->c()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v13

    .line 190
    invoke-virtual {v8}, Lln/a;->e()I

    .line 191
    .line 192
    .line 193
    move-result v14

    .line 194
    invoke-virtual {v8}, Lln/a;->l()I

    .line 195
    .line 196
    .line 197
    move-result v15

    .line 198
    invoke-static {v9}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getPlayProgress$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)J

    .line 199
    .line 200
    .line 201
    move-result-wide v16

    .line 202
    invoke-static {v9}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getTotalDuration$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)J

    .line 203
    .line 204
    .line 205
    move-result-wide v18

    .line 206
    invoke-virtual {v8}, Lln/a;->n()I

    .line 207
    .line 208
    .line 209
    move-result v11

    .line 210
    int-to-long v4, v11

    .line 211
    invoke-virtual {v8}, Lln/a;->p()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v20

    .line 215
    invoke-virtual {v2}, Lln/c;->h()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v21

    .line 219
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 220
    .line 221
    .line 222
    move-result-wide v22

    .line 223
    invoke-virtual {v8}, Lln/a;->c()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    invoke-virtual {v8}, Lln/a;->s()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v25

    .line 231
    invoke-virtual {v8}, Lln/a;->b()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v27

    .line 235
    invoke-virtual {v8}, Lln/a;->r()Ljava/lang/Integer;

    .line 236
    .line 237
    .line 238
    move-result-object v28

    .line 239
    invoke-virtual {v8}, Lln/a;->g()Z

    .line 240
    .line 241
    .line 242
    move-result v29

    .line 243
    sget-object v11, Lcom/transsion/baselib/utils/PlayMode;->STREAM:Lcom/transsion/baselib/utils/PlayMode;

    .line 244
    .line 245
    invoke-virtual {v11}, Lcom/transsion/baselib/utils/PlayMode;->getValue()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v30

    .line 249
    if-eqz v10, :cond_a

    .line 250
    .line 251
    invoke-virtual {v10}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getLastAdStartTimeStamp()Ljava/lang/Long;

    .line 252
    .line 253
    .line 254
    move-result-object v11

    .line 255
    if-eqz v11, :cond_a

    .line 256
    .line 257
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    .line 258
    .line 259
    .line 260
    move-result-wide v31

    .line 261
    goto :goto_5

    .line 262
    :cond_a
    const-wide/16 v31, 0x0

    .line 263
    .line 264
    :goto_5
    if-eqz v10, :cond_b

    .line 265
    .line 266
    invoke-virtual {v10}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getLastAdEndTimeStamp()Ljava/lang/Long;

    .line 267
    .line 268
    .line 269
    move-result-object v11

    .line 270
    if-eqz v11, :cond_b

    .line 271
    .line 272
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    .line 273
    .line 274
    .line 275
    move-result-wide v33

    .line 276
    goto :goto_6

    .line 277
    :cond_b
    const-wide/16 v33, 0x0

    .line 278
    .line 279
    :goto_6
    invoke-static {v9}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$isRewardUnlock$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Z

    .line 280
    .line 281
    .line 282
    move-result v39

    .line 283
    invoke-virtual {v8}, Lln/a;->q()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v11

    .line 287
    const/4 v6, 0x0

    .line 288
    if-eqz v11, :cond_d

    .line 289
    .line 290
    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    .line 291
    .line 292
    .line 293
    move-result v11

    .line 294
    if-nez v11, :cond_c

    .line 295
    .line 296
    goto :goto_8

    .line 297
    :cond_c
    invoke-virtual {v8}, Lln/a;->q()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v8

    .line 301
    :goto_7
    move-object/from16 v41, v8

    .line 302
    .line 303
    goto :goto_9

    .line 304
    :cond_d
    :goto_8
    if-eqz v10, :cond_e

    .line 305
    .line 306
    invoke-virtual {v10}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getOps()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v8

    .line 310
    goto :goto_7

    .line 311
    :cond_e
    move-object/from16 v41, v6

    .line 312
    .line 313
    :goto_9
    new-instance v8, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 314
    .line 315
    invoke-static/range {v18 .. v19}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    .line 316
    .line 317
    .line 318
    move-result-object v10

    .line 319
    invoke-static {v4, v5}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    .line 320
    .line 321
    .line 322
    move-result-object v26

    .line 323
    invoke-static/range {v31 .. v32}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    .line 324
    .line 325
    .line 326
    move-result-object v36

    .line 327
    invoke-static/range {v33 .. v34}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    .line 328
    .line 329
    .line 330
    move-result-object v37

    .line 331
    const v42, 0x80400

    .line 332
    .line 333
    .line 334
    const/16 v43, 0x0

    .line 335
    .line 336
    const/16 v24, 0x0

    .line 337
    .line 338
    const/16 v31, 0x0

    .line 339
    .line 340
    const/16 v32, 0x0

    .line 341
    .line 342
    const-wide/16 v33, 0x0

    .line 343
    .line 344
    move-object v11, v8

    .line 345
    move-object/from16 v18, v20

    .line 346
    .line 347
    move-object/from16 v19, v2

    .line 348
    .line 349
    move-object/from16 v20, v25

    .line 350
    .line 351
    move-object/from16 v25, v10

    .line 352
    .line 353
    invoke-direct/range {v11 .. v43}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;-><init>(Ljava/lang/String;Ljava/lang/String;IIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/ArrayList;Ljava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 354
    .line 355
    .line 356
    invoke-static {v9}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getSubSelectId$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v2

    .line 360
    if-eqz v2, :cond_f

    .line 361
    .line 362
    invoke-static {v9}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getSubSelectId$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v2

    .line 366
    invoke-virtual {v8, v2}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->setSubtitleSelectId(Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    :cond_f
    invoke-static {v9}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getVideoDetailPlayDao(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    .line 370
    .line 371
    .line 372
    move-result-object v2

    .line 373
    iput-object v6, v0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$onSaveHistory$1;->L$0:Ljava/lang/Object;

    .line 374
    .line 375
    iput-object v6, v0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$onSaveHistory$1;->L$1:Ljava/lang/Object;

    .line 376
    .line 377
    iput-object v6, v0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$onSaveHistory$1;->L$2:Ljava/lang/Object;

    .line 378
    .line 379
    iput v3, v0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$onSaveHistory$1;->label:I

    .line 380
    .line 381
    invoke-interface {v2, v8, v0}, Lcom/transsion/baselib/db/video/VideoDetailPlayDao;->p(Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    move-result-object v2

    .line 385
    if-ne v2, v1, :cond_10

    .line 386
    .line 387
    return-object v1

    .line 388
    :cond_10
    :goto_a
    new-instance v1, Lyw/e;

    .line 389
    .line 390
    const/4 v2, 0x1

    .line 391
    invoke-direct {v1, v2, v7}, Lyw/e;-><init>(ZZ)V

    .line 392
    .line 393
    .line 394
    sget-object v2, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 395
    .line 396
    const-class v3, Lcom/transsnet/flow/event/FlowEventBus;

    .line 397
    .line 398
    invoke-virtual {v2, v3}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 399
    .line 400
    .line 401
    move-result-object v2

    .line 402
    check-cast v2, Lcom/transsnet/flow/event/FlowEventBus;

    .line 403
    .line 404
    const-class v3, Lyw/e;

    .line 405
    .line 406
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v3

    .line 410
    const-string v4, "getName(...)"

    .line 411
    .line 412
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    const-wide/16 v4, 0x0

    .line 416
    .line 417
    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 418
    .line 419
    .line 420
    :cond_11
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 421
    .line 422
    return-object v1
.end method
