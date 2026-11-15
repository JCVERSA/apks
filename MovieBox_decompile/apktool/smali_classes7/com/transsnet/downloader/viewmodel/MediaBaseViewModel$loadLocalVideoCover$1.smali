.class final Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel$loadLocalVideoCover$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel;->g()V
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
    c = "com.transsnet.downloader.viewmodel.MediaBaseViewModel$loadLocalVideoCover$1"
    f = "MediaBaseViewModel.kt"
    l = {
        0x5b,
        0x5f
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel$loadLocalVideoCover$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel$loadLocalVideoCover$1;->this$0:Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel;

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
    new-instance p1, Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel$loadLocalVideoCover$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel$loadLocalVideoCover$1;->this$0:Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel$loadLocalVideoCover$1;-><init>(Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel$loadLocalVideoCover$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel$loadLocalVideoCover$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel$loadLocalVideoCover$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel$loadLocalVideoCover$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel$loadLocalVideoCover$1;->label:I

    .line 6
    .line 7
    const/4 v7, 0x2

    .line 8
    const/4 v8, 0x1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    if-eq v1, v8, :cond_1

    .line 12
    .line 13
    if-ne v1, v7, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel$loadLocalVideoCover$1;->L$2:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v1, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel$loadLocalVideoCover$1;->L$1:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v2, Ljava/util/Iterator;

    .line 22
    .line 23
    iget-object v3, p0, Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel$loadLocalVideoCover$1;->L$0:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v3, Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel;

    .line 26
    .line 27
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    goto/16 :goto_3

    .line 31
    .line 32
    :catchall_0
    move-exception v0

    .line 33
    goto/16 :goto_4

    .line 34
    .line 35
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 36
    .line 37
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 38
    .line 39
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw v0

    .line 43
    :cond_1
    iget-object v1, p0, Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel$loadLocalVideoCover$1;->L$2:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v1, Ljava/lang/String;

    .line 46
    .line 47
    iget-object v2, p0, Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel$loadLocalVideoCover$1;->L$1:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v2, Ljava/util/Iterator;

    .line 50
    .line 51
    iget-object v3, p0, Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel$loadLocalVideoCover$1;->L$0:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v3, Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel;

    .line 54
    .line 55
    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    .line 57
    .line 58
    move-object v11, v1

    .line 59
    move-object v1, p1

    .line 60
    goto/16 :goto_2

    .line 61
    .line 62
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    iget-object v1, p0, Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel$loadLocalVideoCover$1;->this$0:Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel;

    .line 66
    .line 67
    :try_start_2
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 68
    .line 69
    invoke-virtual {v1}, Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel;->d()Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    move-object v9, v1

    .line 78
    move-object v10, v2

    .line 79
    :cond_3
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_9

    .line 84
    .line 85
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    check-cast v1, Lcom/transsnet/downloader/viewmodel/j0;

    .line 90
    .line 91
    sget-object v2, Lcom/transsnet/downloader/viewmodel/a0;->a:Lcom/transsnet/downloader/viewmodel/a0;

    .line 92
    .line 93
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2, v1}, Lcom/transsnet/downloader/viewmodel/a0;->m(Lcom/transsnet/downloader/viewmodel/j0;)Landroid/graphics/Bitmap;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    if-eqz v3, :cond_3

    .line 101
    .line 102
    invoke-virtual {v1}, Lcom/transsnet/downloader/viewmodel/j0;->e()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 106
    const-string v5, ""

    .line 107
    .line 108
    if-nez v4, :cond_4

    .line 109
    .line 110
    move-object v4, v5

    .line 111
    :cond_4
    :try_start_3
    invoke-virtual {v2, v4}, Lcom/transsnet/downloader/viewmodel/a0;->k(Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    invoke-virtual {v2, v4, v3}, Lcom/transsnet/downloader/viewmodel/a0;->w(Ljava/lang/String;Landroid/graphics/Bitmap;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v11

    .line 119
    sget-object v2, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    .line 120
    .line 121
    invoke-virtual {v2}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-virtual {v1}, Lcom/transsnet/downloader/viewmodel/j0;->e()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    if-nez v1, :cond_5

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_5
    move-object v5, v1

    .line 133
    :goto_1
    iput-object v9, p0, Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel$loadLocalVideoCover$1;->L$0:Ljava/lang/Object;

    .line 134
    .line 135
    iput-object v10, p0, Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel$loadLocalVideoCover$1;->L$1:Ljava/lang/Object;

    .line 136
    .line 137
    iput-object v11, p0, Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel$loadLocalVideoCover$1;->L$2:Ljava/lang/Object;

    .line 138
    .line 139
    iput v8, p0, Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel$loadLocalVideoCover$1;->label:I

    .line 140
    .line 141
    const/4 v3, 0x0

    .line 142
    const/4 v6, 0x2

    .line 143
    const/4 v12, 0x0

    .line 144
    move-object v1, v2

    .line 145
    move-object v2, v5

    .line 146
    move-object v4, p0

    .line 147
    move v5, v6

    .line 148
    move-object v6, v12

    .line 149
    invoke-static/range {v1 .. v6}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->F(Lcom/transsnet/downloader/manager/DownloadEsHelper;Ljava/lang/String;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    if-ne v1, v0, :cond_6

    .line 154
    .line 155
    return-object v0

    .line 156
    :cond_6
    move-object v3, v9

    .line 157
    move-object v2, v10

    .line 158
    :goto_2
    check-cast v1, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 159
    .line 160
    if-eqz v1, :cond_8

    .line 161
    .line 162
    invoke-virtual {v1, v11}, Lcom/transsion/baselib/db/download/DownloadBean;->setCover(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    sget-object v4, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    .line 166
    .line 167
    invoke-virtual {v4}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    iput-object v3, p0, Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel$loadLocalVideoCover$1;->L$0:Ljava/lang/Object;

    .line 172
    .line 173
    iput-object v2, p0, Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel$loadLocalVideoCover$1;->L$1:Ljava/lang/Object;

    .line 174
    .line 175
    iput-object v1, p0, Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel$loadLocalVideoCover$1;->L$2:Ljava/lang/Object;

    .line 176
    .line 177
    iput v7, p0, Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel$loadLocalVideoCover$1;->label:I

    .line 178
    .line 179
    invoke-virtual {v4, v1, p0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->b0(Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v4

    .line 183
    if-ne v4, v0, :cond_7

    .line 184
    .line 185
    return-object v0

    .line 186
    :cond_7
    :goto_3
    invoke-static {v3}, Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel;->b(Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel;)Landroidx/lifecycle/b0;

    .line 187
    .line 188
    .line 189
    move-result-object v4

    .line 190
    invoke-virtual {v4, v1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    :cond_8
    move-object v10, v2

    .line 194
    move-object v9, v3

    .line 195
    goto :goto_0

    .line 196
    :cond_9
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 197
    .line 198
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 202
    goto :goto_5

    .line 203
    :goto_4
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 204
    .line 205
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    :goto_5
    iget-object v1, p0, Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel$loadLocalVideoCover$1;->this$0:Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel;

    .line 214
    .line 215
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    if-nez v0, :cond_a

    .line 220
    .line 221
    goto :goto_6

    .line 222
    :cond_a
    sget-object v7, Lwf/a;->a:Lwf/a$a;

    .line 223
    .line 224
    invoke-virtual {v1}, Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel;->f()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v8

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    .line 229
    .line 230
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    .line 232
    .line 233
    const-string v2, "loadVideoCover --> it = "

    .line 234
    .line 235
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v9

    .line 245
    const/4 v11, 0x4

    .line 246
    const/4 v12, 0x0

    .line 247
    const/4 v10, 0x0

    .line 248
    invoke-static/range {v7 .. v12}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 249
    .line 250
    .line 251
    :goto_6
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 252
    .line 253
    return-object v0
.end method
