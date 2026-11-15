.class final Lcom/transsion/home/viewmodel/UGCFilmListViewModel$getFilmList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/viewmodel/UGCFilmListViewModel;->i(I)V
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
    c = "com.transsion.home.viewmodel.UGCFilmListViewModel$getFilmList$1"
    f = "UGCFilmListViewModel.kt"
    l = {
        0x7f
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $currentPage:I

.field label:I

.field final synthetic this$0:Lcom/transsion/home/viewmodel/UGCFilmListViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/home/viewmodel/UGCFilmListViewModel;ILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/home/viewmodel/UGCFilmListViewModel;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/home/viewmodel/UGCFilmListViewModel$getFilmList$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel$getFilmList$1;->this$0:Lcom/transsion/home/viewmodel/UGCFilmListViewModel;

    .line 2
    .line 3
    iput p2, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel$getFilmList$1;->$currentPage:I

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
    new-instance p1, Lcom/transsion/home/viewmodel/UGCFilmListViewModel$getFilmList$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel$getFilmList$1;->this$0:Lcom/transsion/home/viewmodel/UGCFilmListViewModel;

    .line 4
    .line 5
    iget v1, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel$getFilmList$1;->$currentPage:I

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/transsion/home/viewmodel/UGCFilmListViewModel$getFilmList$1;-><init>(Lcom/transsion/home/viewmodel/UGCFilmListViewModel;ILkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/viewmodel/UGCFilmListViewModel$getFilmList$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/viewmodel/UGCFilmListViewModel$getFilmList$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/home/viewmodel/UGCFilmListViewModel$getFilmList$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/home/viewmodel/UGCFilmListViewModel$getFilmList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    const-string v0, ", msg="

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget v2, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel$getFilmList$1;->label:I

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    const/4 v4, 0x0

    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    if-ne v2, v3, :cond_0

    .line 14
    .line 15
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception p1

    .line 20
    goto/16 :goto_7

    .line 21
    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 25
    .line 26
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1

    .line 30
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    :try_start_1
    new-instance p1, Lcom/transsion/home/bean/FilmListRequest;

    .line 34
    .line 35
    iget-object v2, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel$getFilmList$1;->this$0:Lcom/transsion/home/viewmodel/UGCFilmListViewModel;

    .line 36
    .line 37
    invoke-static {v2}, Lcom/transsion/home/viewmodel/UGCFilmListViewModel;->c(Lcom/transsion/home/viewmodel/UGCFilmListViewModel;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    iget v5, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel$getFilmList$1;->$currentPage:I

    .line 42
    .line 43
    const/16 v6, 0x14

    .line 44
    .line 45
    invoke-direct {p1, v2, v5, v6}, Lcom/transsion/home/bean/FilmListRequest;-><init>(Ljava/lang/String;II)V

    .line 46
    .line 47
    .line 48
    invoke-static {p1}, Lcom/blankj/utilcode/util/o;->j(Ljava/lang/Object;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    sget-object v5, Lwf/a;->a:Lwf/a$a;

    .line 53
    .line 54
    const-string v6, "FilmListViewModel"

    .line 55
    .line 56
    new-instance v7, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string v8, "getFilmList: request params="

    .line 62
    .line 63
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    const/4 v9, 0x4

    .line 74
    const/4 v10, 0x0

    .line 75
    const/4 v8, 0x0

    .line 76
    invoke-static/range {v5 .. v10}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    iget-object v2, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel$getFilmList$1;->this$0:Lcom/transsion/home/viewmodel/UGCFilmListViewModel;

    .line 80
    .line 81
    invoke-static {v2}, Lcom/transsion/home/viewmodel/UGCFilmListViewModel;->f(Lcom/transsion/home/viewmodel/UGCFilmListViewModel;)Lyk/b;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    sget-object v2, Lgg/a;->a:Lgg/a$a;

    .line 86
    .line 87
    invoke-virtual {v2}, Lgg/a$a;->a()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    invoke-virtual {p1}, Lcom/transsion/home/bean/FilmListRequest;->getType()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v7

    .line 95
    invoke-virtual {p1}, Lcom/transsion/home/bean/FilmListRequest;->getPage()I

    .line 96
    .line 97
    .line 98
    move-result v8

    .line 99
    invoke-virtual {p1}, Lcom/transsion/home/bean/FilmListRequest;->getPerPage()I

    .line 100
    .line 101
    .line 102
    move-result v9

    .line 103
    iput v3, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel$getFilmList$1;->label:I

    .line 104
    .line 105
    move-object v10, p0

    .line 106
    invoke-interface/range {v5 .. v10}, Lyk/b;->b(Ljava/lang/String;Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    if-ne p1, v1, :cond_2

    .line 111
    .line 112
    return-object v1

    .line 113
    :cond_2
    :goto_0
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    .line 114
    .line 115
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 116
    .line 117
    const-string v6, "FilmListViewModel"

    .line 118
    .line 119
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getMsg()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    new-instance v7, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .line 131
    .line 132
    const-string v8, "getFilmList: response code="

    .line 133
    .line 134
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v7

    .line 150
    const/4 v9, 0x4

    .line 151
    const/4 v10, 0x0

    .line 152
    const/4 v8, 0x0

    .line 153
    move-object v5, v1

    .line 154
    invoke-static/range {v5 .. v10}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    const-string v5, "0"

    .line 162
    .line 163
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    if-eqz v2, :cond_d

    .line 168
    .line 169
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    if-eqz v2, :cond_d

    .line 174
    .line 175
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    check-cast p1, Lcom/transsion/home/bean/FilmListResponse;

    .line 180
    .line 181
    iget-object v0, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel$getFilmList$1;->this$0:Lcom/transsion/home/viewmodel/UGCFilmListViewModel;

    .line 182
    .line 183
    if-eqz p1, :cond_3

    .line 184
    .line 185
    invoke-virtual {p1}, Lcom/transsion/home/bean/FilmListResponse;->getPager()Lcom/transsion/moviedetailapi/bean/Pager;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    goto :goto_1

    .line 190
    :cond_3
    move-object v1, v4

    .line 191
    :goto_1
    invoke-static {v0, v1}, Lcom/transsion/home/viewmodel/UGCFilmListViewModel;->h(Lcom/transsion/home/viewmodel/UGCFilmListViewModel;Lcom/transsion/moviedetailapi/bean/Pager;)V

    .line 192
    .line 193
    .line 194
    if-eqz p1, :cond_4

    .line 195
    .line 196
    invoke-virtual {p1}, Lcom/transsion/home/bean/FilmListResponse;->getItems()Ljava/util/List;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    if-nez v0, :cond_5

    .line 201
    .line 202
    :cond_4
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    :cond_5
    check-cast v0, Ljava/lang/Iterable;

    .line 207
    .line 208
    new-instance v1, Ljava/util/ArrayList;

    .line 209
    .line 210
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .line 212
    .line 213
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 218
    .line 219
    .line 220
    move-result v2

    .line 221
    if-eqz v2, :cond_8

    .line 222
    .line 223
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    move-object v5, v2

    .line 228
    check-cast v5, Lcom/transsion/home/bean/UgcGenreTopRespGenreItem;

    .line 229
    .line 230
    invoke-virtual {v5}, Lcom/transsion/home/bean/UgcGenreTopRespGenreItem;->getUgcContent()Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    .line 231
    .line 232
    .line 233
    move-result-object v5

    .line 234
    if-eqz v5, :cond_7

    .line 235
    .line 236
    invoke-virtual {v5}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getTopicType()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v6

    .line 240
    goto :goto_3

    .line 241
    :cond_7
    move-object v6, v4

    .line 242
    :goto_3
    const-string v7, "UGC_VIDEO"

    .line 243
    .line 244
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result v6

    .line 248
    if-eqz v6, :cond_6

    .line 249
    .line 250
    invoke-virtual {v5}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 251
    .line 252
    .line 253
    move-result-object v5

    .line 254
    if-eqz v5, :cond_6

    .line 255
    .line 256
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    goto :goto_2

    .line 260
    :cond_8
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 261
    .line 262
    const-string v6, "FilmListViewModel"

    .line 263
    .line 264
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 265
    .line 266
    .line 267
    move-result v2

    .line 268
    iget-object v5, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel$getFilmList$1;->this$0:Lcom/transsion/home/viewmodel/UGCFilmListViewModel;

    .line 269
    .line 270
    invoke-static {v5}, Lcom/transsion/home/viewmodel/UGCFilmListViewModel;->e(Lcom/transsion/home/viewmodel/UGCFilmListViewModel;)Lcom/transsion/moviedetailapi/bean/Pager;

    .line 271
    .line 272
    .line 273
    move-result-object v5

    .line 274
    if-eqz v5, :cond_9

    .line 275
    .line 276
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/Pager;->getHasMore()Ljava/lang/Boolean;

    .line 277
    .line 278
    .line 279
    move-result-object v5

    .line 280
    goto :goto_4

    .line 281
    :cond_9
    move-object v5, v4

    .line 282
    :goto_4
    iget-object v7, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel$getFilmList$1;->this$0:Lcom/transsion/home/viewmodel/UGCFilmListViewModel;

    .line 283
    .line 284
    invoke-static {v7}, Lcom/transsion/home/viewmodel/UGCFilmListViewModel;->e(Lcom/transsion/home/viewmodel/UGCFilmListViewModel;)Lcom/transsion/moviedetailapi/bean/Pager;

    .line 285
    .line 286
    .line 287
    move-result-object v7

    .line 288
    if-eqz v7, :cond_a

    .line 289
    .line 290
    invoke-virtual {v7}, Lcom/transsion/moviedetailapi/bean/Pager;->getNextPage()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v7

    .line 294
    goto :goto_5

    .line 295
    :cond_a
    move-object v7, v4

    .line 296
    :goto_5
    new-instance v8, Ljava/lang/StringBuilder;

    .line 297
    .line 298
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 299
    .line 300
    .line 301
    const-string v9, "getFilmList success, size="

    .line 302
    .line 303
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    const-string v2, ", hasMore="

    .line 310
    .line 311
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    const-string v2, ", nextPage="

    .line 318
    .line 319
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v7

    .line 329
    const/4 v9, 0x4

    .line 330
    const/4 v10, 0x0

    .line 331
    const/4 v8, 0x0

    .line 332
    move-object v5, v0

    .line 333
    invoke-static/range {v5 .. v10}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 334
    .line 335
    .line 336
    iget-object v2, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel$getFilmList$1;->this$0:Lcom/transsion/home/viewmodel/UGCFilmListViewModel;

    .line 337
    .line 338
    invoke-virtual {v2}, Lcom/transsion/home/viewmodel/UGCFilmListViewModel;->k()Landroidx/lifecycle/b0;

    .line 339
    .line 340
    .line 341
    move-result-object v2

    .line 342
    invoke-virtual {v2, v1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 343
    .line 344
    .line 345
    if-eqz p1, :cond_b

    .line 346
    .line 347
    invoke-virtual {p1}, Lcom/transsion/home/bean/FilmListResponse;->getDesc()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object p1

    .line 351
    goto :goto_6

    .line 352
    :cond_b
    move-object p1, v4

    .line 353
    :goto_6
    iget-object v1, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel$getFilmList$1;->this$0:Lcom/transsion/home/viewmodel/UGCFilmListViewModel;

    .line 354
    .line 355
    invoke-static {v1}, Lcom/transsion/home/viewmodel/UGCFilmListViewModel;->d(Lcom/transsion/home/viewmodel/UGCFilmListViewModel;)Z

    .line 356
    .line 357
    .line 358
    move-result v1

    .line 359
    if-nez v1, :cond_e

    .line 360
    .line 361
    iget v1, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel$getFilmList$1;->$currentPage:I

    .line 362
    .line 363
    if-ne v1, v3, :cond_e

    .line 364
    .line 365
    if-eqz p1, :cond_e

    .line 366
    .line 367
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 368
    .line 369
    .line 370
    move-result v1

    .line 371
    if-nez v1, :cond_c

    .line 372
    .line 373
    goto/16 :goto_8

    .line 374
    .line 375
    :cond_c
    const-string v6, "FilmListViewModel"

    .line 376
    .line 377
    new-instance v1, Ljava/lang/StringBuilder;

    .line 378
    .line 379
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 380
    .line 381
    .line 382
    const-string v2, "getFilmList: emit title desc=\'"

    .line 383
    .line 384
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    const-string v2, "\' for first load"

    .line 391
    .line 392
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    .line 395
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v7

    .line 399
    const/4 v9, 0x4

    .line 400
    const/4 v10, 0x0

    .line 401
    const/4 v8, 0x0

    .line 402
    move-object v5, v0

    .line 403
    invoke-static/range {v5 .. v10}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 404
    .line 405
    .line 406
    iget-object v0, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel$getFilmList$1;->this$0:Lcom/transsion/home/viewmodel/UGCFilmListViewModel;

    .line 407
    .line 408
    invoke-virtual {v0}, Lcom/transsion/home/viewmodel/UGCFilmListViewModel;->j()Landroidx/lifecycle/b0;

    .line 409
    .line 410
    .line 411
    move-result-object v0

    .line 412
    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 413
    .line 414
    .line 415
    iget-object p1, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel$getFilmList$1;->this$0:Lcom/transsion/home/viewmodel/UGCFilmListViewModel;

    .line 416
    .line 417
    invoke-static {p1, v3}, Lcom/transsion/home/viewmodel/UGCFilmListViewModel;->g(Lcom/transsion/home/viewmodel/UGCFilmListViewModel;Z)V

    .line 418
    .line 419
    .line 420
    goto :goto_8

    .line 421
    :cond_d
    iget-object v2, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel$getFilmList$1;->this$0:Lcom/transsion/home/viewmodel/UGCFilmListViewModel;

    .line 422
    .line 423
    invoke-virtual {v2}, Lcom/transsion/home/viewmodel/UGCFilmListViewModel;->k()Landroidx/lifecycle/b0;

    .line 424
    .line 425
    .line 426
    move-result-object v2

    .line 427
    invoke-virtual {v2, v4}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 428
    .line 429
    .line 430
    const-string v6, "FilmListViewModel"

    .line 431
    .line 432
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v2

    .line 436
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getMsg()Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object p1

    .line 440
    new-instance v5, Ljava/lang/StringBuilder;

    .line 441
    .line 442
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 443
    .line 444
    .line 445
    const-string v7, "getFilmList failed: code="

    .line 446
    .line 447
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    .line 452
    .line 453
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    .line 455
    .line 456
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    .line 458
    .line 459
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v7

    .line 463
    const/4 v9, 0x4

    .line 464
    const/4 v10, 0x0

    .line 465
    const/4 v8, 0x0

    .line 466
    move-object v5, v1

    .line 467
    invoke-static/range {v5 .. v10}, Lwf/a$a;->l(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 468
    .line 469
    .line 470
    goto :goto_8

    .line 471
    :goto_7
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 472
    .line 473
    .line 474
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 475
    .line 476
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object p1

    .line 480
    new-instance v1, Ljava/lang/StringBuilder;

    .line 481
    .line 482
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 483
    .line 484
    .line 485
    const-string v2, "getFilmList exception: "

    .line 486
    .line 487
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    .line 489
    .line 490
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    .line 492
    .line 493
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object p1

    .line 497
    const-string v1, "FilmListViewModel"

    .line 498
    .line 499
    invoke-virtual {v0, v1, p1, v3}, Lwf/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 500
    .line 501
    .line 502
    iget-object p1, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel$getFilmList$1;->this$0:Lcom/transsion/home/viewmodel/UGCFilmListViewModel;

    .line 503
    .line 504
    invoke-virtual {p1}, Lcom/transsion/home/viewmodel/UGCFilmListViewModel;->k()Landroidx/lifecycle/b0;

    .line 505
    .line 506
    .line 507
    move-result-object p1

    .line 508
    invoke-virtual {p1, v4}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 509
    .line 510
    .line 511
    :cond_e
    :goto_8
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 512
    .line 513
    return-object p1
.end method
