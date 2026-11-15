.class final Lcom/transsion/home/viewmodel/TrendingViewModel$getTrendingList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/viewmodel/TrendingViewModel;->Y(Ljava/lang/String;IZ)V
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
    c = "com.transsion.home.viewmodel.TrendingViewModel$getTrendingList$1"
    f = "TrendingViewModel.kt"
    l = {
        0x57
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $nextPage:Ljava/lang/String;

.field final synthetic $requestEntity:Lcom/transsion/home/bean/TrendingRequestEntity;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/home/viewmodel/TrendingViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/home/bean/TrendingRequestEntity;Lcom/transsion/home/viewmodel/TrendingViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/home/bean/TrendingRequestEntity;",
            "Lcom/transsion/home/viewmodel/TrendingViewModel;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/home/viewmodel/TrendingViewModel$getTrendingList$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/home/viewmodel/TrendingViewModel$getTrendingList$1;->$requestEntity:Lcom/transsion/home/bean/TrendingRequestEntity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/home/viewmodel/TrendingViewModel$getTrendingList$1;->this$0:Lcom/transsion/home/viewmodel/TrendingViewModel;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/home/viewmodel/TrendingViewModel$getTrendingList$1;->$nextPage:Ljava/lang/String;

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
    new-instance v0, Lcom/transsion/home/viewmodel/TrendingViewModel$getTrendingList$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/home/viewmodel/TrendingViewModel$getTrendingList$1;->$requestEntity:Lcom/transsion/home/bean/TrendingRequestEntity;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/home/viewmodel/TrendingViewModel$getTrendingList$1;->this$0:Lcom/transsion/home/viewmodel/TrendingViewModel;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/home/viewmodel/TrendingViewModel$getTrendingList$1;->$nextPage:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3, p2}, Lcom/transsion/home/viewmodel/TrendingViewModel$getTrendingList$1;-><init>(Lcom/transsion/home/bean/TrendingRequestEntity;Lcom/transsion/home/viewmodel/TrendingViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, v0, Lcom/transsion/home/viewmodel/TrendingViewModel$getTrendingList$1;->L$0:Ljava/lang/Object;

    .line 13
    .line 14
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/viewmodel/TrendingViewModel$getTrendingList$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/viewmodel/TrendingViewModel$getTrendingList$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/home/viewmodel/TrendingViewModel$getTrendingList$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/home/viewmodel/TrendingViewModel$getTrendingList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/transsion/home/viewmodel/TrendingViewModel$getTrendingList$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    if-ne v1, v3, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/transsion/home/viewmodel/TrendingViewModel$getTrendingList$1;->L$2:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Ljava/lang/String;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/transsion/home/viewmodel/TrendingViewModel$getTrendingList$1;->L$1:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v1, Lcom/transsion/home/viewmodel/TrendingViewModel;

    .line 20
    .line 21
    iget-object v4, p0, Lcom/transsion/home/viewmodel/TrendingViewModel$getTrendingList$1;->L$0:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v4, Lkotlinx/coroutines/n0;

    .line 24
    .line 25
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception p1

    .line 30
    goto/16 :goto_3

    .line 31
    .line 32
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 33
    .line 34
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 35
    .line 36
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p1

    .line 40
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/transsion/home/viewmodel/TrendingViewModel$getTrendingList$1;->L$0:Ljava/lang/Object;

    .line 44
    .line 45
    move-object v4, p1

    .line 46
    check-cast v4, Lkotlinx/coroutines/n0;

    .line 47
    .line 48
    :try_start_1
    sget-object p1, Lmg/b;->a:Lmg/b$a;

    .line 49
    .line 50
    iget-object v1, p0, Lcom/transsion/home/viewmodel/TrendingViewModel$getTrendingList$1;->$requestEntity:Lcom/transsion/home/bean/TrendingRequestEntity;

    .line 51
    .line 52
    invoke-static {v1}, Lcom/blankj/utilcode/util/o;->j(Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    const-string v5, "toJson(...)"

    .line 57
    .line 58
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v1}, Lmg/b$a;->a(Ljava/lang/Object;)Lokhttp3/RequestBody;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    if-eqz p1, :cond_7

    .line 66
    .line 67
    iget-object v1, p0, Lcom/transsion/home/viewmodel/TrendingViewModel$getTrendingList$1;->this$0:Lcom/transsion/home/viewmodel/TrendingViewModel;

    .line 68
    .line 69
    iget-object v5, p0, Lcom/transsion/home/viewmodel/TrendingViewModel$getTrendingList$1;->$nextPage:Ljava/lang/String;

    .line 70
    .line 71
    invoke-static {v1}, Lcom/transsion/home/viewmodel/TrendingViewModel;->S(Lcom/transsion/home/viewmodel/TrendingViewModel;)Lyk/e;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    sget-object v7, Lgg/a;->a:Lgg/a$a;

    .line 76
    .line 77
    invoke-virtual {v7}, Lgg/a$a;->a()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    iput-object v4, p0, Lcom/transsion/home/viewmodel/TrendingViewModel$getTrendingList$1;->L$0:Ljava/lang/Object;

    .line 82
    .line 83
    iput-object v1, p0, Lcom/transsion/home/viewmodel/TrendingViewModel$getTrendingList$1;->L$1:Ljava/lang/Object;

    .line 84
    .line 85
    iput-object v5, p0, Lcom/transsion/home/viewmodel/TrendingViewModel$getTrendingList$1;->L$2:Ljava/lang/Object;

    .line 86
    .line 87
    iput v3, p0, Lcom/transsion/home/viewmodel/TrendingViewModel$getTrendingList$1;->label:I

    .line 88
    .line 89
    invoke-interface {v6, v7, p1, p0}, Lyk/e;->b(Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    if-ne p1, v0, :cond_2

    .line 94
    .line 95
    return-object v0

    .line 96
    :cond_2
    move-object v0, v5

    .line 97
    :goto_0
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    const-string v6, "0"

    .line 104
    .line 105
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    if-eqz v5, :cond_6

    .line 110
    .line 111
    sget-object v6, Lwf/a;->a:Lwf/a$a;

    .line 112
    .line 113
    const-string v7, "TrendingViewModel"

    .line 114
    .line 115
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    check-cast v5, Lcom/transsion/home/bean/TrendingRespData;

    .line 120
    .line 121
    if-eqz v5, :cond_3

    .line 122
    .line 123
    invoke-virtual {v5}, Lcom/transsion/home/bean/TrendingRespData;->getItems()Ljava/util/List;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    if-eqz v5, :cond_3

    .line 128
    .line 129
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 130
    .line 131
    .line 132
    move-result v5

    .line 133
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    goto :goto_1

    .line 138
    :cond_3
    move-object v5, v2

    .line 139
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .line 143
    .line 144
    const-string v9, "success "

    .line 145
    .line 146
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string v5, " "

    .line 153
    .line 154
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string v4, "@PostListViewModel"

    .line 161
    .line 162
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v8

    .line 169
    const/4 v10, 0x4

    .line 170
    const/4 v11, 0x0

    .line 171
    const/4 v9, 0x0

    .line 172
    invoke-static/range {v6 .. v11}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1}, Lcom/transsion/home/viewmodel/TrendingViewModel;->X()Landroidx/lifecycle/b0;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v4

    .line 183
    invoke-virtual {v1, v4}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    const-string v1, "1"

    .line 187
    .line 188
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    if-eqz v0, :cond_7

    .line 193
    .line 194
    sget-object v0, Lzk/e;->a:Lzk/e;

    .line 195
    .line 196
    invoke-virtual {v0}, Lzk/e;->b()Lcom/tencent/mmkv/MMKV;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    const-string v1, "trending_operation_grid_feeds"

    .line 201
    .line 202
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    check-cast p1, Lcom/transsion/home/bean/TrendingRespData;

    .line 207
    .line 208
    if-eqz p1, :cond_5

    .line 209
    .line 210
    invoke-virtual {p1}, Lcom/transsion/home/bean/TrendingRespData;->getPerRow()Ljava/lang/Integer;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    if-nez p1, :cond_4

    .line 215
    .line 216
    goto :goto_2

    .line 217
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 218
    .line 219
    .line 220
    move-result p1

    .line 221
    if-ne p1, v3, :cond_5

    .line 222
    .line 223
    const/4 v3, 0x0

    .line 224
    :cond_5
    :goto_2
    invoke-virtual {v0, v1, v3}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 225
    .line 226
    .line 227
    goto :goto_4

    .line 228
    :cond_6
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 229
    .line 230
    const-string v4, "TrendingViewModel"

    .line 231
    .line 232
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getMsg()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v5

    .line 240
    new-instance v6, Ljava/lang/StringBuilder;

    .line 241
    .line 242
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    .line 244
    .line 245
    const-string v7, "code "

    .line 246
    .line 247
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    const-string v0, " message "

    .line 254
    .line 255
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v5

    .line 265
    const/4 v7, 0x4

    .line 266
    const/4 v8, 0x0

    .line 267
    const/4 v6, 0x0

    .line 268
    invoke-static/range {v3 .. v8}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v1}, Lcom/transsion/home/viewmodel/TrendingViewModel;->X()Landroidx/lifecycle/b0;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 280
    .line 281
    .line 282
    goto :goto_4

    .line 283
    :goto_3
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 284
    .line 285
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v5

    .line 293
    const/4 v7, 0x4

    .line 294
    const/4 v8, 0x0

    .line 295
    const-string v4, "TrendingViewModel"

    .line 296
    .line 297
    const/4 v6, 0x0

    .line 298
    invoke-static/range {v3 .. v8}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 302
    .line 303
    .line 304
    iget-object p1, p0, Lcom/transsion/home/viewmodel/TrendingViewModel$getTrendingList$1;->this$0:Lcom/transsion/home/viewmodel/TrendingViewModel;

    .line 305
    .line 306
    invoke-virtual {p1}, Lcom/transsion/home/viewmodel/TrendingViewModel;->X()Landroidx/lifecycle/b0;

    .line 307
    .line 308
    .line 309
    move-result-object p1

    .line 310
    invoke-virtual {p1, v2}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 311
    .line 312
    .line 313
    :cond_7
    :goto_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 314
    .line 315
    return-object p1
.end method
