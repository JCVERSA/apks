.class final Lcom/transsion/home/viewmodel/TrendingUGCViewModel$requestFeedsList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->J()V
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
    c = "com.transsion.home.viewmodel.TrendingUGCViewModel$requestFeedsList$1"
    f = "TrendingUGCViewModel.kt"
    l = {
        0x112
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $requestEntity:Lcom/transsion/home/bean/TrendingRequestEntity;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/home/viewmodel/TrendingUGCViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/home/bean/TrendingRequestEntity;Lcom/transsion/home/viewmodel/TrendingUGCViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/home/bean/TrendingRequestEntity;",
            "Lcom/transsion/home/viewmodel/TrendingUGCViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/home/viewmodel/TrendingUGCViewModel$requestFeedsList$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$requestFeedsList$1;->$requestEntity:Lcom/transsion/home/bean/TrendingRequestEntity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$requestFeedsList$1;->this$0:Lcom/transsion/home/viewmodel/TrendingUGCViewModel;

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
    new-instance v0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$requestFeedsList$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$requestFeedsList$1;->$requestEntity:Lcom/transsion/home/bean/TrendingRequestEntity;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$requestFeedsList$1;->this$0:Lcom/transsion/home/viewmodel/TrendingUGCViewModel;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, p2}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$requestFeedsList$1;-><init>(Lcom/transsion/home/bean/TrendingRequestEntity;Lcom/transsion/home/viewmodel/TrendingUGCViewModel;Lkotlin/coroutines/Continuation;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, v0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$requestFeedsList$1;->L$0:Ljava/lang/Object;

    .line 11
    .line 12
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$requestFeedsList$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$requestFeedsList$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$requestFeedsList$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$requestFeedsList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$requestFeedsList$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x0

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$requestFeedsList$1;->L$1:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$requestFeedsList$1;->L$0:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, Lkotlinx/coroutines/n0;

    .line 21
    .line 22
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    goto/16 :goto_8

    .line 28
    .line 29
    :catch_0
    move-exception p1

    .line 30
    goto/16 :goto_6

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
    iget-object p1, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$requestFeedsList$1;->L$0:Ljava/lang/Object;

    .line 44
    .line 45
    move-object v1, p1

    .line 46
    check-cast v1, Lkotlinx/coroutines/n0;

    .line 47
    .line 48
    :try_start_1
    sget-object p1, Lmg/b;->a:Lmg/b$a;

    .line 49
    .line 50
    iget-object v5, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$requestFeedsList$1;->$requestEntity:Lcom/transsion/home/bean/TrendingRequestEntity;

    .line 51
    .line 52
    invoke-static {v5}, Lcom/blankj/utilcode/util/o;->j(Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    const-string v6, "toJson(...)"

    .line 57
    .line 58
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v5}, Lmg/b$a;->a(Ljava/lang/Object;)Lokhttp3/RequestBody;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    if-eqz p1, :cond_c

    .line 66
    .line 67
    iget-object v5, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$requestFeedsList$1;->this$0:Lcom/transsion/home/viewmodel/TrendingUGCViewModel;

    .line 68
    .line 69
    invoke-static {v5}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->l(Lcom/transsion/home/viewmodel/TrendingUGCViewModel;)Lyk/e;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    sget-object v7, Lgg/a;->a:Lgg/a$a;

    .line 74
    .line 75
    invoke-virtual {v7}, Lgg/a$a;->a()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    iput-object v1, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$requestFeedsList$1;->L$0:Ljava/lang/Object;

    .line 80
    .line 81
    iput-object v5, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$requestFeedsList$1;->L$1:Ljava/lang/Object;

    .line 82
    .line 83
    iput v2, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$requestFeedsList$1;->label:I

    .line 84
    .line 85
    invoke-interface {v6, v7, p1, p0}, Lyk/e;->i(Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    if-ne p1, v0, :cond_2

    .line 90
    .line 91
    return-object v0

    .line 92
    :cond_2
    move-object v0, v5

    .line 93
    :goto_0
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    check-cast v2, Lcom/transsion/home/bean/TrendingRespData;

    .line 100
    .line 101
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    const-string v6, "0"

    .line 106
    .line 107
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    if-eqz v5, :cond_8

    .line 112
    .line 113
    sget-object v6, Lwf/a;->a:Lwf/a$a;

    .line 114
    .line 115
    const-string v7, "TrendingUGCFragment"

    .line 116
    .line 117
    if-eqz v2, :cond_3

    .line 118
    .line 119
    invoke-virtual {v2}, Lcom/transsion/home/bean/TrendingRespData;->getItems()Ljava/util/List;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    if-eqz p1, :cond_3

    .line 124
    .line 125
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    goto :goto_1

    .line 134
    :cond_3
    move-object p1, v4

    .line 135
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .line 139
    .line 140
    const-string v8, "success "

    .line 141
    .line 142
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string p1, " "

    .line 149
    .line 150
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string p1, "@PostListViewModel"

    .line 157
    .line 158
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v8

    .line 165
    const/4 v10, 0x4

    .line 166
    const/4 v11, 0x0

    .line 167
    const/4 v9, 0x0

    .line 168
    invoke-static/range {v6 .. v11}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    if-eqz v2, :cond_4

    .line 172
    .line 173
    invoke-virtual {v2}, Lcom/transsion/home/bean/TrendingRespData;->getPager()Lcom/transsion/moviedetailapi/bean/Pager;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    goto :goto_2

    .line 178
    :cond_4
    move-object p1, v4

    .line 179
    :goto_2
    if-eqz p1, :cond_9

    .line 180
    .line 181
    invoke-virtual {v2}, Lcom/transsion/home/bean/TrendingRespData;->getPager()Lcom/transsion/moviedetailapi/bean/Pager;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    if-eqz p1, :cond_5

    .line 186
    .line 187
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Pager;->getNextPage()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    if-nez p1, :cond_6

    .line 192
    .line 193
    :cond_5
    const-string p1, "1"

    .line 194
    .line 195
    :cond_6
    invoke-static {v0, p1}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->r(Lcom/transsion/home/viewmodel/TrendingUGCViewModel;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v2}, Lcom/transsion/home/bean/TrendingRespData;->getPager()Lcom/transsion/moviedetailapi/bean/Pager;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    if-eqz p1, :cond_7

    .line 203
    .line 204
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Pager;->getPerPage()Ljava/lang/Integer;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    if-eqz p1, :cond_7

    .line 209
    .line 210
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 211
    .line 212
    .line 213
    move-result p1

    .line 214
    goto :goto_3

    .line 215
    :cond_7
    const/16 p1, 0xe

    .line 216
    .line 217
    :goto_3
    invoke-static {v0, p1}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->q(Lcom/transsion/home/viewmodel/TrendingUGCViewModel;I)V

    .line 218
    .line 219
    .line 220
    goto :goto_4

    .line 221
    :cond_8
    sget-object v5, Lwf/a;->a:Lwf/a$a;

    .line 222
    .line 223
    const-string v6, "TrendingUGCFragment"

    .line 224
    .line 225
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getMsg()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    new-instance v7, Ljava/lang/StringBuilder;

    .line 234
    .line 235
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 236
    .line 237
    .line 238
    const-string v8, "code "

    .line 239
    .line 240
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    const-string v1, " message "

    .line 247
    .line 248
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v7

    .line 258
    const/4 v9, 0x4

    .line 259
    const/4 v10, 0x0

    .line 260
    const/4 v8, 0x0

    .line 261
    invoke-static/range {v5 .. v10}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 262
    .line 263
    .line 264
    :cond_9
    :goto_4
    if-eqz v2, :cond_b

    .line 265
    .line 266
    invoke-virtual {v2}, Lcom/transsion/home/bean/TrendingRespData;->getItems()Ljava/util/List;

    .line 267
    .line 268
    .line 269
    move-result-object p1

    .line 270
    if-nez p1, :cond_a

    .line 271
    .line 272
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    :cond_a
    invoke-static {v0, p1}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->j(Lcom/transsion/home/viewmodel/TrendingUGCViewModel;Ljava/util/List;)Ljava/util/List;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    invoke-virtual {v2, p1}, Lcom/transsion/home/bean/TrendingRespData;->setTransferData(Ljava/util/List;)V

    .line 281
    .line 282
    .line 283
    :cond_b
    invoke-virtual {v0}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->E()Landroidx/lifecycle/b0;

    .line 284
    .line 285
    .line 286
    move-result-object p1

    .line 287
    invoke-virtual {p1, v2}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 288
    .line 289
    .line 290
    :cond_c
    :goto_5
    iget-object p1, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$requestFeedsList$1;->this$0:Lcom/transsion/home/viewmodel/TrendingUGCViewModel;

    .line 291
    .line 292
    invoke-static {p1, v3}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->p(Lcom/transsion/home/viewmodel/TrendingUGCViewModel;Z)V

    .line 293
    .line 294
    .line 295
    goto :goto_7

    .line 296
    :goto_6
    :try_start_2
    sget-object v5, Lwf/a;->a:Lwf/a$a;

    .line 297
    .line 298
    const-string v6, "TrendingUGCFragment"

    .line 299
    .line 300
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v7

    .line 308
    const/4 v9, 0x4

    .line 309
    const/4 v10, 0x0

    .line 310
    const/4 v8, 0x0

    .line 311
    invoke-static/range {v5 .. v10}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 315
    .line 316
    .line 317
    iget-object p1, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$requestFeedsList$1;->this$0:Lcom/transsion/home/viewmodel/TrendingUGCViewModel;

    .line 318
    .line 319
    invoke-virtual {p1}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->E()Landroidx/lifecycle/b0;

    .line 320
    .line 321
    .line 322
    move-result-object p1

    .line 323
    invoke-virtual {p1, v4}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 324
    .line 325
    .line 326
    goto :goto_5

    .line 327
    :goto_7
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 328
    .line 329
    return-object p1

    .line 330
    :goto_8
    iget-object v0, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$requestFeedsList$1;->this$0:Lcom/transsion/home/viewmodel/TrendingUGCViewModel;

    .line 331
    .line 332
    invoke-static {v0, v3}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->p(Lcom/transsion/home/viewmodel/TrendingUGCViewModel;Z)V

    .line 333
    .line 334
    .line 335
    throw p1
.end method
