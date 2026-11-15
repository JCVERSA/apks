.class final Lcom/transsnet/downloader/viewmodel/LocalFileViewModel$getOutsideLocalVideoList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;->j(Z)V
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
    c = "com.transsnet.downloader.viewmodel.LocalFileViewModel$getOutsideLocalVideoList$1"
    f = "LocalFileViewModel.kt"
    l = {
        0x2e,
        0x33
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $fromDb:Z

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field Z$0:Z

.field label:I

.field final synthetic this$0:Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;ZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsnet/downloader/viewmodel/LocalFileViewModel$getOutsideLocalVideoList$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/viewmodel/LocalFileViewModel$getOutsideLocalVideoList$1;->this$0:Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/transsnet/downloader/viewmodel/LocalFileViewModel$getOutsideLocalVideoList$1;->$fromDb:Z

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
    new-instance p1, Lcom/transsnet/downloader/viewmodel/LocalFileViewModel$getOutsideLocalVideoList$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/LocalFileViewModel$getOutsideLocalVideoList$1;->this$0:Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/transsnet/downloader/viewmodel/LocalFileViewModel$getOutsideLocalVideoList$1;->$fromDb:Z

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/transsnet/downloader/viewmodel/LocalFileViewModel$getOutsideLocalVideoList$1;-><init>(Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;ZLkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/viewmodel/LocalFileViewModel$getOutsideLocalVideoList$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/viewmodel/LocalFileViewModel$getOutsideLocalVideoList$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsnet/downloader/viewmodel/LocalFileViewModel$getOutsideLocalVideoList$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/viewmodel/LocalFileViewModel$getOutsideLocalVideoList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/transsnet/downloader/viewmodel/LocalFileViewModel$getOutsideLocalVideoList$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    if-eq v1, v3, :cond_1

    .line 12
    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    iget-boolean v1, p0, Lcom/transsnet/downloader/viewmodel/LocalFileViewModel$getOutsideLocalVideoList$1;->Z$0:Z

    .line 16
    .line 17
    iget-object v4, p0, Lcom/transsnet/downloader/viewmodel/LocalFileViewModel$getOutsideLocalVideoList$1;->L$3:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v4, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 20
    .line 21
    iget-object v5, p0, Lcom/transsnet/downloader/viewmodel/LocalFileViewModel$getOutsideLocalVideoList$1;->L$2:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v5, Ljava/util/Iterator;

    .line 24
    .line 25
    iget-object v6, p0, Lcom/transsnet/downloader/viewmodel/LocalFileViewModel$getOutsideLocalVideoList$1;->L$1:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v6, Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;

    .line 28
    .line 29
    iget-object v7, p0, Lcom/transsnet/downloader/viewmodel/LocalFileViewModel$getOutsideLocalVideoList$1;->L$0:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v7, Ljava/util/List;

    .line 32
    .line 33
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    goto/16 :goto_4

    .line 37
    .line 38
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 39
    .line 40
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 41
    .line 42
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p1

    .line 46
    :cond_1
    iget-boolean v1, p0, Lcom/transsnet/downloader/viewmodel/LocalFileViewModel$getOutsideLocalVideoList$1;->Z$0:Z

    .line 47
    .line 48
    iget-object v4, p0, Lcom/transsnet/downloader/viewmodel/LocalFileViewModel$getOutsideLocalVideoList$1;->L$3:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v4, Lcom/transsnet/downloader/viewmodel/j0;

    .line 51
    .line 52
    iget-object v5, p0, Lcom/transsnet/downloader/viewmodel/LocalFileViewModel$getOutsideLocalVideoList$1;->L$2:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v5, Ljava/util/Iterator;

    .line 55
    .line 56
    iget-object v6, p0, Lcom/transsnet/downloader/viewmodel/LocalFileViewModel$getOutsideLocalVideoList$1;->L$1:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v6, Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;

    .line 59
    .line 60
    iget-object v7, p0, Lcom/transsnet/downloader/viewmodel/LocalFileViewModel$getOutsideLocalVideoList$1;->L$0:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v7, Ljava/util/List;

    .line 63
    .line 64
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    goto/16 :goto_1

    .line 68
    .line 69
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    sget-object p1, Lcom/transsnet/downloader/viewmodel/a0;->a:Lcom/transsnet/downloader/viewmodel/a0;

    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/transsnet/downloader/viewmodel/a0;->a()Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-nez v1, :cond_3

    .line 79
    .line 80
    iget-object p1, p0, Lcom/transsnet/downloader/viewmodel/LocalFileViewModel$getOutsideLocalVideoList$1;->this$0:Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;

    .line 81
    .line 82
    invoke-static {p1}, Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;->h(Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;)Landroidx/lifecycle/b0;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    const/4 v0, 0x0

    .line 87
    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 91
    .line 92
    return-object p1

    .line 93
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 94
    .line 95
    .line 96
    move-result-wide v4

    .line 97
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 98
    .line 99
    iget-object v6, p0, Lcom/transsnet/downloader/viewmodel/LocalFileViewModel$getOutsideLocalVideoList$1;->this$0:Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;

    .line 100
    .line 101
    invoke-virtual {v6}, Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel;->f()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    const/4 v10, 0x4

    .line 106
    const/4 v11, 0x0

    .line 107
    const-string v8, "\u5f00\u59cb\u83b7\u53d6\u7ad9\u5916\u89c6\u9891 "

    .line 108
    .line 109
    const/4 v9, 0x0

    .line 110
    move-object v6, v1

    .line 111
    invoke-static/range {v6 .. v11}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Lcom/transsnet/downloader/viewmodel/a0;->n()Ljava/util/List;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    new-instance v12, Ljava/util/ArrayList;

    .line 119
    .line 120
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .line 122
    .line 123
    iget-object v6, p0, Lcom/transsnet/downloader/viewmodel/LocalFileViewModel$getOutsideLocalVideoList$1;->this$0:Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;

    .line 124
    .line 125
    invoke-virtual {v6}, Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel;->f()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v7

    .line 129
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 130
    .line 131
    .line 132
    move-result v6

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 134
    .line 135
    .line 136
    move-result-wide v8

    .line 137
    sub-long/2addr v8, v4

    .line 138
    new-instance v4, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    const-string v5, "getOutsideVideoDownloadList --> videos = "

    .line 144
    .line 145
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string v5, " --- consume = "

    .line 152
    .line 153
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v8

    .line 163
    const/4 v9, 0x0

    .line 164
    move-object v6, v1

    .line 165
    invoke-static/range {v6 .. v11}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    check-cast p1, Ljava/lang/Iterable;

    .line 169
    .line 170
    iget-boolean v1, p0, Lcom/transsnet/downloader/viewmodel/LocalFileViewModel$getOutsideLocalVideoList$1;->$fromDb:Z

    .line 171
    .line 172
    iget-object v4, p0, Lcom/transsnet/downloader/viewmodel/LocalFileViewModel$getOutsideLocalVideoList$1;->this$0:Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;

    .line 173
    .line 174
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 179
    .line 180
    .line 181
    move-result v5

    .line 182
    if-eqz v5, :cond_9

    .line 183
    .line 184
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v5

    .line 188
    check-cast v5, Lcom/transsnet/downloader/viewmodel/j0;

    .line 189
    .line 190
    sget-object v6, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    .line 191
    .line 192
    invoke-virtual {v6}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    .line 193
    .line 194
    .line 195
    move-result-object v6

    .line 196
    invoke-virtual {v5}, Lcom/transsnet/downloader/viewmodel/j0;->e()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v7

    .line 200
    if-nez v7, :cond_4

    .line 201
    .line 202
    const-string v7, ""

    .line 203
    .line 204
    :cond_4
    iput-object v12, p0, Lcom/transsnet/downloader/viewmodel/LocalFileViewModel$getOutsideLocalVideoList$1;->L$0:Ljava/lang/Object;

    .line 205
    .line 206
    iput-object v4, p0, Lcom/transsnet/downloader/viewmodel/LocalFileViewModel$getOutsideLocalVideoList$1;->L$1:Ljava/lang/Object;

    .line 207
    .line 208
    iput-object p1, p0, Lcom/transsnet/downloader/viewmodel/LocalFileViewModel$getOutsideLocalVideoList$1;->L$2:Ljava/lang/Object;

    .line 209
    .line 210
    iput-object v5, p0, Lcom/transsnet/downloader/viewmodel/LocalFileViewModel$getOutsideLocalVideoList$1;->L$3:Ljava/lang/Object;

    .line 211
    .line 212
    iput-boolean v1, p0, Lcom/transsnet/downloader/viewmodel/LocalFileViewModel$getOutsideLocalVideoList$1;->Z$0:Z

    .line 213
    .line 214
    iput v3, p0, Lcom/transsnet/downloader/viewmodel/LocalFileViewModel$getOutsideLocalVideoList$1;->label:I

    .line 215
    .line 216
    invoke-virtual {v6, v7, v1, p0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->E(Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v6

    .line 220
    if-ne v6, v0, :cond_5

    .line 221
    .line 222
    return-object v0

    .line 223
    :cond_5
    move-object v7, v12

    .line 224
    move-object v13, v5

    .line 225
    move-object v5, p1

    .line 226
    move-object p1, v6

    .line 227
    move-object v6, v4

    .line 228
    move-object v4, v13

    .line 229
    :goto_1
    check-cast p1, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 230
    .line 231
    if-eqz p1, :cond_7

    .line 232
    .line 233
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getCover()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v8

    .line 237
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 238
    .line 239
    .line 240
    move-result v8

    .line 241
    if-eqz v8, :cond_6

    .line 242
    .line 243
    goto :goto_3

    .line 244
    :cond_6
    invoke-interface {v7, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    :goto_2
    move-object p1, v5

    .line 248
    move-object v4, v6

    .line 249
    move-object v12, v7

    .line 250
    goto :goto_0

    .line 251
    :cond_7
    :goto_3
    invoke-virtual {v6, v4}, Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel;->c(Lcom/transsnet/downloader/viewmodel/j0;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 252
    .line 253
    .line 254
    move-result-object v4

    .line 255
    sget-object p1, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    .line 256
    .line 257
    invoke-virtual {p1}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    iput-object v7, p0, Lcom/transsnet/downloader/viewmodel/LocalFileViewModel$getOutsideLocalVideoList$1;->L$0:Ljava/lang/Object;

    .line 262
    .line 263
    iput-object v6, p0, Lcom/transsnet/downloader/viewmodel/LocalFileViewModel$getOutsideLocalVideoList$1;->L$1:Ljava/lang/Object;

    .line 264
    .line 265
    iput-object v5, p0, Lcom/transsnet/downloader/viewmodel/LocalFileViewModel$getOutsideLocalVideoList$1;->L$2:Ljava/lang/Object;

    .line 266
    .line 267
    iput-object v4, p0, Lcom/transsnet/downloader/viewmodel/LocalFileViewModel$getOutsideLocalVideoList$1;->L$3:Ljava/lang/Object;

    .line 268
    .line 269
    iput-boolean v1, p0, Lcom/transsnet/downloader/viewmodel/LocalFileViewModel$getOutsideLocalVideoList$1;->Z$0:Z

    .line 270
    .line 271
    iput v2, p0, Lcom/transsnet/downloader/viewmodel/LocalFileViewModel$getOutsideLocalVideoList$1;->label:I

    .line 272
    .line 273
    invoke-virtual {p1, v4, p0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->T(Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    if-ne p1, v0, :cond_8

    .line 278
    .line 279
    return-object v0

    .line 280
    :cond_8
    :goto_4
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    goto :goto_2

    .line 284
    :cond_9
    iget-object p1, p0, Lcom/transsnet/downloader/viewmodel/LocalFileViewModel$getOutsideLocalVideoList$1;->this$0:Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;

    .line 285
    .line 286
    invoke-static {p1}, Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;->h(Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;)Landroidx/lifecycle/b0;

    .line 287
    .line 288
    .line 289
    move-result-object p1

    .line 290
    invoke-virtual {p1, v12}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 291
    .line 292
    .line 293
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 294
    .line 295
    iget-object p1, p0, Lcom/transsnet/downloader/viewmodel/LocalFileViewModel$getOutsideLocalVideoList$1;->this$0:Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;

    .line 296
    .line 297
    invoke-virtual {p1}, Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel;->f()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v1

    .line 301
    iget-object p1, p0, Lcom/transsnet/downloader/viewmodel/LocalFileViewModel$getOutsideLocalVideoList$1;->this$0:Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;

    .line 302
    .line 303
    invoke-virtual {p1}, Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel;->d()Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 304
    .line 305
    .line 306
    move-result-object p1

    .line 307
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 308
    .line 309
    .line 310
    move-result p1

    .line 311
    new-instance v2, Ljava/lang/StringBuilder;

    .line 312
    .line 313
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 314
    .line 315
    .line 316
    const-string v3, "\u9700\u8981\u52a0\u8f7d\u7684\u5c01\u9762 coverVideoList = "

    .line 317
    .line 318
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v2

    .line 328
    const/4 v4, 0x4

    .line 329
    const/4 v5, 0x0

    .line 330
    const/4 v3, 0x0

    .line 331
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 332
    .line 333
    .line 334
    iget-object p1, p0, Lcom/transsnet/downloader/viewmodel/LocalFileViewModel$getOutsideLocalVideoList$1;->this$0:Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;

    .line 335
    .line 336
    invoke-virtual {p1}, Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel;->g()V

    .line 337
    .line 338
    .line 339
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 340
    .line 341
    return-object p1
.end method
