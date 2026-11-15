.class final Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$forceRefreshSubjectInfo$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->T(Ljava/lang/String;I)V
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
    c = "com.transsion.shorttv.viewmodel.ShortTvViewModel$forceRefreshSubjectInfo$1"
    f = "ShortTvViewModel.kt"
    l = {
        0x36b,
        0x378,
        0x37f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $subjectId:Ljava/lang/String;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$forceRefreshSubjectInfo$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$forceRefreshSubjectInfo$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$forceRefreshSubjectInfo$1;->$subjectId:Ljava/lang/String;

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
    .locals 3
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
    new-instance v0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$forceRefreshSubjectInfo$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$forceRefreshSubjectInfo$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$forceRefreshSubjectInfo$1;->$subjectId:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, p2}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$forceRefreshSubjectInfo$1;-><init>(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, v0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$forceRefreshSubjectInfo$1;->L$0:Ljava/lang/Object;

    .line 11
    .line 12
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$forceRefreshSubjectInfo$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$forceRefreshSubjectInfo$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$forceRefreshSubjectInfo$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$forceRefreshSubjectInfo$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$forceRefreshSubjectInfo$1;->label:I

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
    goto/16 :goto_a

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
    iget-object v1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$forceRefreshSubjectInfo$1;->L$0:Ljava/lang/Object;

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
    goto/16 :goto_6

    .line 40
    .line 41
    :catchall_0
    move-exception p1

    .line 42
    goto/16 :goto_8

    .line 43
    .line 44
    :cond_2
    iget-object v1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$forceRefreshSubjectInfo$1;->L$0:Ljava/lang/Object;

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
    :catch_0
    move-exception p1

    .line 53
    goto :goto_4

    .line 54
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$forceRefreshSubjectInfo$1;->L$0:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast p1, Lkotlinx/coroutines/n0;

    .line 60
    .line 61
    :try_start_2
    iget-object v1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$forceRefreshSubjectInfo$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 62
    .line 63
    invoke-static {v1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->t(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lsr/a;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    iget-object v7, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$forceRefreshSubjectInfo$1;->$subjectId:Ljava/lang/String;

    .line 68
    .line 69
    iput-object p1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$forceRefreshSubjectInfo$1;->L$0:Ljava/lang/Object;

    .line 70
    .line 71
    iput v4, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$forceRefreshSubjectInfo$1;->label:I

    .line 72
    .line 73
    const/4 v8, 0x0

    .line 74
    const/4 v10, 0x2

    .line 75
    const/4 v11, 0x0

    .line 76
    move-object v9, p0

    .line 77
    invoke-static/range {v6 .. v11}, Lsr/a$a;->d(Lsr/a;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    if-ne p1, v0, :cond_4

    .line 82
    .line 83
    return-object v0

    .line 84
    :cond_4
    :goto_0
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    .line 85
    .line 86
    if-eqz p1, :cond_5

    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    check-cast p1, Lcom/transsion/shorttv/bean/Subject;

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_5
    move-object p1, v5

    .line 96
    :goto_1
    sget-object v1, Ldr/b;->a:Ldr/b;

    .line 97
    .line 98
    invoke-virtual {v1, p1}, Ldr/b;->e(Lcom/transsion/shorttv/bean/Subject;)V

    .line 99
    .line 100
    .line 101
    if-eqz p1, :cond_7

    .line 102
    .line 103
    iget-object v1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$forceRefreshSubjectInfo$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 104
    .line 105
    invoke-static {v1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->C(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Landroidx/lifecycle/b0;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    check-cast v1, Lcom/transsion/shorttv/bean/Subject;

    .line 114
    .line 115
    if-eqz v1, :cond_6

    .line 116
    .line 117
    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/Subject;->getOps()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    goto :goto_2

    .line 122
    :cond_6
    move-object v1, v5

    .line 123
    :goto_2
    invoke-virtual {p1, v1}, Lcom/transsion/shorttv/bean/Subject;->setOps(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    :cond_7
    iget-object v1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$forceRefreshSubjectInfo$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 127
    .line 128
    iget-object v4, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$forceRefreshSubjectInfo$1;->$subjectId:Ljava/lang/String;

    .line 129
    .line 130
    if-eqz p1, :cond_8

    .line 131
    .line 132
    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Subject;->getShortTVFavInfo()Lcom/transsion/shorttv/bean/ShortTVFavInfo;

    .line 133
    .line 134
    .line 135
    move-result-object v6

    .line 136
    goto :goto_3

    .line 137
    :cond_8
    move-object v6, v5

    .line 138
    :goto_3
    invoke-static {v1, v4, v6}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->I(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;Ljava/lang/String;Lcom/transsion/shorttv/bean/ShortTVFavInfo;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 139
    .line 140
    .line 141
    move-object v1, p1

    .line 142
    goto :goto_5

    .line 143
    :goto_4
    sget-object v6, Lwf/a;->a:Lwf/a$a;

    .line 144
    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .line 149
    .line 150
    const-string v4, "forceRefreshSubjectInfo error: "

    .line 151
    .line 152
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v8

    .line 162
    const/4 v10, 0x4

    .line 163
    const/4 v11, 0x0

    .line 164
    const-string v7, "ShortTvViewModel"

    .line 165
    .line 166
    const/4 v9, 0x0

    .line 167
    invoke-static/range {v6 .. v11}, Lwf/a$a;->l(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    move-object v1, v5

    .line 171
    :goto_5
    if-nez v1, :cond_9

    .line 172
    .line 173
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 174
    .line 175
    return-object p1

    .line 176
    :cond_9
    iget-object p1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$forceRefreshSubjectInfo$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 177
    .line 178
    iget-object v4, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$forceRefreshSubjectInfo$1;->$subjectId:Ljava/lang/String;

    .line 179
    .line 180
    :try_start_3
    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 181
    .line 182
    invoke-static {p1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->n(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lcom/transsion/shorttv/db/ShortTvAdUnlockDao;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    if-eqz p1, :cond_c

    .line 187
    .line 188
    iput-object v1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$forceRefreshSubjectInfo$1;->L$0:Ljava/lang/Object;

    .line 189
    .line 190
    iput v3, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$forceRefreshSubjectInfo$1;->label:I

    .line 191
    .line 192
    invoke-interface {p1, v4, p0}, Lcom/transsion/shorttv/db/ShortTvAdUnlockDao;->a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    if-ne p1, v0, :cond_a

    .line 197
    .line 198
    return-object v0

    .line 199
    :cond_a
    :goto_6
    check-cast p1, Lcom/transsion/shorttv/db/e;

    .line 200
    .line 201
    if-eqz p1, :cond_c

    .line 202
    .line 203
    invoke-virtual {p1}, Lcom/transsion/shorttv/db/e;->c()Ljava/util/Set;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    if-eqz p1, :cond_c

    .line 208
    .line 209
    move-object v3, p1

    .line 210
    check-cast v3, Ljava/util/Collection;

    .line 211
    .line 212
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 213
    .line 214
    .line 215
    move-result v3

    .line 216
    if-nez v3, :cond_b

    .line 217
    .line 218
    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/Subject;->getAdUnlockedEps()Ljava/util/Set;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    check-cast p1, Ljava/util/Collection;

    .line 223
    .line 224
    invoke-interface {v3, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 225
    .line 226
    .line 227
    :cond_b
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 228
    .line 229
    goto :goto_7

    .line 230
    :cond_c
    move-object p1, v5

    .line 231
    :goto_7
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 235
    goto :goto_9

    .line 236
    :goto_8
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 237
    .line 238
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    :goto_9
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    if-eqz p1, :cond_d

    .line 251
    .line 252
    sget-object v6, Lwf/a;->a:Lwf/a$a;

    .line 253
    .line 254
    new-instance v3, Ljava/lang/StringBuilder;

    .line 255
    .line 256
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 257
    .line 258
    .line 259
    const-string v4, "forceRefreshSubjectInfo loadAdUnlockedEps error: "

    .line 260
    .line 261
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v8

    .line 271
    const/4 v10, 0x4

    .line 272
    const/4 v11, 0x0

    .line 273
    const-string v7, "ShortTvViewModel"

    .line 274
    .line 275
    const/4 v9, 0x0

    .line 276
    invoke-static/range {v6 .. v11}, Lwf/a$a;->l(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 277
    .line 278
    .line 279
    :cond_d
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 280
    .line 281
    .line 282
    move-result-object p1

    .line 283
    new-instance v3, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$forceRefreshSubjectInfo$1$3;

    .line 284
    .line 285
    iget-object v4, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$forceRefreshSubjectInfo$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 286
    .line 287
    invoke-direct {v3, v4, v1, v5}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$forceRefreshSubjectInfo$1$3;-><init>(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;Lcom/transsion/shorttv/bean/Subject;Lkotlin/coroutines/Continuation;)V

    .line 288
    .line 289
    .line 290
    iput-object v5, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$forceRefreshSubjectInfo$1;->L$0:Ljava/lang/Object;

    .line 291
    .line 292
    iput v2, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$forceRefreshSubjectInfo$1;->label:I

    .line 293
    .line 294
    invoke-static {p1, v3, p0}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object p1

    .line 298
    if-ne p1, v0, :cond_e

    .line 299
    .line 300
    return-object v0

    .line 301
    :cond_e
    :goto_a
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 302
    .line 303
    return-object p1
.end method
