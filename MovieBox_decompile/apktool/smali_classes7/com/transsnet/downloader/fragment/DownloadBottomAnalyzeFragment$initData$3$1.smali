.class final Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->M0()V
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
    c = "com.transsnet.downloader.fragment.DownloadBottomAnalyzeFragment$initData$3$1"
    f = "DownloadBottomAnalyzeFragment.kt"
    l = {
        0xe2
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $it:Lcom/transsion/moviedetailapi/bean/Subject;

.field label:I

.field final synthetic this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;


# direct methods
.method constructor <init>(Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/moviedetailapi/bean/Subject;",
            "Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;->$it:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

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
    new-instance p1, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;->$it:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;-><init>(Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 98

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    iget v3, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;->label:I

    .line 9
    .line 10
    const-string v4, ""

    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    if-eqz v3, :cond_1

    .line 14
    .line 15
    if-ne v3, v1, :cond_0

    .line 16
    .line 17
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    move-object/from16 v3, p1

    .line 21
    .line 22
    goto :goto_1

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
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    sget-object v3, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    .line 35
    .line 36
    invoke-virtual {v3}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    iget-object v6, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;->$it:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 41
    .line 42
    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/Subject;->getResourceDetector()Lcom/transsion/moviedetailapi/bean/ResourceDetectors;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    if-eqz v6, :cond_2

    .line 47
    .line 48
    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;->getResourceId()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    if-nez v6, :cond_4

    .line 53
    .line 54
    :cond_2
    iget-object v6, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;->$it:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 55
    .line 56
    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/Subject;->getResourceDetector()Lcom/transsion/moviedetailapi/bean/ResourceDetectors;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    if-eqz v6, :cond_3

    .line 61
    .line 62
    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;->getDownloadUrl()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    goto :goto_0

    .line 67
    :cond_3
    move-object v6, v5

    .line 68
    :goto_0
    if-nez v6, :cond_4

    .line 69
    .line 70
    move-object v6, v4

    .line 71
    :cond_4
    iput v1, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;->label:I

    .line 72
    .line 73
    invoke-virtual {v3, v6, v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->p(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    if-ne v3, v2, :cond_5

    .line 78
    .line 79
    return-object v2

    .line 80
    :cond_5
    :goto_1
    check-cast v3, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 81
    .line 82
    if-eqz v3, :cond_6

    .line 83
    .line 84
    sget-object v6, Lwf/a;->a:Lwf/a$a;

    .line 85
    .line 86
    const/4 v10, 0x4

    .line 87
    const/4 v11, 0x0

    .line 88
    const-string v7, "downloadAna"

    .line 89
    .line 90
    const-string v8, "single\uff0c get download bean from database"

    .line 91
    .line 92
    const/4 v9, 0x0

    .line 93
    invoke-static/range {v6 .. v11}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    iget-object v2, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    .line 97
    .line 98
    invoke-static {v2, v3}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->F0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;Lcom/transsion/baselib/db/download/DownloadBean;)V

    .line 99
    .line 100
    .line 101
    goto/16 :goto_c

    .line 102
    .line 103
    :cond_6
    iget-object v2, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    .line 104
    .line 105
    new-instance v3, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 106
    .line 107
    iget-object v6, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;->$it:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 108
    .line 109
    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/Subject;->getResourceDetector()Lcom/transsion/moviedetailapi/bean/ResourceDetectors;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    if-eqz v6, :cond_8

    .line 114
    .line 115
    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;->getDownloadUrl()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    if-nez v6, :cond_7

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_7
    move-object v7, v6

    .line 123
    goto :goto_3

    .line 124
    :cond_8
    :goto_2
    move-object v7, v4

    .line 125
    :goto_3
    iget-object v6, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;->$it:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 126
    .line 127
    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/Subject;->getResourceDetector()Lcom/transsion/moviedetailapi/bean/ResourceDetectors;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    if-eqz v6, :cond_a

    .line 132
    .line 133
    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;->getResourceId()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v6

    .line 137
    if-nez v6, :cond_9

    .line 138
    .line 139
    goto :goto_4

    .line 140
    :cond_9
    move-object v8, v6

    .line 141
    goto :goto_5

    .line 142
    :cond_a
    :goto_4
    move-object v8, v4

    .line 143
    :goto_5
    iget-object v6, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;->$it:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 144
    .line 145
    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/Subject;->getTitle()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v6

    .line 149
    if-nez v6, :cond_b

    .line 150
    .line 151
    move-object v9, v4

    .line 152
    goto :goto_6

    .line 153
    :cond_b
    move-object v9, v6

    .line 154
    :goto_6
    iget-object v6, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;->$it:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 155
    .line 156
    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 157
    .line 158
    .line 159
    move-result-object v6

    .line 160
    if-eqz v6, :cond_c

    .line 161
    .line 162
    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    move-object v10, v6

    .line 167
    goto :goto_7

    .line 168
    :cond_c
    move-object v10, v5

    .line 169
    :goto_7
    iget-object v6, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;->$it:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 170
    .line 171
    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/Subject;->getResourceDetector()Lcom/transsion/moviedetailapi/bean/ResourceDetectors;

    .line 172
    .line 173
    .line 174
    move-result-object v6

    .line 175
    if-eqz v6, :cond_d

    .line 176
    .line 177
    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;->getTotalSize()Ljava/lang/Long;

    .line 178
    .line 179
    .line 180
    move-result-object v6

    .line 181
    move-object v11, v6

    .line 182
    goto :goto_8

    .line 183
    :cond_d
    move-object v11, v5

    .line 184
    :goto_8
    const v96, 0xffff

    .line 185
    .line 186
    .line 187
    const/16 v97, 0x0

    .line 188
    .line 189
    const/4 v12, 0x0

    .line 190
    const/4 v13, 0x0

    .line 191
    const/4 v14, 0x0

    .line 192
    const/4 v15, 0x0

    .line 193
    const/16 v16, 0x0

    .line 194
    .line 195
    const-wide/16 v17, 0x0

    .line 196
    .line 197
    const/16 v19, 0x0

    .line 198
    .line 199
    const/16 v20, 0x0

    .line 200
    .line 201
    const/16 v21, 0x0

    .line 202
    .line 203
    const-wide/16 v22, 0x0

    .line 204
    .line 205
    const-wide/16 v24, 0x0

    .line 206
    .line 207
    const/16 v26, 0x0

    .line 208
    .line 209
    const/16 v27, 0x0

    .line 210
    .line 211
    const/16 v28, 0x0

    .line 212
    .line 213
    const/16 v29, 0x0

    .line 214
    .line 215
    const/16 v30, 0x0

    .line 216
    .line 217
    const/16 v31, 0x0

    .line 218
    .line 219
    const/16 v32, 0x0

    .line 220
    .line 221
    const/16 v33, 0x0

    .line 222
    .line 223
    const/16 v34, 0x0

    .line 224
    .line 225
    const/16 v35, 0x0

    .line 226
    .line 227
    const/16 v36, 0x0

    .line 228
    .line 229
    const/16 v37, 0x0

    .line 230
    .line 231
    const/16 v38, 0x0

    .line 232
    .line 233
    const/16 v39, 0x0

    .line 234
    .line 235
    const/16 v40, 0x0

    .line 236
    .line 237
    const-wide/16 v41, 0x0

    .line 238
    .line 239
    const/16 v43, 0x0

    .line 240
    .line 241
    const/16 v44, 0x0

    .line 242
    .line 243
    const/16 v45, 0x0

    .line 244
    .line 245
    const/16 v46, 0x0

    .line 246
    .line 247
    const-wide/16 v47, 0x0

    .line 248
    .line 249
    const/16 v49, 0x0

    .line 250
    .line 251
    const/16 v50, 0x0

    .line 252
    .line 253
    const-wide/16 v51, 0x0

    .line 254
    .line 255
    const/16 v53, 0x0

    .line 256
    .line 257
    const-wide/16 v54, 0x0

    .line 258
    .line 259
    const/16 v56, 0x0

    .line 260
    .line 261
    const/16 v57, 0x0

    .line 262
    .line 263
    const/16 v58, 0x0

    .line 264
    .line 265
    const/16 v59, 0x0

    .line 266
    .line 267
    const/16 v60, 0x0

    .line 268
    .line 269
    const/16 v61, 0x0

    .line 270
    .line 271
    const/16 v62, 0x0

    .line 272
    .line 273
    const/16 v63, 0x0

    .line 274
    .line 275
    const/16 v64, 0x0

    .line 276
    .line 277
    const/16 v65, 0x0

    .line 278
    .line 279
    const/16 v66, 0x0

    .line 280
    .line 281
    const/16 v67, 0x0

    .line 282
    .line 283
    const/16 v68, 0x0

    .line 284
    .line 285
    const/16 v69, 0x0

    .line 286
    .line 287
    const/16 v70, 0x0

    .line 288
    .line 289
    const/16 v71, 0x0

    .line 290
    .line 291
    const/16 v72, 0x0

    .line 292
    .line 293
    const/16 v73, 0x0

    .line 294
    .line 295
    const/16 v74, 0x0

    .line 296
    .line 297
    const/16 v75, 0x0

    .line 298
    .line 299
    const/16 v76, 0x0

    .line 300
    .line 301
    const/16 v77, 0x0

    .line 302
    .line 303
    const/16 v78, 0x0

    .line 304
    .line 305
    const/16 v79, 0x0

    .line 306
    .line 307
    const/16 v80, 0x0

    .line 308
    .line 309
    const/16 v81, 0x0

    .line 310
    .line 311
    const/16 v82, 0x0

    .line 312
    .line 313
    const/16 v83, 0x0

    .line 314
    .line 315
    const/16 v84, 0x0

    .line 316
    .line 317
    const/16 v85, 0x0

    .line 318
    .line 319
    const/16 v86, 0x0

    .line 320
    .line 321
    const/16 v87, 0x0

    .line 322
    .line 323
    const/16 v88, 0x0

    .line 324
    .line 325
    const/16 v89, 0x0

    .line 326
    .line 327
    const/16 v90, 0x0

    .line 328
    .line 329
    const/16 v91, 0x0

    .line 330
    .line 331
    const/16 v92, 0x0

    .line 332
    .line 333
    const/16 v93, 0x0

    .line 334
    .line 335
    const/16 v94, -0x20

    .line 336
    .line 337
    const/16 v95, -0x1

    .line 338
    .line 339
    move-object v6, v3

    .line 340
    invoke-direct/range {v6 .. v97}, Lcom/transsion/baselib/db/download/DownloadBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;JIIIJJIIIIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 341
    .line 342
    .line 343
    invoke-static {v2, v3}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->F0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;Lcom/transsion/baselib/db/download/DownloadBean;)V

    .line 344
    .line 345
    .line 346
    iget-object v2, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    .line 347
    .line 348
    invoke-static {v2}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->u0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 349
    .line 350
    .line 351
    move-result-object v2

    .line 352
    if-eqz v2, :cond_f

    .line 353
    .line 354
    iget-object v3, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;->$it:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 355
    .line 356
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Subject;->getResourceDetector()Lcom/transsion/moviedetailapi/bean/ResourceDetectors;

    .line 357
    .line 358
    .line 359
    move-result-object v3

    .line 360
    if-eqz v3, :cond_e

    .line 361
    .line 362
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;->getPostId()Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v3

    .line 366
    goto :goto_9

    .line 367
    :cond_e
    move-object v3, v5

    .line 368
    :goto_9
    invoke-virtual {v2, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setPostId(Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    :cond_f
    iget-object v2, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    .line 372
    .line 373
    invoke-static {v2}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->u0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 374
    .line 375
    .line 376
    move-result-object v2

    .line 377
    if-eqz v2, :cond_10

    .line 378
    .line 379
    iget-object v3, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;->$it:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 380
    .line 381
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v3

    .line 385
    invoke-virtual {v2, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setSubjectId(Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    :cond_10
    iget-object v2, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    .line 389
    .line 390
    invoke-static {v2}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->u0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 391
    .line 392
    .line 393
    move-result-object v2

    .line 394
    if-eqz v2, :cond_11

    .line 395
    .line 396
    iget-object v3, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    .line 397
    .line 398
    invoke-static {v3}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->w0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v3

    .line 402
    invoke-virtual {v2, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setGroupId(Ljava/lang/String;)V

    .line 403
    .line 404
    .line 405
    :cond_11
    iget-object v2, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    .line 406
    .line 407
    invoke-static {v2}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->u0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 408
    .line 409
    .line 410
    move-result-object v2

    .line 411
    if-eqz v2, :cond_12

    .line 412
    .line 413
    iget-object v3, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;->$it:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 414
    .line 415
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Subject;->getTitle()Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v3

    .line 419
    invoke-virtual {v2, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setSubjectName(Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    :cond_12
    iget-object v2, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    .line 423
    .line 424
    invoke-static {v2}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->u0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 425
    .line 426
    .line 427
    move-result-object v2

    .line 428
    if-eqz v2, :cond_13

    .line 429
    .line 430
    sget-object v3, Lcom/transsion/baselib/db/download/DownloadBean;->Companion:Lcom/transsion/baselib/db/download/DownloadBean$a;

    .line 431
    .line 432
    iget-object v6, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;->$it:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 433
    .line 434
    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    .line 435
    .line 436
    .line 437
    move-result-object v6

    .line 438
    invoke-virtual {v3, v6}, Lcom/transsion/baselib/db/download/DownloadBean$a;->c(Ljava/lang/Integer;)I

    .line 439
    .line 440
    .line 441
    move-result v3

    .line 442
    invoke-virtual {v2, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setType(I)V

    .line 443
    .line 444
    .line 445
    :cond_13
    iget-object v2, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    .line 446
    .line 447
    invoke-static {v2}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->u0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 448
    .line 449
    .line 450
    move-result-object v2

    .line 451
    if-eqz v2, :cond_15

    .line 452
    .line 453
    iget-object v3, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;->$it:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 454
    .line 455
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Subject;->getResourceDetector()Lcom/transsion/moviedetailapi/bean/ResourceDetectors;

    .line 456
    .line 457
    .line 458
    move-result-object v3

    .line 459
    if-eqz v3, :cond_14

    .line 460
    .line 461
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;->getUploadBy()Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v3

    .line 465
    goto :goto_a

    .line 466
    :cond_14
    move-object v3, v5

    .line 467
    :goto_a
    invoke-virtual {v2, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setUploadBy(Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    :cond_15
    iget-object v2, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    .line 471
    .line 472
    invoke-static {v2}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->u0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 473
    .line 474
    .line 475
    move-result-object v2

    .line 476
    if-eqz v2, :cond_18

    .line 477
    .line 478
    iget-object v3, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;->$it:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 479
    .line 480
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Subject;->getResourceDetector()Lcom/transsion/moviedetailapi/bean/ResourceDetectors;

    .line 481
    .line 482
    .line 483
    move-result-object v3

    .line 484
    if-eqz v3, :cond_17

    .line 485
    .line 486
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;->getResourceLink()Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object v3

    .line 490
    if-nez v3, :cond_16

    .line 491
    .line 492
    goto :goto_b

    .line 493
    :cond_16
    move-object v4, v3

    .line 494
    :cond_17
    :goto_b
    invoke-virtual {v2, v4}, Lcom/transsion/baselib/db/download/DownloadBean;->setSourceUrl(Ljava/lang/String;)V

    .line 495
    .line 496
    .line 497
    :cond_18
    :goto_c
    iget-object v2, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    .line 498
    .line 499
    invoke-static {v2}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->u0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 500
    .line 501
    .line 502
    move-result-object v2

    .line 503
    if-eqz v2, :cond_1a

    .line 504
    .line 505
    iget-object v3, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    .line 506
    .line 507
    iget-object v4, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;->$it:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 508
    .line 509
    sget-object v6, Lwf/a;->a:Lwf/a$a;

    .line 510
    .line 511
    new-instance v7, Ljava/lang/StringBuilder;

    .line 512
    .line 513
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 514
    .line 515
    .line 516
    const-string v8, "single\uff0c add download task\uff0c "

    .line 517
    .line 518
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    .line 520
    .line 521
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 522
    .line 523
    .line 524
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 525
    .line 526
    .line 527
    move-result-object v8

    .line 528
    const/4 v10, 0x4

    .line 529
    const/4 v11, 0x0

    .line 530
    const-string v7, "downloadAna"

    .line 531
    .line 532
    const/4 v9, 0x0

    .line 533
    invoke-static/range {v6 .. v11}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 534
    .line 535
    .line 536
    invoke-static {v3, v2}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->G0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;Lcom/transsion/baselib/db/download/DownloadBean;)V

    .line 537
    .line 538
    .line 539
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 540
    .line 541
    .line 542
    move-result-wide v6

    .line 543
    invoke-virtual {v2, v6, v7}, Lcom/transsion/baselib/db/download/DownloadBean;->setCreateAt(J)V

    .line 544
    .line 545
    .line 546
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 547
    .line 548
    .line 549
    move-result-wide v6

    .line 550
    invoke-static {v6, v7}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    .line 551
    .line 552
    .line 553
    move-result-object v6

    .line 554
    invoke-virtual {v2, v6}, Lcom/transsion/baselib/db/download/DownloadBean;->setUpdateTimeStamp(Ljava/lang/Long;)V

    .line 555
    .line 556
    .line 557
    invoke-static {v3}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->A0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Ljava/lang/String;

    .line 558
    .line 559
    .line 560
    move-result-object v6

    .line 561
    invoke-virtual {v2, v6}, Lcom/transsion/baselib/db/download/DownloadBean;->setPageFrom(Ljava/lang/String;)V

    .line 562
    .line 563
    .line 564
    invoke-static {v3}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->x0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Ljava/lang/String;

    .line 565
    .line 566
    .line 567
    move-result-object v6

    .line 568
    invoke-virtual {v2, v6}, Lcom/transsion/baselib/db/download/DownloadBean;->setLastPageFrom(Ljava/lang/String;)V

    .line 569
    .line 570
    .line 571
    invoke-static {v3}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->z0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Ljava/lang/String;

    .line 572
    .line 573
    .line 574
    move-result-object v6

    .line 575
    invoke-virtual {v2, v6}, Lcom/transsion/baselib/db/download/DownloadBean;->setOps(Ljava/lang/String;)V

    .line 576
    .line 577
    .line 578
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 579
    .line 580
    .line 581
    move-result-object v6

    .line 582
    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 583
    .line 584
    .line 585
    move-result-object v13

    .line 586
    const-string v6, "toString(...)"

    .line 587
    .line 588
    invoke-static {v13, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 589
    .line 590
    .line 591
    invoke-virtual {v2, v13}, Lcom/transsion/baselib/db/download/DownloadBean;->setTaskId(Ljava/lang/String;)V

    .line 592
    .line 593
    .line 594
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Subject;->getResourceAboutDuration()J

    .line 595
    .line 596
    .line 597
    move-result-wide v6

    .line 598
    invoke-static {v6, v7}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    .line 599
    .line 600
    .line 601
    move-result-object v6

    .line 602
    invoke-virtual {v2, v6}, Lcom/transsion/baselib/db/download/DownloadBean;->setDuration(Ljava/lang/Long;)V

    .line 603
    .line 604
    .line 605
    invoke-static {v3}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->A0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Ljava/lang/String;

    .line 606
    .line 607
    .line 608
    move-result-object v7

    .line 609
    invoke-static {v3}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->x0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Ljava/lang/String;

    .line 610
    .line 611
    .line 612
    move-result-object v8

    .line 613
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 614
    .line 615
    .line 616
    move-result-object v9

    .line 617
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getPostId()Ljava/lang/String;

    .line 618
    .line 619
    .line 620
    move-result-object v10

    .line 621
    invoke-static {v3}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->z0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Ljava/lang/String;

    .line 622
    .line 623
    .line 624
    move-result-object v11

    .line 625
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Subject;->getResourceDetector()Lcom/transsion/moviedetailapi/bean/ResourceDetectors;

    .line 626
    .line 627
    .line 628
    move-result-object v4

    .line 629
    if-eqz v4, :cond_19

    .line 630
    .line 631
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;->getResourceId()Ljava/lang/String;

    .line 632
    .line 633
    .line 634
    move-result-object v5

    .line 635
    :cond_19
    move-object v12, v5

    .line 636
    move-object v6, v3

    .line 637
    invoke-static/range {v6 .. v13}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->s0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    .line 639
    .line 640
    invoke-static {v3}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->v0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsnet/downloader/manager/g;

    .line 641
    .line 642
    .line 643
    move-result-object v4

    .line 644
    invoke-interface {v4, v2}, Lcom/transsnet/downloader/manager/g;->p(Lcom/transsion/baselib/db/download/DownloadBean;)V

    .line 645
    .line 646
    .line 647
    invoke-static {v3}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->B0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsnet/downloader/manager/StartDownloadHelper;

    .line 648
    .line 649
    .line 650
    move-result-object v3

    .line 651
    new-array v1, v1, [Lcom/transsion/baselib/db/download/DownloadBean;

    .line 652
    .line 653
    const/4 v4, 0x0

    .line 654
    aput-object v2, v1, v4

    .line 655
    .line 656
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->h([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 657
    .line 658
    .line 659
    move-result-object v1

    .line 660
    invoke-virtual {v3, v1}, Lcom/transsnet/downloader/manager/StartDownloadHelper;->f(Ljava/util/List;)V

    .line 661
    .line 662
    .line 663
    :cond_1a
    iget-object v1, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    .line 664
    .line 665
    invoke-virtual {v1}, Lcom/transsion/baseui/dialog/BaseDialog;->getLogViewConfig()Lqi/b;

    .line 666
    .line 667
    .line 668
    move-result-object v1

    .line 669
    if-eqz v1, :cond_1b

    .line 670
    .line 671
    invoke-virtual {v1}, Lqi/b;->g()Ljava/util/HashMap;

    .line 672
    .line 673
    .line 674
    move-result-object v1

    .line 675
    if-eqz v1, :cond_1b

    .line 676
    .line 677
    iget-object v2, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;->$it:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 678
    .line 679
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 680
    .line 681
    .line 682
    move-result-object v2

    .line 683
    const-string v3, "subject_id"

    .line 684
    .line 685
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    .line 687
    .line 688
    :cond_1b
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 689
    .line 690
    return-object v1
.end method
