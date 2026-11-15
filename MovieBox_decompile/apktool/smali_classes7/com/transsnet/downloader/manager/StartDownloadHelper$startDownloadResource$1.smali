.class final Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/manager/StartDownloadHelper;->f(Ljava/util/List;)V
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
    c = "com.transsnet.downloader.manager.StartDownloadHelper$startDownloadResource$1"
    f = "StartDownloadHelper.kt"
    l = {
        0x62
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $beanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/baselib/db/download/DownloadBean;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/transsnet/downloader/manager/StartDownloadHelper;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/transsnet/downloader/manager/StartDownloadHelper;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/transsion/baselib/db/download/DownloadBean;",
            ">;",
            "Lcom/transsnet/downloader/manager/StartDownloadHelper;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1;->$beanList:Ljava/util/List;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1;->this$0:Lcom/transsnet/downloader/manager/StartDownloadHelper;

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
    new-instance p1, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1;->$beanList:Ljava/util/List;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1;->this$0:Lcom/transsnet/downloader/manager/StartDownloadHelper;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1;-><init>(Ljava/util/List;Lcom/transsnet/downloader/manager/StartDownloadHelper;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

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
    iget v2, v0, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1;->label:I

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    if-eqz v2, :cond_1

    .line 11
    .line 12
    if-ne v2, v3, :cond_0

    .line 13
    .line 14
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    goto/16 :goto_4

    .line 18
    .line 19
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 22
    .line 23
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw v1

    .line 27
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    new-instance v2, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    .line 35
    new-instance v4, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    iget-object v5, v0, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1;->$beanList:Ljava/util/List;

    .line 41
    .line 42
    const/4 v6, 0x0

    .line 43
    if-eqz v5, :cond_b

    .line 44
    .line 45
    check-cast v5, Ljava/util/Collection;

    .line 46
    .line 47
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    xor-int/2addr v5, v3

    .line 52
    if-ne v5, v3, :cond_b

    .line 53
    .line 54
    iget-object v5, v0, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1;->$beanList:Ljava/util/List;

    .line 55
    .line 56
    check-cast v5, Ljava/lang/Iterable;

    .line 57
    .line 58
    iget-object v7, v0, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1;->this$0:Lcom/transsnet/downloader/manager/StartDownloadHelper;

    .line 59
    .line 60
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result v8

    .line 68
    if-eqz v8, :cond_b

    .line 69
    .line 70
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    check-cast v8, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 75
    .line 76
    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubtitleStarted()I

    .line 77
    .line 78
    .line 79
    move-result v9

    .line 80
    const-string v10, ", subjectId = "

    .line 81
    .line 82
    if-ne v9, v3, :cond_2

    .line 83
    .line 84
    sget-object v11, Lwf/a;->a:Lwf/a$a;

    .line 85
    .line 86
    invoke-static {v7}, Lcom/transsnet/downloader/manager/StartDownloadHelper;->c(Lcom/transsnet/downloader/manager/StartDownloadHelper;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v12

    .line 90
    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v9

    .line 94
    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v13

    .line 98
    new-instance v14, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    const-string v15, "onStartDownload\uff0cis started, do not try again, name =  "

    .line 104
    .line 105
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v13

    .line 121
    const/4 v15, 0x4

    .line 122
    const/16 v16, 0x0

    .line 123
    .line 124
    const/4 v14, 0x0

    .line 125
    invoke-static/range {v11 .. v16}, Lwf/a$a;->v(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v8, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setStartRequested(Z)V

    .line 129
    .line 130
    .line 131
    goto/16 :goto_3

    .line 132
    .line 133
    :cond_2
    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->isUGCVideo()Z

    .line 134
    .line 135
    .line 136
    move-result v9

    .line 137
    const-string v11, ", resourceId = "

    .line 138
    .line 139
    if-eqz v9, :cond_6

    .line 140
    .line 141
    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoId()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v9

    .line 145
    if-eqz v9, :cond_5

    .line 146
    .line 147
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    .line 148
    .line 149
    .line 150
    move-result v9

    .line 151
    if-nez v9, :cond_3

    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_3
    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v9

    .line 158
    if-eqz v9, :cond_5

    .line 159
    .line 160
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    .line 161
    .line 162
    .line 163
    move-result v9

    .line 164
    if-nez v9, :cond_4

    .line 165
    .line 166
    goto :goto_1

    .line 167
    :cond_4
    new-instance v9, Lcom/transsnet/downloader/manager/UGCStartDownloadBean;

    .line 168
    .line 169
    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoId()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v10

    .line 173
    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v12

    .line 177
    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubtitleIdType()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v13

    .line 181
    invoke-direct {v9, v10, v12, v13}, Lcom/transsnet/downloader/manager/UGCStartDownloadBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    invoke-virtual {v8, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setStartRequested(Z)V

    .line 188
    .line 189
    .line 190
    sget-object v14, Lwf/a;->a:Lwf/a$a;

    .line 191
    .line 192
    invoke-static {v7}, Lcom/transsnet/downloader/manager/StartDownloadHelper;->c(Lcom/transsnet/downloader/manager/StartDownloadHelper;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v15

    .line 196
    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v9

    .line 200
    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoId()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v10

    .line 204
    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v12

    .line 208
    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubtitleIdType()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v8

    .line 212
    new-instance v13, Ljava/lang/StringBuilder;

    .line 213
    .line 214
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    .line 216
    .line 217
    const-string v3, "onStartDownload UGC, name = "

    .line 218
    .line 219
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    const-string v3, ", ugcVideoId = "

    .line 226
    .line 227
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    const-string v3, ", idType = "

    .line 240
    .line 241
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v16

    .line 251
    const/16 v18, 0x4

    .line 252
    .line 253
    const/16 v19, 0x0

    .line 254
    .line 255
    const/16 v17, 0x0

    .line 256
    .line 257
    invoke-static/range {v14 .. v19}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 258
    .line 259
    .line 260
    goto/16 :goto_3

    .line 261
    .line 262
    :cond_5
    :goto_1
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 263
    .line 264
    invoke-static {v7}, Lcom/transsnet/downloader/manager/StartDownloadHelper;->c(Lcom/transsnet/downloader/manager/StartDownloadHelper;)Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v9

    .line 268
    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v8

    .line 272
    new-instance v10, Ljava/lang/StringBuilder;

    .line 273
    .line 274
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 275
    .line 276
    .line 277
    const-string v11, "onStartDownload fail\uff0c has no ugcVideoId or resourceId, name = "

    .line 278
    .line 279
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v10

    .line 289
    const/4 v12, 0x4

    .line 290
    const/4 v13, 0x0

    .line 291
    const/4 v11, 0x0

    .line 292
    move-object v8, v3

    .line 293
    invoke-static/range {v8 .. v13}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 294
    .line 295
    .line 296
    goto/16 :goto_3

    .line 297
    .line 298
    :cond_6
    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v3

    .line 302
    if-eqz v3, :cond_a

    .line 303
    .line 304
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 305
    .line 306
    .line 307
    move-result v3

    .line 308
    if-nez v3, :cond_7

    .line 309
    .line 310
    goto :goto_2

    .line 311
    :cond_7
    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v3

    .line 315
    if-eqz v3, :cond_8

    .line 316
    .line 317
    const/4 v9, 0x0

    .line 318
    const/4 v12, 0x2

    .line 319
    const-string v13, "http"

    .line 320
    .line 321
    invoke-static {v3, v13, v9, v12, v6}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 322
    .line 323
    .line 324
    move-result v3

    .line 325
    const/4 v9, 0x1

    .line 326
    if-ne v3, v9, :cond_9

    .line 327
    .line 328
    goto :goto_2

    .line 329
    :cond_8
    const/4 v9, 0x1

    .line 330
    :cond_9
    new-instance v3, Lcom/transsnet/downloader/bean/StartlDownloadBean;

    .line 331
    .line 332
    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v12

    .line 336
    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v13

    .line 340
    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->getEpse()I

    .line 341
    .line 342
    .line 343
    move-result v14

    .line 344
    invoke-static {v14}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 345
    .line 346
    .line 347
    move-result-object v14

    .line 348
    invoke-direct {v3, v12, v13, v14}, Lcom/transsnet/downloader/bean/StartlDownloadBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    .line 353
    .line 354
    invoke-virtual {v8, v9}, Lcom/transsion/baselib/db/download/DownloadBean;->setStartRequested(Z)V

    .line 355
    .line 356
    .line 357
    sget-object v20, Lwf/a;->a:Lwf/a$a;

    .line 358
    .line 359
    invoke-static {v7}, Lcom/transsnet/downloader/manager/StartDownloadHelper;->c(Lcom/transsnet/downloader/manager/StartDownloadHelper;)Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v21

    .line 363
    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v3

    .line 367
    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v9

    .line 371
    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v12

    .line 375
    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->getEpse()I

    .line 376
    .line 377
    .line 378
    move-result v8

    .line 379
    new-instance v13, Ljava/lang/StringBuilder;

    .line 380
    .line 381
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 382
    .line 383
    .line 384
    const-string v14, "onStartDownload, name = "

    .line 385
    .line 386
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    .line 395
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    const-string v3, ", episode = "

    .line 405
    .line 406
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v22

    .line 416
    const/16 v24, 0x4

    .line 417
    .line 418
    const/16 v25, 0x0

    .line 419
    .line 420
    const/16 v23, 0x0

    .line 421
    .line 422
    invoke-static/range {v20 .. v25}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 423
    .line 424
    .line 425
    goto :goto_3

    .line 426
    :cond_a
    :goto_2
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 427
    .line 428
    invoke-static {v7}, Lcom/transsnet/downloader/manager/StartDownloadHelper;->c(Lcom/transsnet/downloader/manager/StartDownloadHelper;)Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v9

    .line 432
    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v8

    .line 436
    new-instance v10, Ljava/lang/StringBuilder;

    .line 437
    .line 438
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 439
    .line 440
    .line 441
    const-string v11, "onStartDownload fail\uff0c has no resourceId, name = "

    .line 442
    .line 443
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    .line 448
    .line 449
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v10

    .line 453
    const/4 v12, 0x4

    .line 454
    const/4 v13, 0x0

    .line 455
    const/4 v11, 0x0

    .line 456
    move-object v8, v3

    .line 457
    invoke-static/range {v8 .. v13}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 458
    .line 459
    .line 460
    :goto_3
    const/4 v3, 0x1

    .line 461
    goto/16 :goto_0

    .line 462
    .line 463
    :cond_b
    new-instance v3, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1$2;

    .line 464
    .line 465
    iget-object v5, v0, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1;->this$0:Lcom/transsnet/downloader/manager/StartDownloadHelper;

    .line 466
    .line 467
    invoke-direct {v3, v2, v5, v4, v6}, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1$2;-><init>(Ljava/util/ArrayList;Lcom/transsnet/downloader/manager/StartDownloadHelper;Ljava/util/ArrayList;Lkotlin/coroutines/Continuation;)V

    .line 468
    .line 469
    .line 470
    invoke-static {v3}, Lkotlinx/coroutines/flow/c;->r(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/a;

    .line 471
    .line 472
    .line 473
    move-result-object v2

    .line 474
    new-instance v3, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1$3;

    .line 475
    .line 476
    iget-object v4, v0, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1;->this$0:Lcom/transsnet/downloader/manager/StartDownloadHelper;

    .line 477
    .line 478
    invoke-direct {v3, v4, v6}, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1$3;-><init>(Lcom/transsnet/downloader/manager/StartDownloadHelper;Lkotlin/coroutines/Continuation;)V

    .line 479
    .line 480
    .line 481
    invoke-static {v2, v3}, Lkotlinx/coroutines/flow/c;->e(Lkotlinx/coroutines/flow/a;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/a;

    .line 482
    .line 483
    .line 484
    move-result-object v2

    .line 485
    new-instance v3, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1$4;

    .line 486
    .line 487
    iget-object v4, v0, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1;->$beanList:Ljava/util/List;

    .line 488
    .line 489
    invoke-direct {v3, v4}, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1$4;-><init>(Ljava/util/List;)V

    .line 490
    .line 491
    .line 492
    const/4 v4, 0x1

    .line 493
    iput v4, v0, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1;->label:I

    .line 494
    .line 495
    invoke-interface {v2, v3, v0}, Lkotlinx/coroutines/flow/a;->a(Lkotlinx/coroutines/flow/b;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 496
    .line 497
    .line 498
    move-result-object v2

    .line 499
    if-ne v2, v1, :cond_c

    .line 500
    .line 501
    return-object v1

    .line 502
    :cond_c
    :goto_4
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 503
    .line 504
    return-object v1
.end method
