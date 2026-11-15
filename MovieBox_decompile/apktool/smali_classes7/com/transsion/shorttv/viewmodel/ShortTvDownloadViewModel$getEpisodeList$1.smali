.class final Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getEpisodeList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->i(Ljava/lang/String;II)V
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
    c = "com.transsion.shorttv.viewmodel.ShortTvDownloadViewModel$getEpisodeList$1"
    f = "ShortTvDownloadViewModel.kt"
    l = {
        0x70
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $endPosition:I

.field final synthetic $startPosition:I

.field final synthetic $subjectId:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;Ljava/lang/String;IILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;",
            "Ljava/lang/String;",
            "II",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getEpisodeList$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getEpisodeList$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getEpisodeList$1;->$subjectId:Ljava/lang/String;

    .line 4
    .line 5
    iput p3, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getEpisodeList$1;->$startPosition:I

    .line 6
    .line 7
    iput p4, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getEpisodeList$1;->$endPosition:I

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
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
    new-instance p1, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getEpisodeList$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getEpisodeList$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getEpisodeList$1;->$subjectId:Ljava/lang/String;

    .line 6
    .line 7
    iget v3, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getEpisodeList$1;->$startPosition:I

    .line 8
    .line 9
    iget v4, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getEpisodeList$1;->$endPosition:I

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getEpisodeList$1;-><init>(Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;Ljava/lang/String;IILkotlin/coroutines/Continuation;)V

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getEpisodeList$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getEpisodeList$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getEpisodeList$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getEpisodeList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 36

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v10

    .line 7
    iget v0, v9, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getEpisodeList$1;->label:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v11, 0x0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    move-object/from16 v0, p1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw v0

    .line 29
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 33
    .line 34
    const/4 v6, 0x4

    .line 35
    const/4 v7, 0x0

    .line 36
    const-string v3, "ShortTvDownload"

    .line 37
    .line 38
    const-string v4, "getShortTvEpisodeList---start"

    .line 39
    .line 40
    const/4 v5, 0x0

    .line 41
    invoke-static/range {v2 .. v7}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    :try_start_1
    iget-object v0, v9, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getEpisodeList$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;

    .line 45
    .line 46
    invoke-static {v0}, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->e(Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;)Lsr/a;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget-object v2, v9, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getEpisodeList$1;->$subjectId:Ljava/lang/String;

    .line 51
    .line 52
    iget v3, v9, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getEpisodeList$1;->$startPosition:I

    .line 53
    .line 54
    iget v4, v9, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getEpisodeList$1;->$endPosition:I

    .line 55
    .line 56
    iput v1, v9, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getEpisodeList$1;->label:I

    .line 57
    .line 58
    const/4 v5, 0x0

    .line 59
    const/4 v6, 0x0

    .line 60
    const/16 v7, 0x18

    .line 61
    .line 62
    const/4 v8, 0x0

    .line 63
    move-object v1, v2

    .line 64
    move v2, v3

    .line 65
    move v3, v4

    .line 66
    move v4, v5

    .line 67
    move-object v5, v6

    .line 68
    move-object/from16 v6, p0

    .line 69
    .line 70
    invoke-static/range {v0 .. v8}, Lsr/a$a;->c(Lsr/a;Ljava/lang/String;IIILjava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    if-ne v0, v10, :cond_2

    .line 75
    .line 76
    return-object v10

    .line 77
    :cond_2
    :goto_0
    check-cast v0, Lcom/tn/lib/net/bean/BaseDto;

    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    const-string v2, "0"

    .line 84
    .line 85
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_3

    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    check-cast v0, Lcom/transsion/shorttv/bean/ShortTvInfoEpisodeList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :catch_0
    :cond_3
    move-object v0, v11

    .line 99
    :goto_1
    if-eqz v0, :cond_4

    .line 100
    .line 101
    iget v1, v9, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getEpisodeList$1;->$startPosition:I

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Lcom/transsion/shorttv/bean/ShortTvInfoEpisodeList;->setStartPosition(I)V

    .line 104
    .line 105
    .line 106
    :cond_4
    if-eqz v0, :cond_5

    .line 107
    .line 108
    iget v1, v9, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getEpisodeList$1;->$endPosition:I

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Lcom/transsion/shorttv/bean/ShortTvInfoEpisodeList;->setEndPosition(I)V

    .line 111
    .line 112
    .line 113
    :cond_5
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 114
    .line 115
    if-eqz v0, :cond_6

    .line 116
    .line 117
    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/ShortTvInfoEpisodeList;->getItems()Ljava/util/List;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    if-eqz v1, :cond_6

    .line 122
    .line 123
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    goto :goto_2

    .line 132
    :cond_6
    move-object v1, v11

    .line 133
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    const-string v4, "getShortTvEpisodeList---end, size= "

    .line 139
    .line 140
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    const/4 v6, 0x4

    .line 151
    const/4 v7, 0x0

    .line 152
    const-string v3, "ShortTvDownload"

    .line 153
    .line 154
    const/4 v5, 0x0

    .line 155
    invoke-static/range {v2 .. v7}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    if-eqz v0, :cond_18

    .line 159
    .line 160
    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/ShortTvInfoEpisodeList;->getItems()Ljava/util/List;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    if-nez v1, :cond_7

    .line 165
    .line 166
    goto/16 :goto_11

    .line 167
    .line 168
    :cond_7
    new-instance v13, Ljava/util/ArrayList;

    .line 169
    .line 170
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .line 172
    .line 173
    check-cast v1, Ljava/lang/Iterable;

    .line 174
    .line 175
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    if-eqz v2, :cond_c

    .line 184
    .line 185
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    check-cast v2, Lcom/transsion/shorttv/bean/ShortTVItem;

    .line 190
    .line 191
    new-instance v3, Lcom/transsion/shorttv/bean/DownloadItem;

    .line 192
    .line 193
    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/ShortTVItem;->getId()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v15

    .line 197
    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/ShortTvInfoEpisodeList;->getInfo()Lcom/transsion/shorttv/bean/Subject;

    .line 198
    .line 199
    .line 200
    move-result-object v4

    .line 201
    if-eqz v4, :cond_8

    .line 202
    .line 203
    invoke-virtual {v4}, Lcom/transsion/shorttv/bean/Subject;->getTitle()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    if-nez v4, :cond_9

    .line 208
    .line 209
    :cond_8
    const-string v4, ""

    .line 210
    .line 211
    :cond_9
    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/ShortTVItem;->getEp()I

    .line 212
    .line 213
    .line 214
    move-result v5

    .line 215
    new-instance v6, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    const-string v4, " EP"

    .line 224
    .line 225
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v16

    .line 235
    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/ShortTVItem;->getVideo()Lcom/transsion/shorttv/bean/Media;

    .line 236
    .line 237
    .line 238
    move-result-object v4

    .line 239
    if-eqz v4, :cond_a

    .line 240
    .line 241
    invoke-virtual {v4}, Lcom/transsion/shorttv/bean/Media;->getVideoAddress()Lcom/transsion/shorttv/bean/Video;

    .line 242
    .line 243
    .line 244
    move-result-object v4

    .line 245
    if-eqz v4, :cond_a

    .line 246
    .line 247
    invoke-virtual {v4}, Lcom/transsion/shorttv/bean/Video;->getUrl()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v4

    .line 251
    move-object/from16 v17, v4

    .line 252
    .line 253
    goto :goto_4

    .line 254
    :cond_a
    move-object/from16 v17, v11

    .line 255
    .line 256
    :goto_4
    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/ShortTVItem;->getVideo()Lcom/transsion/shorttv/bean/Media;

    .line 257
    .line 258
    .line 259
    move-result-object v4

    .line 260
    if-eqz v4, :cond_b

    .line 261
    .line 262
    invoke-virtual {v4}, Lcom/transsion/shorttv/bean/Media;->getVideoAddress()Lcom/transsion/shorttv/bean/Video;

    .line 263
    .line 264
    .line 265
    move-result-object v4

    .line 266
    if-eqz v4, :cond_b

    .line 267
    .line 268
    invoke-virtual {v4}, Lcom/transsion/shorttv/bean/Video;->getSize()Ljava/lang/Integer;

    .line 269
    .line 270
    .line 271
    move-result-object v4

    .line 272
    if-eqz v4, :cond_b

    .line 273
    .line 274
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 275
    .line 276
    .line 277
    move-result v4

    .line 278
    int-to-long v4, v4

    .line 279
    invoke-static {v4, v5}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    .line 280
    .line 281
    .line 282
    move-result-object v4

    .line 283
    move-object/from16 v19, v4

    .line 284
    .line 285
    goto :goto_5

    .line 286
    :cond_b
    move-object/from16 v19, v11

    .line 287
    .line 288
    :goto_5
    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/ShortTVItem;->getId()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v21

    .line 292
    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/ShortTVItem;->getSe()I

    .line 293
    .line 294
    .line 295
    move-result v4

    .line 296
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 297
    .line 298
    .line 299
    move-result-object v22

    .line 300
    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/ShortTVItem;->getSe()I

    .line 301
    .line 302
    .line 303
    move-result v23

    .line 304
    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/ShortTVItem;->getEp()I

    .line 305
    .line 306
    .line 307
    move-result v24

    .line 308
    const/4 v4, 0x0

    .line 309
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 310
    .line 311
    .line 312
    move-result-object v28

    .line 313
    const/16 v30, 0x400

    .line 314
    .line 315
    const/16 v31, 0x0

    .line 316
    .line 317
    const/16 v18, 0x2

    .line 318
    .line 319
    const-string v20, ""

    .line 320
    .line 321
    const/16 v25, 0x0

    .line 322
    .line 323
    const-string v26, ""

    .line 324
    .line 325
    const/16 v27, 0x0

    .line 326
    .line 327
    const/16 v29, 0x0

    .line 328
    .line 329
    move-object v14, v3

    .line 330
    invoke-direct/range {v14 .. v31}, Lcom/transsion/shorttv/bean/DownloadItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;IIILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v3, v2}, Lcom/transsion/shorttv/bean/DownloadItem;->setEpisodeItem(Lcom/transsion/shorttv/bean/ShortTVItem;)V

    .line 334
    .line 335
    .line 336
    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    goto/16 :goto_3

    .line 340
    .line 341
    :cond_c
    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/ShortTvInfoEpisodeList;->getPager()Lcom/transsion/shorttv/bean/Pager;

    .line 342
    .line 343
    .line 344
    move-result-object v14

    .line 345
    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/ShortTvInfoEpisodeList;->getInfo()Lcom/transsion/shorttv/bean/Subject;

    .line 346
    .line 347
    .line 348
    move-result-object v1

    .line 349
    if-eqz v1, :cond_d

    .line 350
    .line 351
    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/Subject;->getCover()Lcom/transsion/shorttv/bean/Cover;

    .line 352
    .line 353
    .line 354
    move-result-object v1

    .line 355
    move-object v15, v1

    .line 356
    goto :goto_6

    .line 357
    :cond_d
    move-object v15, v11

    .line 358
    :goto_6
    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/ShortTvInfoEpisodeList;->getInfo()Lcom/transsion/shorttv/bean/Subject;

    .line 359
    .line 360
    .line 361
    move-result-object v1

    .line 362
    if-eqz v1, :cond_e

    .line 363
    .line 364
    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v1

    .line 368
    move-object/from16 v16, v1

    .line 369
    .line 370
    goto :goto_7

    .line 371
    :cond_e
    move-object/from16 v16, v11

    .line 372
    .line 373
    :goto_7
    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/ShortTvInfoEpisodeList;->getInfo()Lcom/transsion/shorttv/bean/Subject;

    .line 374
    .line 375
    .line 376
    move-result-object v1

    .line 377
    if-eqz v1, :cond_f

    .line 378
    .line 379
    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/Subject;->getTitle()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v1

    .line 383
    move-object/from16 v18, v1

    .line 384
    .line 385
    goto :goto_8

    .line 386
    :cond_f
    move-object/from16 v18, v11

    .line 387
    .line 388
    :goto_8
    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/ShortTvInfoEpisodeList;->getInfo()Lcom/transsion/shorttv/bean/Subject;

    .line 389
    .line 390
    .line 391
    move-result-object v1

    .line 392
    if-eqz v1, :cond_10

    .line 393
    .line 394
    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    .line 395
    .line 396
    .line 397
    move-result-object v1

    .line 398
    if-eqz v1, :cond_10

    .line 399
    .line 400
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 401
    .line 402
    .line 403
    move-result v1

    .line 404
    :goto_9
    move/from16 v19, v1

    .line 405
    .line 406
    goto :goto_a

    .line 407
    :cond_10
    const/4 v1, 0x7

    .line 408
    goto :goto_9

    .line 409
    :goto_a
    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/ShortTvInfoEpisodeList;->getInfo()Lcom/transsion/shorttv/bean/Subject;

    .line 410
    .line 411
    .line 412
    move-result-object v1

    .line 413
    if-eqz v1, :cond_11

    .line 414
    .line 415
    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/Subject;->getTitle()Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v1

    .line 419
    move-object/from16 v20, v1

    .line 420
    .line 421
    goto :goto_b

    .line 422
    :cond_11
    move-object/from16 v20, v11

    .line 423
    .line 424
    :goto_b
    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/ShortTvInfoEpisodeList;->getInfo()Lcom/transsion/shorttv/bean/Subject;

    .line 425
    .line 426
    .line 427
    move-result-object v1

    .line 428
    if-eqz v1, :cond_12

    .line 429
    .line 430
    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/Subject;->getDescription()Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v1

    .line 434
    move-object/from16 v24, v1

    .line 435
    .line 436
    goto :goto_c

    .line 437
    :cond_12
    move-object/from16 v24, v11

    .line 438
    .line 439
    :goto_c
    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/ShortTvInfoEpisodeList;->getInfo()Lcom/transsion/shorttv/bean/Subject;

    .line 440
    .line 441
    .line 442
    move-result-object v1

    .line 443
    if-eqz v1, :cond_13

    .line 444
    .line 445
    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/Subject;->getTotalEpisode()I

    .line 446
    .line 447
    .line 448
    move-result v1

    .line 449
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 450
    .line 451
    .line 452
    move-result-object v1

    .line 453
    move-object/from16 v22, v1

    .line 454
    .line 455
    goto :goto_d

    .line 456
    :cond_13
    move-object/from16 v22, v11

    .line 457
    .line 458
    :goto_d
    new-instance v1, Lcom/transsion/shorttv/bean/DownloadListBean;

    .line 459
    .line 460
    move-object v12, v1

    .line 461
    iget v2, v9, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getEpisodeList$1;->$startPosition:I

    .line 462
    .line 463
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 464
    .line 465
    .line 466
    move-result-object v21

    .line 467
    const v34, 0x1ff400

    .line 468
    .line 469
    .line 470
    const/16 v35, 0x0

    .line 471
    .line 472
    const/16 v17, 0x0

    .line 473
    .line 474
    const/16 v23, 0x0

    .line 475
    .line 476
    const/16 v25, 0x0

    .line 477
    .line 478
    const/16 v26, 0x0

    .line 479
    .line 480
    const/16 v27, 0x0

    .line 481
    .line 482
    const/16 v28, 0x0

    .line 483
    .line 484
    const/16 v29, 0x0

    .line 485
    .line 486
    const/16 v30, 0x0

    .line 487
    .line 488
    const/16 v31, 0x0

    .line 489
    .line 490
    const/16 v32, 0x0

    .line 491
    .line 492
    const/16 v33, 0x0

    .line 493
    .line 494
    invoke-direct/range {v12 .. v35}, Lcom/transsion/shorttv/bean/DownloadListBean;-><init>(Ljava/util/List;Lcom/transsion/shorttv/bean/Pager;Lcom/transsion/shorttv/bean/Cover;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/transsion/shorttv/bean/ShortTVFavInfo;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ZIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 495
    .line 496
    .line 497
    iget v2, v9, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getEpisodeList$1;->$startPosition:I

    .line 498
    .line 499
    iget v3, v9, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getEpisodeList$1;->$endPosition:I

    .line 500
    .line 501
    invoke-virtual {v1, v2}, Lcom/transsion/shorttv/bean/DownloadListBean;->setStartPosition(I)V

    .line 502
    .line 503
    .line 504
    invoke-virtual {v1, v3}, Lcom/transsion/shorttv/bean/DownloadListBean;->setEndPosition(I)V

    .line 505
    .line 506
    .line 507
    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/ShortTvInfoEpisodeList;->getInfo()Lcom/transsion/shorttv/bean/Subject;

    .line 508
    .line 509
    .line 510
    move-result-object v2

    .line 511
    if-eqz v2, :cond_14

    .line 512
    .line 513
    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/Subject;->getGenre()Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object v2

    .line 517
    goto :goto_e

    .line 518
    :cond_14
    move-object v2, v11

    .line 519
    :goto_e
    invoke-virtual {v1, v2}, Lcom/transsion/shorttv/bean/DownloadListBean;->setGenre(Ljava/lang/String;)V

    .line 520
    .line 521
    .line 522
    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/ShortTvInfoEpisodeList;->getInfo()Lcom/transsion/shorttv/bean/Subject;

    .line 523
    .line 524
    .line 525
    move-result-object v2

    .line 526
    if-eqz v2, :cond_15

    .line 527
    .line 528
    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/Subject;->getTags()Ljava/util/List;

    .line 529
    .line 530
    .line 531
    move-result-object v2

    .line 532
    if-eqz v2, :cond_15

    .line 533
    .line 534
    check-cast v2, Ljava/util/Collection;

    .line 535
    .line 536
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    .line 537
    .line 538
    .line 539
    move-result-object v2

    .line 540
    goto :goto_f

    .line 541
    :cond_15
    move-object v2, v11

    .line 542
    :goto_f
    invoke-virtual {v1, v2}, Lcom/transsion/shorttv/bean/DownloadListBean;->setTags(Ljava/util/List;)V

    .line 543
    .line 544
    .line 545
    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/ShortTvInfoEpisodeList;->getInfo()Lcom/transsion/shorttv/bean/Subject;

    .line 546
    .line 547
    .line 548
    move-result-object v2

    .line 549
    if-eqz v2, :cond_16

    .line 550
    .line 551
    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/Subject;->getReleaseDate()Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object v2

    .line 555
    goto :goto_10

    .line 556
    :cond_16
    move-object v2, v11

    .line 557
    :goto_10
    invoke-virtual {v1, v2}, Lcom/transsion/shorttv/bean/DownloadListBean;->setReleaseDate(Ljava/lang/String;)V

    .line 558
    .line 559
    .line 560
    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/ShortTvInfoEpisodeList;->getInfo()Lcom/transsion/shorttv/bean/Subject;

    .line 561
    .line 562
    .line 563
    move-result-object v0

    .line 564
    if-eqz v0, :cond_17

    .line 565
    .line 566
    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/Subject;->getShortTVFavInfo()Lcom/transsion/shorttv/bean/ShortTVFavInfo;

    .line 567
    .line 568
    .line 569
    move-result-object v11

    .line 570
    :cond_17
    invoke-virtual {v1, v11}, Lcom/transsion/shorttv/bean/DownloadListBean;->setShortTVFavInfo(Lcom/transsion/shorttv/bean/ShortTVFavInfo;)V

    .line 571
    .line 572
    .line 573
    iget-object v0, v9, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getEpisodeList$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;

    .line 574
    .line 575
    invoke-virtual {v0}, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->l()Landroidx/lifecycle/b0;

    .line 576
    .line 577
    .line 578
    move-result-object v0

    .line 579
    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 580
    .line 581
    .line 582
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 583
    .line 584
    return-object v0

    .line 585
    :cond_18
    :goto_11
    iget-object v0, v9, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getEpisodeList$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;

    .line 586
    .line 587
    invoke-virtual {v0}, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->l()Landroidx/lifecycle/b0;

    .line 588
    .line 589
    .line 590
    move-result-object v0

    .line 591
    invoke-virtual {v0, v11}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 592
    .line 593
    .line 594
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 595
    .line 596
    return-object v0
.end method
