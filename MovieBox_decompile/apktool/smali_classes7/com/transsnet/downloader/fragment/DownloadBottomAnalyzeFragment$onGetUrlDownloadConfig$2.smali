.class final Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->S0(Lcom/transsnet/downloader/bean/DownloadUrlBean;)V
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
    c = "com.transsnet.downloader.fragment.DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2"
    f = "DownloadBottomAnalyzeFragment.kt"
    l = {
        0x17f
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $item:Lcom/transsion/moviedetailapi/DownloadItem;

.field final synthetic $totalEpisode:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic $urlBean:Lcom/transsnet/downloader/bean/DownloadUrlBean;

.field label:I

.field final synthetic this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;


# direct methods
.method constructor <init>(Lcom/transsion/moviedetailapi/DownloadItem;Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;Lkotlin/jvm/internal/Ref$IntRef;Lcom/transsnet/downloader/bean/DownloadUrlBean;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/moviedetailapi/DownloadItem;",
            "Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;",
            "Lkotlin/jvm/internal/Ref$IntRef;",
            "Lcom/transsnet/downloader/bean/DownloadUrlBean;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->$item:Lcom/transsion/moviedetailapi/DownloadItem;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->$totalEpisode:Lkotlin/jvm/internal/Ref$IntRef;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->$urlBean:Lcom/transsnet/downloader/bean/DownloadUrlBean;

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

.method public static synthetic a()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->d()Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static final d()Lkotlin/Unit;
    .locals 2

    .line 1
    sget-object v0, Lfh/b;->a:Lfh/b$a;

    .line 2
    .line 3
    sget v1, Lcom/transsnet/downloader/R$string;->already_in_downloads:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lfh/b$a;->d(I)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    return-object v0
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
    new-instance p1, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->$item:Lcom/transsion/moviedetailapi/DownloadItem;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->$totalEpisode:Lkotlin/jvm/internal/Ref$IntRef;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->$urlBean:Lcom/transsnet/downloader/bean/DownloadUrlBean;

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;-><init>(Lcom/transsion/moviedetailapi/DownloadItem;Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;Lkotlin/jvm/internal/Ref$IntRef;Lcom/transsnet/downloader/bean/DownloadUrlBean;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 99

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    iget v4, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->label:I

    .line 10
    .line 11
    const-string v5, ""

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    if-eqz v4, :cond_1

    .line 15
    .line 16
    if-ne v4, v2, :cond_0

    .line 17
    .line 18
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    move-object/from16 v4, p1

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 27
    .line 28
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v1

    .line 32
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    sget-object v4, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    .line 36
    .line 37
    invoke-virtual {v4}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    iget-object v7, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->$item:Lcom/transsion/moviedetailapi/DownloadItem;

    .line 42
    .line 43
    if-eqz v7, :cond_2

    .line 44
    .line 45
    invoke-virtual {v7}, Lcom/transsion/moviedetailapi/DownloadItem;->getResourceId()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    if-nez v7, :cond_4

    .line 50
    .line 51
    :cond_2
    iget-object v7, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->$item:Lcom/transsion/moviedetailapi/DownloadItem;

    .line 52
    .line 53
    if-eqz v7, :cond_3

    .line 54
    .line 55
    invoke-virtual {v7}, Lcom/transsion/moviedetailapi/DownloadItem;->getUrl()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    goto :goto_0

    .line 60
    :cond_3
    move-object v7, v6

    .line 61
    :goto_0
    if-nez v7, :cond_4

    .line 62
    .line 63
    move-object v7, v5

    .line 64
    :cond_4
    iput v2, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->label:I

    .line 65
    .line 66
    invoke-virtual {v4, v7, v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->p(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    if-ne v4, v3, :cond_5

    .line 71
    .line 72
    return-object v3

    .line 73
    :cond_5
    :goto_1
    check-cast v4, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 74
    .line 75
    if-eqz v4, :cond_6

    .line 76
    .line 77
    sget-object v7, Lwf/a;->a:Lwf/a$a;

    .line 78
    .line 79
    const/4 v11, 0x4

    .line 80
    const/4 v12, 0x0

    .line 81
    const-string v8, "downloadAna"

    .line 82
    .line 83
    const-string v9, "url start download, is downloading"

    .line 84
    .line 85
    const/4 v10, 0x0

    .line 86
    invoke-static/range {v7 .. v12}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    iget-object v1, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    .line 90
    .line 91
    new-instance v2, Lcom/transsnet/downloader/fragment/w;

    .line 92
    .line 93
    invoke-direct {v2}, Lcom/transsnet/downloader/fragment/w;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, v2}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->Q0(Lkotlin/jvm/functions/Function0;)V

    .line 97
    .line 98
    .line 99
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 100
    .line 101
    goto/16 :goto_1a

    .line 102
    .line 103
    :cond_6
    iget-object v3, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    .line 104
    .line 105
    new-instance v4, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 106
    .line 107
    iget-object v7, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->$item:Lcom/transsion/moviedetailapi/DownloadItem;

    .line 108
    .line 109
    if-eqz v7, :cond_8

    .line 110
    .line 111
    invoke-virtual {v7}, Lcom/transsion/moviedetailapi/DownloadItem;->getUrl()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    if-nez v7, :cond_7

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_7
    move-object v8, v7

    .line 119
    goto :goto_3

    .line 120
    :cond_8
    :goto_2
    move-object v8, v5

    .line 121
    :goto_3
    iget-object v7, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->$item:Lcom/transsion/moviedetailapi/DownloadItem;

    .line 122
    .line 123
    if-eqz v7, :cond_a

    .line 124
    .line 125
    invoke-virtual {v7}, Lcom/transsion/moviedetailapi/DownloadItem;->getResourceId()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v7

    .line 129
    if-nez v7, :cond_9

    .line 130
    .line 131
    goto :goto_4

    .line 132
    :cond_9
    move-object v9, v7

    .line 133
    goto :goto_5

    .line 134
    :cond_a
    :goto_4
    move-object v9, v5

    .line 135
    :goto_5
    iget-object v7, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->$item:Lcom/transsion/moviedetailapi/DownloadItem;

    .line 136
    .line 137
    if-eqz v7, :cond_c

    .line 138
    .line 139
    invoke-virtual {v7}, Lcom/transsion/moviedetailapi/DownloadItem;->getName()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v7

    .line 143
    if-nez v7, :cond_b

    .line 144
    .line 145
    goto :goto_6

    .line 146
    :cond_b
    move-object v10, v7

    .line 147
    goto :goto_7

    .line 148
    :cond_c
    :goto_6
    move-object v10, v5

    .line 149
    :goto_7
    iget-object v7, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    .line 150
    .line 151
    invoke-static {v7}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->C0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsion/moviedetailapi/bean/Subject;

    .line 152
    .line 153
    .line 154
    move-result-object v7

    .line 155
    if-eqz v7, :cond_d

    .line 156
    .line 157
    invoke-virtual {v7}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 158
    .line 159
    .line 160
    move-result-object v7

    .line 161
    if-eqz v7, :cond_d

    .line 162
    .line 163
    invoke-virtual {v7}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v7

    .line 167
    move-object v11, v7

    .line 168
    goto :goto_8

    .line 169
    :cond_d
    move-object v11, v6

    .line 170
    :goto_8
    iget-object v7, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->$item:Lcom/transsion/moviedetailapi/DownloadItem;

    .line 171
    .line 172
    if-eqz v7, :cond_e

    .line 173
    .line 174
    invoke-virtual {v7}, Lcom/transsion/moviedetailapi/DownloadItem;->getSize()Ljava/lang/Long;

    .line 175
    .line 176
    .line 177
    move-result-object v7

    .line 178
    move-object v12, v7

    .line 179
    goto :goto_9

    .line 180
    :cond_e
    move-object v12, v6

    .line 181
    :goto_9
    const v97, 0xffff

    .line 182
    .line 183
    .line 184
    const/16 v98, 0x0

    .line 185
    .line 186
    const/4 v13, 0x0

    .line 187
    const/4 v14, 0x0

    .line 188
    const/4 v15, 0x0

    .line 189
    const/16 v16, 0x0

    .line 190
    .line 191
    const/16 v17, 0x0

    .line 192
    .line 193
    const-wide/16 v18, 0x0

    .line 194
    .line 195
    const/16 v20, 0x0

    .line 196
    .line 197
    const/16 v21, 0x0

    .line 198
    .line 199
    const/16 v22, 0x0

    .line 200
    .line 201
    const-wide/16 v23, 0x0

    .line 202
    .line 203
    const-wide/16 v25, 0x0

    .line 204
    .line 205
    const/16 v27, 0x0

    .line 206
    .line 207
    const/16 v28, 0x0

    .line 208
    .line 209
    const/16 v29, 0x0

    .line 210
    .line 211
    const/16 v30, 0x0

    .line 212
    .line 213
    const/16 v31, 0x0

    .line 214
    .line 215
    const/16 v32, 0x0

    .line 216
    .line 217
    const/16 v33, 0x0

    .line 218
    .line 219
    const/16 v34, 0x0

    .line 220
    .line 221
    const/16 v35, 0x0

    .line 222
    .line 223
    const/16 v36, 0x0

    .line 224
    .line 225
    const/16 v37, 0x0

    .line 226
    .line 227
    const/16 v38, 0x0

    .line 228
    .line 229
    const/16 v39, 0x0

    .line 230
    .line 231
    const/16 v40, 0x0

    .line 232
    .line 233
    const/16 v41, 0x0

    .line 234
    .line 235
    const-wide/16 v42, 0x0

    .line 236
    .line 237
    const/16 v44, 0x0

    .line 238
    .line 239
    const/16 v45, 0x0

    .line 240
    .line 241
    const/16 v46, 0x0

    .line 242
    .line 243
    const/16 v47, 0x0

    .line 244
    .line 245
    const-wide/16 v48, 0x0

    .line 246
    .line 247
    const/16 v50, 0x0

    .line 248
    .line 249
    const/16 v51, 0x0

    .line 250
    .line 251
    const-wide/16 v52, 0x0

    .line 252
    .line 253
    const/16 v54, 0x0

    .line 254
    .line 255
    const-wide/16 v55, 0x0

    .line 256
    .line 257
    const/16 v57, 0x0

    .line 258
    .line 259
    const/16 v58, 0x0

    .line 260
    .line 261
    const/16 v59, 0x0

    .line 262
    .line 263
    const/16 v60, 0x0

    .line 264
    .line 265
    const/16 v61, 0x0

    .line 266
    .line 267
    const/16 v62, 0x0

    .line 268
    .line 269
    const/16 v63, 0x0

    .line 270
    .line 271
    const/16 v64, 0x0

    .line 272
    .line 273
    const/16 v65, 0x0

    .line 274
    .line 275
    const/16 v66, 0x0

    .line 276
    .line 277
    const/16 v67, 0x0

    .line 278
    .line 279
    const/16 v68, 0x0

    .line 280
    .line 281
    const/16 v69, 0x0

    .line 282
    .line 283
    const/16 v70, 0x0

    .line 284
    .line 285
    const/16 v71, 0x0

    .line 286
    .line 287
    const/16 v72, 0x0

    .line 288
    .line 289
    const/16 v73, 0x0

    .line 290
    .line 291
    const/16 v74, 0x0

    .line 292
    .line 293
    const/16 v75, 0x0

    .line 294
    .line 295
    const/16 v76, 0x0

    .line 296
    .line 297
    const/16 v77, 0x0

    .line 298
    .line 299
    const/16 v78, 0x0

    .line 300
    .line 301
    const/16 v79, 0x0

    .line 302
    .line 303
    const/16 v80, 0x0

    .line 304
    .line 305
    const/16 v81, 0x0

    .line 306
    .line 307
    const/16 v82, 0x0

    .line 308
    .line 309
    const/16 v83, 0x0

    .line 310
    .line 311
    const/16 v84, 0x0

    .line 312
    .line 313
    const/16 v85, 0x0

    .line 314
    .line 315
    const/16 v86, 0x0

    .line 316
    .line 317
    const/16 v87, 0x0

    .line 318
    .line 319
    const/16 v88, 0x0

    .line 320
    .line 321
    const/16 v89, 0x0

    .line 322
    .line 323
    const/16 v90, 0x0

    .line 324
    .line 325
    const/16 v91, 0x0

    .line 326
    .line 327
    const/16 v92, 0x0

    .line 328
    .line 329
    const/16 v93, 0x0

    .line 330
    .line 331
    const/16 v94, 0x0

    .line 332
    .line 333
    const/16 v95, -0x20

    .line 334
    .line 335
    const/16 v96, -0x1

    .line 336
    .line 337
    move-object v7, v4

    .line 338
    invoke-direct/range {v7 .. v98}, Lcom/transsion/baselib/db/download/DownloadBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;JIIIJJIIIIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 339
    .line 340
    .line 341
    invoke-static {v3, v4}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->F0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;Lcom/transsion/baselib/db/download/DownloadBean;)V

    .line 342
    .line 343
    .line 344
    iget-object v3, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    .line 345
    .line 346
    invoke-static {v3}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->u0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 347
    .line 348
    .line 349
    move-result-object v3

    .line 350
    if-eqz v3, :cond_11

    .line 351
    .line 352
    iget-object v4, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->$item:Lcom/transsion/moviedetailapi/DownloadItem;

    .line 353
    .line 354
    if-eqz v4, :cond_f

    .line 355
    .line 356
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/DownloadItem;->getUploadBy()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v4

    .line 360
    if-nez v4, :cond_10

    .line 361
    .line 362
    :cond_f
    move-object v4, v5

    .line 363
    :cond_10
    invoke-virtual {v3, v4}, Lcom/transsion/baselib/db/download/DownloadBean;->setUploadBy(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 367
    .line 368
    :cond_11
    iget-object v3, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    .line 369
    .line 370
    invoke-static {v3}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->u0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 371
    .line 372
    .line 373
    move-result-object v3

    .line 374
    if-eqz v3, :cond_14

    .line 375
    .line 376
    iget-object v4, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->$item:Lcom/transsion/moviedetailapi/DownloadItem;

    .line 377
    .line 378
    if-eqz v4, :cond_12

    .line 379
    .line 380
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/DownloadItem;->getSourceUrl()Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v4

    .line 384
    if-nez v4, :cond_13

    .line 385
    .line 386
    :cond_12
    move-object v4, v5

    .line 387
    :cond_13
    invoke-virtual {v3, v4}, Lcom/transsion/baselib/db/download/DownloadBean;->setSourceUrl(Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 391
    .line 392
    :cond_14
    iget-object v3, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    .line 393
    .line 394
    invoke-static {v3}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->u0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 395
    .line 396
    .line 397
    move-result-object v3

    .line 398
    if-eqz v3, :cond_16

    .line 399
    .line 400
    iget-object v4, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->$item:Lcom/transsion/moviedetailapi/DownloadItem;

    .line 401
    .line 402
    if-eqz v4, :cond_15

    .line 403
    .line 404
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/DownloadItem;->getPostId()Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v4

    .line 408
    goto :goto_a

    .line 409
    :cond_15
    move-object v4, v6

    .line 410
    :goto_a
    invoke-virtual {v3, v4}, Lcom/transsion/baselib/db/download/DownloadBean;->setPostId(Ljava/lang/String;)V

    .line 411
    .line 412
    .line 413
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 414
    .line 415
    :cond_16
    iget-object v3, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    .line 416
    .line 417
    invoke-static {v3}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->u0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 418
    .line 419
    .line 420
    move-result-object v3

    .line 421
    if-eqz v3, :cond_18

    .line 422
    .line 423
    iget-object v4, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->$item:Lcom/transsion/moviedetailapi/DownloadItem;

    .line 424
    .line 425
    if-eqz v4, :cond_17

    .line 426
    .line 427
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/DownloadItem;->getEpse()Ljava/lang/Integer;

    .line 428
    .line 429
    .line 430
    move-result-object v4

    .line 431
    if-eqz v4, :cond_17

    .line 432
    .line 433
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 434
    .line 435
    .line 436
    move-result v4

    .line 437
    goto :goto_b

    .line 438
    :cond_17
    move v4, v1

    .line 439
    :goto_b
    invoke-virtual {v3, v4}, Lcom/transsion/baselib/db/download/DownloadBean;->setEpse(I)V

    .line 440
    .line 441
    .line 442
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 443
    .line 444
    :cond_18
    iget-object v3, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    .line 445
    .line 446
    invoke-static {v3}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->u0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 447
    .line 448
    .line 449
    move-result-object v3

    .line 450
    if-eqz v3, :cond_1a

    .line 451
    .line 452
    iget-object v4, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->$item:Lcom/transsion/moviedetailapi/DownloadItem;

    .line 453
    .line 454
    if-eqz v4, :cond_19

    .line 455
    .line 456
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/DownloadItem;->getEp()I

    .line 457
    .line 458
    .line 459
    move-result v4

    .line 460
    goto :goto_c

    .line 461
    :cond_19
    move v4, v1

    .line 462
    :goto_c
    invoke-virtual {v3, v4}, Lcom/transsion/baselib/db/download/DownloadBean;->setEp(I)V

    .line 463
    .line 464
    .line 465
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 466
    .line 467
    :cond_1a
    iget-object v3, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    .line 468
    .line 469
    invoke-static {v3}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->u0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 470
    .line 471
    .line 472
    move-result-object v3

    .line 473
    if-eqz v3, :cond_1c

    .line 474
    .line 475
    iget-object v4, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->$item:Lcom/transsion/moviedetailapi/DownloadItem;

    .line 476
    .line 477
    if-eqz v4, :cond_1b

    .line 478
    .line 479
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/DownloadItem;->getSe()I

    .line 480
    .line 481
    .line 482
    move-result v4

    .line 483
    goto :goto_d

    .line 484
    :cond_1b
    move v4, v1

    .line 485
    :goto_d
    invoke-virtual {v3, v4}, Lcom/transsion/baselib/db/download/DownloadBean;->setSe(I)V

    .line 486
    .line 487
    .line 488
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 489
    .line 490
    :cond_1c
    iget-object v3, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    .line 491
    .line 492
    invoke-static {v3}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->u0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 493
    .line 494
    .line 495
    move-result-object v3

    .line 496
    if-eqz v3, :cond_1e

    .line 497
    .line 498
    iget-object v4, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->$item:Lcom/transsion/moviedetailapi/DownloadItem;

    .line 499
    .line 500
    if-eqz v4, :cond_1d

    .line 501
    .line 502
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/DownloadItem;->getResolution()Ljava/lang/Integer;

    .line 503
    .line 504
    .line 505
    move-result-object v4

    .line 506
    if-eqz v4, :cond_1d

    .line 507
    .line 508
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 509
    .line 510
    .line 511
    move-result v4

    .line 512
    goto :goto_e

    .line 513
    :cond_1d
    move v4, v1

    .line 514
    :goto_e
    invoke-virtual {v3, v4}, Lcom/transsion/baselib/db/download/DownloadBean;->setResolution(I)V

    .line 515
    .line 516
    .line 517
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 518
    .line 519
    :cond_1e
    iget-object v3, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    .line 520
    .line 521
    invoke-static {v3}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->u0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 522
    .line 523
    .line 524
    move-result-object v3

    .line 525
    if-eqz v3, :cond_20

    .line 526
    .line 527
    iget-object v4, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    .line 528
    .line 529
    invoke-static {v4}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->C0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsion/moviedetailapi/bean/Subject;

    .line 530
    .line 531
    .line 532
    move-result-object v4

    .line 533
    if-eqz v4, :cond_1f

    .line 534
    .line 535
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 536
    .line 537
    .line 538
    move-result-object v4

    .line 539
    goto :goto_f

    .line 540
    :cond_1f
    move-object v4, v6

    .line 541
    :goto_f
    invoke-virtual {v3, v4}, Lcom/transsion/baselib/db/download/DownloadBean;->setSubjectId(Ljava/lang/String;)V

    .line 542
    .line 543
    .line 544
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 545
    .line 546
    :cond_20
    iget-object v3, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    .line 547
    .line 548
    invoke-static {v3}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->u0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 549
    .line 550
    .line 551
    move-result-object v3

    .line 552
    if-eqz v3, :cond_22

    .line 553
    .line 554
    sget-object v4, Lcom/transsion/baselib/db/download/DownloadBean;->Companion:Lcom/transsion/baselib/db/download/DownloadBean$a;

    .line 555
    .line 556
    iget-object v7, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    .line 557
    .line 558
    invoke-static {v7}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->C0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsion/moviedetailapi/bean/Subject;

    .line 559
    .line 560
    .line 561
    move-result-object v7

    .line 562
    if-eqz v7, :cond_21

    .line 563
    .line 564
    invoke-virtual {v7}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    .line 565
    .line 566
    .line 567
    move-result-object v7

    .line 568
    goto :goto_10

    .line 569
    :cond_21
    move-object v7, v6

    .line 570
    :goto_10
    invoke-virtual {v4, v7}, Lcom/transsion/baselib/db/download/DownloadBean$a;->c(Ljava/lang/Integer;)I

    .line 571
    .line 572
    .line 573
    move-result v4

    .line 574
    invoke-virtual {v3, v4}, Lcom/transsion/baselib/db/download/DownloadBean;->setType(I)V

    .line 575
    .line 576
    .line 577
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 578
    .line 579
    :cond_22
    iget-object v3, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    .line 580
    .line 581
    invoke-static {v3}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->u0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 582
    .line 583
    .line 584
    move-result-object v3

    .line 585
    if-eqz v3, :cond_23

    .line 586
    .line 587
    iget-object v4, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->$totalEpisode:Lkotlin/jvm/internal/Ref$IntRef;

    .line 588
    .line 589
    iget v4, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 590
    .line 591
    invoke-virtual {v3, v4}, Lcom/transsion/baselib/db/download/DownloadBean;->setTotalEpisode(I)V

    .line 592
    .line 593
    .line 594
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 595
    .line 596
    :cond_23
    iget-object v3, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    .line 597
    .line 598
    invoke-static {v3}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->u0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 599
    .line 600
    .line 601
    move-result-object v3

    .line 602
    if-eqz v3, :cond_24

    .line 603
    .line 604
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 605
    .line 606
    .line 607
    move-result-wide v7

    .line 608
    invoke-virtual {v3, v7, v8}, Lcom/transsion/baselib/db/download/DownloadBean;->setCreateAt(J)V

    .line 609
    .line 610
    .line 611
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 612
    .line 613
    :cond_24
    iget-object v3, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    .line 614
    .line 615
    invoke-static {v3}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->u0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 616
    .line 617
    .line 618
    move-result-object v3

    .line 619
    if-eqz v3, :cond_25

    .line 620
    .line 621
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 622
    .line 623
    .line 624
    move-result-wide v7

    .line 625
    invoke-static {v7, v8}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    .line 626
    .line 627
    .line 628
    move-result-object v4

    .line 629
    invoke-virtual {v3, v4}, Lcom/transsion/baselib/db/download/DownloadBean;->setUpdateTimeStamp(Ljava/lang/Long;)V

    .line 630
    .line 631
    .line 632
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 633
    .line 634
    :cond_25
    iget-object v3, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    .line 635
    .line 636
    invoke-static {v3}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->u0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 637
    .line 638
    .line 639
    move-result-object v3

    .line 640
    if-eqz v3, :cond_2a

    .line 641
    .line 642
    iget-object v4, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    .line 643
    .line 644
    invoke-static {v4}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->C0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsion/moviedetailapi/bean/Subject;

    .line 645
    .line 646
    .line 647
    move-result-object v4

    .line 648
    if-eqz v4, :cond_26

    .line 649
    .line 650
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Subject;->getTitle()Ljava/lang/String;

    .line 651
    .line 652
    .line 653
    move-result-object v4

    .line 654
    goto :goto_11

    .line 655
    :cond_26
    move-object v4, v6

    .line 656
    :goto_11
    if-eqz v4, :cond_29

    .line 657
    .line 658
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 659
    .line 660
    .line 661
    move-result v4

    .line 662
    if-nez v4, :cond_27

    .line 663
    .line 664
    goto :goto_12

    .line 665
    :cond_27
    iget-object v4, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    .line 666
    .line 667
    invoke-static {v4}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->C0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsion/moviedetailapi/bean/Subject;

    .line 668
    .line 669
    .line 670
    move-result-object v4

    .line 671
    if-eqz v4, :cond_28

    .line 672
    .line 673
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Subject;->getTitle()Ljava/lang/String;

    .line 674
    .line 675
    .line 676
    move-result-object v4

    .line 677
    goto :goto_13

    .line 678
    :cond_28
    move-object v4, v6

    .line 679
    goto :goto_13

    .line 680
    :cond_29
    :goto_12
    iget-object v4, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->$urlBean:Lcom/transsnet/downloader/bean/DownloadUrlBean;

    .line 681
    .line 682
    invoke-virtual {v4}, Lcom/transsnet/downloader/bean/DownloadUrlBean;->getName()Ljava/lang/String;

    .line 683
    .line 684
    .line 685
    move-result-object v4

    .line 686
    :goto_13
    invoke-virtual {v3, v4}, Lcom/transsion/baselib/db/download/DownloadBean;->setSubjectName(Ljava/lang/String;)V

    .line 687
    .line 688
    .line 689
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 690
    .line 691
    :cond_2a
    new-instance v3, Ljava/util/ArrayList;

    .line 692
    .line 693
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 694
    .line 695
    .line 696
    iget-object v4, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->$item:Lcom/transsion/moviedetailapi/DownloadItem;

    .line 697
    .line 698
    if-eqz v4, :cond_2d

    .line 699
    .line 700
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/DownloadItem;->getExtSubtitle()Ljava/util/List;

    .line 701
    .line 702
    .line 703
    move-result-object v4

    .line 704
    if-eqz v4, :cond_2d

    .line 705
    .line 706
    check-cast v4, Ljava/lang/Iterable;

    .line 707
    .line 708
    iget-object v7, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->$item:Lcom/transsion/moviedetailapi/DownloadItem;

    .line 709
    .line 710
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 711
    .line 712
    .line 713
    move-result-object v4

    .line 714
    :goto_14
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 715
    .line 716
    .line 717
    move-result v8

    .line 718
    if-eqz v8, :cond_2c

    .line 719
    .line 720
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 721
    .line 722
    .line 723
    move-result-object v8

    .line 724
    move-object v10, v8

    .line 725
    check-cast v10, Lcom/transsion/moviedetailapi/bean/SubtitleItem;

    .line 726
    .line 727
    sget-object v9, Lcom/transsion/moviedetailapi/bean/SubtitleItem;->Companion:Lcom/transsion/moviedetailapi/bean/SubtitleItem$a;

    .line 728
    .line 729
    invoke-virtual {v7}, Lcom/transsion/moviedetailapi/DownloadItem;->getPostId()Ljava/lang/String;

    .line 730
    .line 731
    .line 732
    move-result-object v8

    .line 733
    if-nez v8, :cond_2b

    .line 734
    .line 735
    invoke-virtual {v7}, Lcom/transsion/moviedetailapi/DownloadItem;->getResourceId()Ljava/lang/String;

    .line 736
    .line 737
    .line 738
    move-result-object v8

    .line 739
    if-nez v8, :cond_2b

    .line 740
    .line 741
    move-object v11, v5

    .line 742
    goto :goto_15

    .line 743
    :cond_2b
    move-object v11, v8

    .line 744
    :goto_15
    const/16 v15, 0x1c

    .line 745
    .line 746
    const/16 v16, 0x0

    .line 747
    .line 748
    const/4 v12, 0x0

    .line 749
    const/4 v13, 0x0

    .line 750
    const/4 v14, 0x0

    .line 751
    invoke-static/range {v9 .. v16}, Lcom/transsion/moviedetailapi/bean/SubtitleItem$a;->b(Lcom/transsion/moviedetailapi/bean/SubtitleItem$a;Lcom/transsion/moviedetailapi/bean/SubtitleItem;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Object;)Lcom/transsion/baselib/db/download/SubtitleBean;

    .line 752
    .line 753
    .line 754
    move-result-object v8

    .line 755
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 756
    .line 757
    .line 758
    goto :goto_14

    .line 759
    :cond_2c
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 760
    .line 761
    :cond_2d
    iget-object v4, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    .line 762
    .line 763
    invoke-static {v4}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->u0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 764
    .line 765
    .line 766
    move-result-object v4

    .line 767
    if-eqz v4, :cond_2e

    .line 768
    .line 769
    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubtitleList()Ljava/util/List;

    .line 770
    .line 771
    .line 772
    move-result-object v4

    .line 773
    if-eqz v4, :cond_2e

    .line 774
    .line 775
    invoke-interface {v4, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 776
    .line 777
    .line 778
    move-result v3

    .line 779
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    .line 780
    .line 781
    .line 782
    :cond_2e
    iget-object v3, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    .line 783
    .line 784
    invoke-static {v3}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->u0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 785
    .line 786
    .line 787
    move-result-object v3

    .line 788
    if-eqz v3, :cond_2f

    .line 789
    .line 790
    iget-object v4, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    .line 791
    .line 792
    invoke-static {v4}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->A0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Ljava/lang/String;

    .line 793
    .line 794
    .line 795
    move-result-object v4

    .line 796
    invoke-virtual {v3, v4}, Lcom/transsion/baselib/db/download/DownloadBean;->setPageFrom(Ljava/lang/String;)V

    .line 797
    .line 798
    .line 799
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 800
    .line 801
    :cond_2f
    iget-object v3, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    .line 802
    .line 803
    invoke-static {v3}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->u0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 804
    .line 805
    .line 806
    move-result-object v3

    .line 807
    if-eqz v3, :cond_30

    .line 808
    .line 809
    iget-object v4, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    .line 810
    .line 811
    invoke-static {v4}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->x0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Ljava/lang/String;

    .line 812
    .line 813
    .line 814
    move-result-object v4

    .line 815
    invoke-virtual {v3, v4}, Lcom/transsion/baselib/db/download/DownloadBean;->setLastPageFrom(Ljava/lang/String;)V

    .line 816
    .line 817
    .line 818
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 819
    .line 820
    :cond_30
    iget-object v3, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    .line 821
    .line 822
    invoke-static {v3}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->u0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 823
    .line 824
    .line 825
    move-result-object v3

    .line 826
    if-eqz v3, :cond_31

    .line 827
    .line 828
    iget-object v4, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    .line 829
    .line 830
    invoke-static {v4, v3}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->G0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;Lcom/transsion/baselib/db/download/DownloadBean;)V

    .line 831
    .line 832
    .line 833
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 834
    .line 835
    :cond_31
    iget-object v3, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    .line 836
    .line 837
    invoke-static {v3}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->u0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 838
    .line 839
    .line 840
    move-result-object v3

    .line 841
    if-eqz v3, :cond_32

    .line 842
    .line 843
    iget-object v4, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    .line 844
    .line 845
    invoke-static {v4}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->z0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Ljava/lang/String;

    .line 846
    .line 847
    .line 848
    move-result-object v4

    .line 849
    invoke-virtual {v3, v4}, Lcom/transsion/baselib/db/download/DownloadBean;->setOps(Ljava/lang/String;)V

    .line 850
    .line 851
    .line 852
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 853
    .line 854
    :cond_32
    sget-object v7, Lwf/a;->a:Lwf/a$a;

    .line 855
    .line 856
    iget-object v3, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->$item:Lcom/transsion/moviedetailapi/DownloadItem;

    .line 857
    .line 858
    if-eqz v3, :cond_33

    .line 859
    .line 860
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/DownloadItem;->getName()Ljava/lang/String;

    .line 861
    .line 862
    .line 863
    move-result-object v3

    .line 864
    goto :goto_16

    .line 865
    :cond_33
    move-object v3, v6

    .line 866
    :goto_16
    new-instance v4, Ljava/lang/StringBuilder;

    .line 867
    .line 868
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 869
    .line 870
    .line 871
    const-string v5, "url start download, name = "

    .line 872
    .line 873
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 874
    .line 875
    .line 876
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 877
    .line 878
    .line 879
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 880
    .line 881
    .line 882
    move-result-object v9

    .line 883
    const/4 v11, 0x4

    .line 884
    const/4 v12, 0x0

    .line 885
    const-string v8, "downloadAna"

    .line 886
    .line 887
    const/4 v10, 0x0

    .line 888
    invoke-static/range {v7 .. v12}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 889
    .line 890
    .line 891
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 892
    .line 893
    .line 894
    move-result-object v3

    .line 895
    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 896
    .line 897
    .line 898
    move-result-object v14

    .line 899
    const-string v3, "toString(...)"

    .line 900
    .line 901
    invoke-static {v14, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 902
    .line 903
    .line 904
    iget-object v3, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    .line 905
    .line 906
    invoke-static {v3}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->u0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 907
    .line 908
    .line 909
    move-result-object v3

    .line 910
    if-eqz v3, :cond_34

    .line 911
    .line 912
    invoke-virtual {v3, v14}, Lcom/transsion/baselib/db/download/DownloadBean;->setTaskId(Ljava/lang/String;)V

    .line 913
    .line 914
    .line 915
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 916
    .line 917
    :cond_34
    iget-object v3, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    .line 918
    .line 919
    invoke-static {v3}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->u0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 920
    .line 921
    .line 922
    move-result-object v3

    .line 923
    if-eqz v3, :cond_36

    .line 924
    .line 925
    iget-object v4, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    .line 926
    .line 927
    invoke-static {v4}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->C0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsion/moviedetailapi/bean/Subject;

    .line 928
    .line 929
    .line 930
    move-result-object v4

    .line 931
    if-eqz v4, :cond_35

    .line 932
    .line 933
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Subject;->getResourceAboutDuration()J

    .line 934
    .line 935
    .line 936
    move-result-wide v4

    .line 937
    invoke-static {v4, v5}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    .line 938
    .line 939
    .line 940
    move-result-object v4

    .line 941
    goto :goto_17

    .line 942
    :cond_35
    move-object v4, v6

    .line 943
    :goto_17
    invoke-virtual {v3, v4}, Lcom/transsion/baselib/db/download/DownloadBean;->setDuration(Ljava/lang/Long;)V

    .line 944
    .line 945
    .line 946
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 947
    .line 948
    :cond_36
    iget-object v7, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    .line 949
    .line 950
    invoke-static {v7}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->A0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Ljava/lang/String;

    .line 951
    .line 952
    .line 953
    move-result-object v8

    .line 954
    iget-object v3, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    .line 955
    .line 956
    invoke-static {v3}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->x0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Ljava/lang/String;

    .line 957
    .line 958
    .line 959
    move-result-object v9

    .line 960
    iget-object v3, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    .line 961
    .line 962
    invoke-static {v3}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->C0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsion/moviedetailapi/bean/Subject;

    .line 963
    .line 964
    .line 965
    move-result-object v3

    .line 966
    if-eqz v3, :cond_37

    .line 967
    .line 968
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 969
    .line 970
    .line 971
    move-result-object v3

    .line 972
    move-object v10, v3

    .line 973
    goto :goto_18

    .line 974
    :cond_37
    move-object v10, v6

    .line 975
    :goto_18
    iget-object v3, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->$item:Lcom/transsion/moviedetailapi/DownloadItem;

    .line 976
    .line 977
    if-eqz v3, :cond_38

    .line 978
    .line 979
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/DownloadItem;->getPostId()Ljava/lang/String;

    .line 980
    .line 981
    .line 982
    move-result-object v3

    .line 983
    move-object v11, v3

    .line 984
    goto :goto_19

    .line 985
    :cond_38
    move-object v11, v6

    .line 986
    :goto_19
    iget-object v3, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    .line 987
    .line 988
    invoke-static {v3}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->z0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Ljava/lang/String;

    .line 989
    .line 990
    .line 991
    move-result-object v12

    .line 992
    iget-object v3, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->$item:Lcom/transsion/moviedetailapi/DownloadItem;

    .line 993
    .line 994
    if-eqz v3, :cond_39

    .line 995
    .line 996
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/DownloadItem;->getResourceId()Ljava/lang/String;

    .line 997
    .line 998
    .line 999
    move-result-object v6

    .line 1000
    :cond_39
    move-object v13, v6

    .line 1001
    invoke-static/range {v7 .. v14}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->s0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    .line 1003
    .line 1004
    iget-object v3, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    .line 1005
    .line 1006
    invoke-static {v3}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->v0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsnet/downloader/manager/g;

    .line 1007
    .line 1008
    .line 1009
    move-result-object v3

    .line 1010
    iget-object v4, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    .line 1011
    .line 1012
    invoke-static {v4}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->u0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 1013
    .line 1014
    .line 1015
    move-result-object v4

    .line 1016
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 1017
    .line 1018
    .line 1019
    invoke-interface {v3, v4}, Lcom/transsnet/downloader/manager/g;->p(Lcom/transsion/baselib/db/download/DownloadBean;)V

    .line 1020
    .line 1021
    .line 1022
    iget-object v3, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    .line 1023
    .line 1024
    invoke-static {v3}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->u0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 1025
    .line 1026
    .line 1027
    move-result-object v3

    .line 1028
    if-eqz v3, :cond_3a

    .line 1029
    .line 1030
    iget-object v4, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    .line 1031
    .line 1032
    invoke-static {v4}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->B0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsnet/downloader/manager/StartDownloadHelper;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v4

    .line 1036
    new-array v2, v2, [Lcom/transsion/baselib/db/download/DownloadBean;

    .line 1037
    .line 1038
    aput-object v3, v2, v1

    .line 1039
    .line 1040
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->h([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 1041
    .line 1042
    .line 1043
    move-result-object v1

    .line 1044
    invoke-virtual {v4, v1}, Lcom/transsnet/downloader/manager/StartDownloadHelper;->f(Ljava/util/List;)V

    .line 1045
    .line 1046
    .line 1047
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 1048
    .line 1049
    :cond_3a
    :goto_1a
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 1050
    .line 1051
    return-object v1
.end method
