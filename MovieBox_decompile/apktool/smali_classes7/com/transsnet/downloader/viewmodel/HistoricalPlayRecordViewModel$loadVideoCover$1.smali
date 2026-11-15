.class final Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$loadVideoCover$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->Y()V
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
    c = "com.transsnet.downloader.viewmodel.HistoricalPlayRecordViewModel$loadVideoCover$1"
    f = "HistoricalPlayRecordViewModel.kt"
    l = {
        0x109,
        0x10d,
        0x114
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field I$0:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$loadVideoCover$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$loadVideoCover$1;->this$0:Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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
    new-instance p1, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$loadVideoCover$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$loadVideoCover$1;->this$0:Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$loadVideoCover$1;-><init>(Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;Lkotlin/coroutines/Continuation;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$loadVideoCover$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$loadVideoCover$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$loadVideoCover$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$loadVideoCover$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v8

    .line 8
    iget v1, v7, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$loadVideoCover$1;->label:I

    .line 9
    .line 10
    const/4 v9, 0x0

    .line 11
    const/4 v10, 0x3

    .line 12
    const/4 v11, 0x2

    .line 13
    if-eqz v1, :cond_3

    .line 14
    .line 15
    if-eq v1, v0, :cond_2

    .line 16
    .line 17
    if-eq v1, v11, :cond_1

    .line 18
    .line 19
    if-ne v1, v10, :cond_0

    .line 20
    .line 21
    iget v1, v7, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$loadVideoCover$1;->I$0:I

    .line 22
    .line 23
    iget-object v2, v7, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$loadVideoCover$1;->L$3:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v2, Ljava/util/Iterator;

    .line 26
    .line 27
    iget-object v3, v7, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$loadVideoCover$1;->L$2:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v3, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 30
    .line 31
    iget-object v4, v7, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$loadVideoCover$1;->L$1:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v4, Ljava/util/Iterator;

    .line 34
    .line 35
    iget-object v5, v7, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$loadVideoCover$1;->L$0:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v5, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;

    .line 38
    .line 39
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    .line 42
    goto/16 :goto_6

    .line 43
    .line 44
    :catchall_0
    move-exception v0

    .line 45
    goto/16 :goto_7

    .line 46
    .line 47
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 48
    .line 49
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 50
    .line 51
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw v0

    .line 55
    :cond_1
    iget-object v1, v7, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$loadVideoCover$1;->L$2:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v1, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 58
    .line 59
    iget-object v2, v7, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$loadVideoCover$1;->L$1:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v2, Ljava/util/Iterator;

    .line 62
    .line 63
    iget-object v3, v7, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$loadVideoCover$1;->L$0:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v3, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;

    .line 66
    .line 67
    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    .line 69
    .line 70
    goto/16 :goto_3

    .line 71
    .line 72
    :cond_2
    iget-object v1, v7, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$loadVideoCover$1;->L$2:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v1, Ljava/lang/String;

    .line 75
    .line 76
    iget-object v2, v7, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$loadVideoCover$1;->L$1:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v2, Ljava/util/Iterator;

    .line 79
    .line 80
    iget-object v3, v7, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$loadVideoCover$1;->L$0:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v3, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;

    .line 83
    .line 84
    :try_start_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    .line 86
    .line 87
    move-object v14, v1

    .line 88
    move-object/from16 v1, p1

    .line 89
    .line 90
    goto/16 :goto_2

    .line 91
    .line 92
    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    iget-object v1, v7, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$loadVideoCover$1;->this$0:Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;

    .line 96
    .line 97
    :try_start_3
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 98
    .line 99
    invoke-virtual {v1}, Lcom/transsnet/downloader/viewmodel/a;->d()Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    move-object v12, v1

    .line 108
    move-object v13, v2

    .line 109
    :cond_4
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    if-eqz v1, :cond_10

    .line 114
    .line 115
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    check-cast v1, Lcom/transsnet/downloader/viewmodel/j0;

    .line 120
    .line 121
    sget-object v2, Lcom/transsnet/downloader/viewmodel/a0;->a:Lcom/transsnet/downloader/viewmodel/a0;

    .line 122
    .line 123
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2, v1}, Lcom/transsnet/downloader/viewmodel/a0;->m(Lcom/transsnet/downloader/viewmodel/j0;)Landroid/graphics/Bitmap;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    if-eqz v3, :cond_4

    .line 131
    .line 132
    invoke-virtual {v1}, Lcom/transsnet/downloader/viewmodel/j0;->e()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 136
    const-string v5, ""

    .line 137
    .line 138
    if-nez v4, :cond_5

    .line 139
    .line 140
    move-object v4, v5

    .line 141
    :cond_5
    :try_start_4
    invoke-virtual {v2, v4}, Lcom/transsnet/downloader/viewmodel/a0;->k(Ljava/lang/String;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    invoke-virtual {v2, v4, v3}, Lcom/transsnet/downloader/viewmodel/a0;->w(Ljava/lang/String;Landroid/graphics/Bitmap;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v14

    .line 149
    sget-object v2, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    .line 150
    .line 151
    invoke-virtual {v2}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    invoke-virtual {v1}, Lcom/transsnet/downloader/viewmodel/j0;->e()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    if-nez v1, :cond_6

    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_6
    move-object v5, v1

    .line 163
    :goto_1
    iput-object v12, v7, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$loadVideoCover$1;->L$0:Ljava/lang/Object;

    .line 164
    .line 165
    iput-object v13, v7, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$loadVideoCover$1;->L$1:Ljava/lang/Object;

    .line 166
    .line 167
    iput-object v14, v7, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$loadVideoCover$1;->L$2:Ljava/lang/Object;

    .line 168
    .line 169
    iput-object v9, v7, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$loadVideoCover$1;->L$3:Ljava/lang/Object;

    .line 170
    .line 171
    iput v0, v7, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$loadVideoCover$1;->label:I

    .line 172
    .line 173
    const/4 v3, 0x0

    .line 174
    const/4 v6, 0x2

    .line 175
    const/4 v15, 0x0

    .line 176
    move-object v1, v2

    .line 177
    move-object v2, v5

    .line 178
    move-object/from16 v4, p0

    .line 179
    .line 180
    move v5, v6

    .line 181
    move-object v6, v15

    .line 182
    invoke-static/range {v1 .. v6}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->F(Lcom/transsnet/downloader/manager/DownloadEsHelper;Ljava/lang/String;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    if-ne v1, v8, :cond_7

    .line 187
    .line 188
    return-object v8

    .line 189
    :cond_7
    move-object v3, v12

    .line 190
    move-object v2, v13

    .line 191
    :goto_2
    check-cast v1, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 192
    .line 193
    if-eqz v1, :cond_f

    .line 194
    .line 195
    invoke-virtual {v1, v14}, Lcom/transsion/baselib/db/download/DownloadBean;->setCover(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    sget-object v4, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    .line 199
    .line 200
    invoke-virtual {v4}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    .line 201
    .line 202
    .line 203
    move-result-object v4

    .line 204
    iput-object v3, v7, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$loadVideoCover$1;->L$0:Ljava/lang/Object;

    .line 205
    .line 206
    iput-object v2, v7, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$loadVideoCover$1;->L$1:Ljava/lang/Object;

    .line 207
    .line 208
    iput-object v1, v7, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$loadVideoCover$1;->L$2:Ljava/lang/Object;

    .line 209
    .line 210
    iput v11, v7, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$loadVideoCover$1;->label:I

    .line 211
    .line 212
    invoke-virtual {v4, v1, v7}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->b0(Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v4

    .line 216
    if-ne v4, v8, :cond_8

    .line 217
    .line 218
    return-object v8

    .line 219
    :cond_8
    :goto_3
    invoke-virtual {v3}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->J()Landroidx/lifecycle/b0;

    .line 220
    .line 221
    .line 222
    move-result-object v4

    .line 223
    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v4

    .line 227
    check-cast v4, Ljava/util/List;

    .line 228
    .line 229
    if-eqz v4, :cond_f

    .line 230
    .line 231
    check-cast v4, Ljava/lang/Iterable;

    .line 232
    .line 233
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 234
    .line 235
    .line 236
    move-result-object v4

    .line 237
    const/4 v5, 0x0

    .line 238
    move-object/from16 v16, v3

    .line 239
    .line 240
    move-object v3, v1

    .line 241
    move-object/from16 v1, v16

    .line 242
    .line 243
    move-object/from16 v17, v4

    .line 244
    .line 245
    move-object v4, v2

    .line 246
    move-object/from16 v2, v17

    .line 247
    .line 248
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 249
    .line 250
    .line 251
    move-result v6

    .line 252
    if-eqz v6, :cond_e

    .line 253
    .line 254
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v6

    .line 258
    add-int/lit8 v12, v5, 0x1

    .line 259
    .line 260
    if-gez v5, :cond_9

    .line 261
    .line 262
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 263
    .line 264
    .line 265
    :cond_9
    check-cast v6, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;

    .line 266
    .line 267
    invoke-virtual {v6}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;->getHistorical()Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;

    .line 268
    .line 269
    .line 270
    move-result-object v13

    .line 271
    if-eqz v13, :cond_a

    .line 272
    .line 273
    invoke-virtual {v13}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getVideo()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 274
    .line 275
    .line 276
    move-result-object v13

    .line 277
    if-eqz v13, :cond_a

    .line 278
    .line 279
    invoke-virtual {v13}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v13

    .line 283
    goto :goto_5

    .line 284
    :cond_a
    move-object v13, v9

    .line 285
    :goto_5
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v14

    .line 289
    invoke-static {v13, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 290
    .line 291
    .line 292
    move-result v13

    .line 293
    if-eqz v13, :cond_d

    .line 294
    .line 295
    invoke-virtual {v6}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;->getHistorical()Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;

    .line 296
    .line 297
    .line 298
    move-result-object v6

    .line 299
    if-eqz v6, :cond_b

    .line 300
    .line 301
    invoke-virtual {v6, v3}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->setVideo(Lcom/transsion/baselib/db/download/DownloadBean;)V

    .line 302
    .line 303
    .line 304
    :cond_b
    invoke-virtual {v1}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->P()Lkotlinx/coroutines/flow/x0;

    .line 305
    .line 306
    .line 307
    move-result-object v6

    .line 308
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 309
    .line 310
    .line 311
    move-result-object v5

    .line 312
    iput-object v1, v7, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$loadVideoCover$1;->L$0:Ljava/lang/Object;

    .line 313
    .line 314
    iput-object v4, v7, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$loadVideoCover$1;->L$1:Ljava/lang/Object;

    .line 315
    .line 316
    iput-object v3, v7, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$loadVideoCover$1;->L$2:Ljava/lang/Object;

    .line 317
    .line 318
    iput-object v2, v7, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$loadVideoCover$1;->L$3:Ljava/lang/Object;

    .line 319
    .line 320
    iput v12, v7, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$loadVideoCover$1;->I$0:I

    .line 321
    .line 322
    iput v10, v7, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$loadVideoCover$1;->label:I

    .line 323
    .line 324
    invoke-interface {v6, v5, v7}, Lkotlinx/coroutines/flow/w0;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v5

    .line 328
    if-ne v5, v8, :cond_c

    .line 329
    .line 330
    return-object v8

    .line 331
    :cond_c
    move-object v5, v1

    .line 332
    move v1, v12

    .line 333
    :goto_6
    move-object/from16 v16, v5

    .line 334
    .line 335
    move v5, v1

    .line 336
    move-object/from16 v1, v16

    .line 337
    .line 338
    goto :goto_4

    .line 339
    :cond_d
    move v5, v12

    .line 340
    goto :goto_4

    .line 341
    :cond_e
    move-object v3, v1

    .line 342
    move-object v2, v4

    .line 343
    :cond_f
    move-object v13, v2

    .line 344
    move-object v12, v3

    .line 345
    goto/16 :goto_0

    .line 346
    .line 347
    :cond_10
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 348
    .line 349
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 353
    goto :goto_8

    .line 354
    :goto_7
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 355
    .line 356
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    move-result-object v0

    .line 364
    :goto_8
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    if-nez v0, :cond_11

    .line 369
    .line 370
    goto :goto_9

    .line 371
    :cond_11
    sget-object v1, Lcom/transsnet/downloader/viewmodel/a0;->a:Lcom/transsnet/downloader/viewmodel/a0;

    .line 372
    .line 373
    new-instance v2, Ljava/lang/StringBuilder;

    .line 374
    .line 375
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 376
    .line 377
    .line 378
    const-string v3, "loadVideoCover --> it = "

    .line 379
    .line 380
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v0

    .line 390
    invoke-virtual {v1, v0}, Lcom/transsnet/downloader/viewmodel/a0;->t(Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    :goto_9
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 394
    .line 395
    return-object v0
.end method
