.class final Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getShortTvInfo$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->n(Ljava/lang/String;Z)V
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
    c = "com.transsion.shorttv.viewmodel.ShortTvDownloadViewModel$getShortTvInfo$1"
    f = "ShortTvDownloadViewModel.kt"
    l = {
        0x4e,
        0x56,
        0x61
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $forLoginRefresh:Z

.field final synthetic $subjectId:Ljava/lang/String;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;ZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getShortTvInfo$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getShortTvInfo$1;->$subjectId:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getShortTvInfo$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getShortTvInfo$1;->$forLoginRefresh:Z

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
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
    new-instance v0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getShortTvInfo$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getShortTvInfo$1;->$subjectId:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getShortTvInfo$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;

    .line 6
    .line 7
    iget-boolean v3, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getShortTvInfo$1;->$forLoginRefresh:Z

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3, p2}, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getShortTvInfo$1;-><init>(Ljava/lang/String;Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;ZLkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, v0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getShortTvInfo$1;->L$0:Ljava/lang/Object;

    .line 13
    .line 14
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getShortTvInfo$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getShortTvInfo$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getShortTvInfo$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getShortTvInfo$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getShortTvInfo$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v4, 0x1

    .line 10
    const/4 v5, 0x0

    .line 11
    if-eqz v1, :cond_3

    .line 12
    .line 13
    if-eq v1, v4, :cond_2

    .line 14
    .line 15
    if-eq v1, v3, :cond_1

    .line 16
    .line 17
    if-ne v1, v2, :cond_0

    .line 18
    .line 19
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    goto/16 :goto_7

    .line 23
    .line 24
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 27
    .line 28
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1

    .line 32
    :cond_1
    iget-object v1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getShortTvInfo$1;->L$0:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v1, Lcom/transsion/shorttv/bean/Subject;

    .line 35
    .line 36
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    goto/16 :goto_3

    .line 40
    .line 41
    :catchall_0
    move-exception p1

    .line 42
    goto/16 :goto_5

    .line 43
    .line 44
    :cond_2
    iget-object v1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getShortTvInfo$1;->L$0:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v1, Lkotlinx/coroutines/n0;

    .line 47
    .line 48
    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getShortTvInfo$1;->L$0:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast p1, Lkotlinx/coroutines/n0;

    .line 58
    .line 59
    sget-object v6, Lwf/a;->a:Lwf/a$a;

    .line 60
    .line 61
    iget-object v1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getShortTvInfo$1;->$subjectId:Ljava/lang/String;

    .line 62
    .line 63
    new-instance v7, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string v8, "getShortTvInfo, subjectId = "

    .line 69
    .line 70
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v8

    .line 80
    const/4 v10, 0x4

    .line 81
    const/4 v11, 0x0

    .line 82
    const-string v7, "ShortTvDownload"

    .line 83
    .line 84
    const/4 v9, 0x0

    .line 85
    invoke-static/range {v6 .. v11}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    :try_start_2
    iget-object v1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getShortTvInfo$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;

    .line 89
    .line 90
    invoke-static {v1}, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->e(Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;)Lsr/a;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    iget-object v7, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getShortTvInfo$1;->$subjectId:Ljava/lang/String;

    .line 95
    .line 96
    iput-object p1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getShortTvInfo$1;->L$0:Ljava/lang/Object;

    .line 97
    .line 98
    iput v4, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getShortTvInfo$1;->label:I

    .line 99
    .line 100
    const/4 v8, 0x0

    .line 101
    const/4 v10, 0x2

    .line 102
    const/4 v11, 0x0

    .line 103
    move-object v9, p0

    .line 104
    invoke-static/range {v6 .. v11}, Lsr/a$a;->d(Lsr/a;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    if-ne p1, v0, :cond_4

    .line 109
    .line 110
    return-object v0

    .line 111
    :cond_4
    :goto_0
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    .line 112
    .line 113
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    const-string v4, "0"

    .line 118
    .line 119
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-eqz v1, :cond_5

    .line 124
    .line 125
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    check-cast p1, Lcom/transsion/shorttv/bean/Subject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_5
    move-object p1, v5

    .line 133
    :goto_1
    move-object v1, p1

    .line 134
    goto :goto_2

    .line 135
    :catch_0
    move-object v1, v5

    .line 136
    :goto_2
    if-eqz v1, :cond_9

    .line 137
    .line 138
    iget-object p1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getShortTvInfo$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;

    .line 139
    .line 140
    iget-object v4, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getShortTvInfo$1;->$subjectId:Ljava/lang/String;

    .line 141
    .line 142
    :try_start_3
    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 143
    .line 144
    invoke-static {p1}, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->d(Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;)Lcom/transsion/shorttv/db/ShortTvAdUnlockDao;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    if-eqz p1, :cond_8

    .line 149
    .line 150
    iput-object v1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getShortTvInfo$1;->L$0:Ljava/lang/Object;

    .line 151
    .line 152
    iput v3, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getShortTvInfo$1;->label:I

    .line 153
    .line 154
    invoke-interface {p1, v4, p0}, Lcom/transsion/shorttv/db/ShortTvAdUnlockDao;->a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    if-ne p1, v0, :cond_6

    .line 159
    .line 160
    return-object v0

    .line 161
    :cond_6
    :goto_3
    check-cast p1, Lcom/transsion/shorttv/db/e;

    .line 162
    .line 163
    if-eqz p1, :cond_8

    .line 164
    .line 165
    invoke-virtual {p1}, Lcom/transsion/shorttv/db/e;->c()Ljava/util/Set;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    if-eqz p1, :cond_8

    .line 170
    .line 171
    sget-object v6, Lwf/a;->a:Lwf/a$a;

    .line 172
    .line 173
    const-string v7, "ShortTvDownload"

    .line 174
    .line 175
    new-instance v3, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .line 179
    .line 180
    const-string v4, "loadAdUnlockedEps result="

    .line 181
    .line 182
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    filled-new-array {v3}, [Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v8

    .line 196
    const/4 v10, 0x4

    .line 197
    const/4 v11, 0x0

    .line 198
    const/4 v9, 0x0

    .line 199
    invoke-static/range {v6 .. v11}, Lwf/a$a;->r(Lwf/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    move-object v3, p1

    .line 203
    check-cast v3, Ljava/util/Collection;

    .line 204
    .line 205
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 206
    .line 207
    .line 208
    move-result v3

    .line 209
    if-nez v3, :cond_7

    .line 210
    .line 211
    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/Subject;->getAdUnlockedEps()Ljava/util/Set;

    .line 212
    .line 213
    .line 214
    move-result-object v3

    .line 215
    check-cast p1, Ljava/util/Collection;

    .line 216
    .line 217
    invoke-interface {v3, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 218
    .line 219
    .line 220
    :cond_7
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 221
    .line 222
    goto :goto_4

    .line 223
    :cond_8
    move-object p1, v5

    .line 224
    :goto_4
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 228
    goto :goto_6

    .line 229
    :goto_5
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 230
    .line 231
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    :goto_6
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    if-eqz p1, :cond_9

    .line 244
    .line 245
    sget-object v6, Lwf/a;->a:Lwf/a$a;

    .line 246
    .line 247
    new-instance v3, Ljava/lang/StringBuilder;

    .line 248
    .line 249
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 250
    .line 251
    .line 252
    const-string v4, "loadAdUnlockedEps error: "

    .line 253
    .line 254
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v8

    .line 264
    const/4 v10, 0x4

    .line 265
    const/4 v11, 0x0

    .line 266
    const-string v7, "ShortTvDownload"

    .line 267
    .line 268
    const/4 v9, 0x0

    .line 269
    invoke-static/range {v6 .. v11}, Lwf/a$a;->l(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 270
    .line 271
    .line 272
    :cond_9
    sget-object p1, Ldr/b;->a:Ldr/b;

    .line 273
    .line 274
    invoke-virtual {p1, v1}, Ldr/b;->e(Lcom/transsion/shorttv/bean/Subject;)V

    .line 275
    .line 276
    .line 277
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 278
    .line 279
    .line 280
    move-result-object p1

    .line 281
    new-instance v3, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getShortTvInfo$1$3;

    .line 282
    .line 283
    iget-object v4, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getShortTvInfo$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;

    .line 284
    .line 285
    iget-boolean v6, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getShortTvInfo$1;->$forLoginRefresh:Z

    .line 286
    .line 287
    invoke-direct {v3, v4, v1, v6, v5}, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getShortTvInfo$1$3;-><init>(Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;Lcom/transsion/shorttv/bean/Subject;ZLkotlin/coroutines/Continuation;)V

    .line 288
    .line 289
    .line 290
    iput-object v5, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getShortTvInfo$1;->L$0:Ljava/lang/Object;

    .line 291
    .line 292
    iput v2, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getShortTvInfo$1;->label:I

    .line 293
    .line 294
    invoke-static {p1, v3, p0}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object p1

    .line 298
    if-ne p1, v0, :cond_a

    .line 299
    .line 300
    return-object v0

    .line 301
    :cond_a
    :goto_7
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 302
    .line 303
    return-object p1
.end method
