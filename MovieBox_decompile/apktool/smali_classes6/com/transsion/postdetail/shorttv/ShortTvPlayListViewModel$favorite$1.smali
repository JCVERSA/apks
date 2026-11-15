.class final Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel$favorite$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;->d(Lcom/transsion/moviedetailapi/bean/Subject;)V
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
    c = "com.transsion.postdetail.shorttv.ShortTvPlayListViewModel$favorite$1"
    f = "ShortTvPlayListViewModel.kt"
    l = {
        0xfa
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $favorite:Z

.field final synthetic $favoriteInfo:Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;

.field final synthetic $shortTvInfo:Lcom/transsion/moviedetailapi/bean/Subject;

.field label:I

.field final synthetic this$0:Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/moviedetailapi/bean/Subject;ZLcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/moviedetailapi/bean/Subject;",
            "Z",
            "Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;",
            "Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel$favorite$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel$favorite$1;->$shortTvInfo:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel$favorite$1;->$favorite:Z

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel$favorite$1;->this$0:Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel$favorite$1;->$favoriteInfo:Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;

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
    new-instance p1, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel$favorite$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel$favorite$1;->$shortTvInfo:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel$favorite$1;->$favorite:Z

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel$favorite$1;->this$0:Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel$favorite$1;->$favoriteInfo:Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel$favorite$1;-><init>(Lcom/transsion/moviedetailapi/bean/Subject;ZLcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel$favorite$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel$favorite$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel$favorite$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel$favorite$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    iget v2, p0, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel$favorite$1;->label:I

    .line 7
    .line 8
    if-eqz v2, :cond_1

    .line 9
    .line 10
    if-ne v2, v0, :cond_0

    .line 11
    .line 12
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1

    .line 26
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel$favorite$1;->$shortTvInfo:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 30
    .line 31
    iget-boolean v2, p0, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel$favorite$1;->$favorite:Z

    .line 32
    .line 33
    iget-object v3, p0, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel$favorite$1;->this$0:Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;

    .line 34
    .line 35
    :try_start_1
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 36
    .line 37
    new-instance v4, Lorg/json/JSONObject;

    .line 38
    .line 39
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v5, "subjectId"

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {v4, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    .line 50
    .line 51
    const-string p1, "action"

    .line 52
    .line 53
    xor-int/2addr v2, v0

    .line 54
    invoke-virtual {v4, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3}, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;->g()Lcom/transsion/postdetail/shorttv/a;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    sget-object p1, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    .line 62
    .line 63
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    const-string v3, "toString(...)"

    .line 68
    .line 69
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    sget-object v3, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    .line 73
    .line 74
    const-string v4, "application/json"

    .line 75
    .line 76
    invoke-virtual {v3, v4}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-virtual {p1, v2, v3}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    iput v0, p0, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel$favorite$1;->label:I

    .line 85
    .line 86
    const/4 v7, 0x0

    .line 87
    const/4 v9, 0x2

    .line 88
    const/4 v10, 0x0

    .line 89
    move-object v8, p0

    .line 90
    invoke-static/range {v5 .. v10}, Lcom/transsion/postdetail/shorttv/a$a;->a(Lcom/transsion/postdetail/shorttv/a;Lokhttp3/RequestBody;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    if-ne p1, v1, :cond_2

    .line 95
    .line 96
    return-object v1

    .line 97
    :cond_2
    :goto_0
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    .line 98
    .line 99
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    goto :goto_2

    .line 104
    :goto_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 105
    .line 106
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    :goto_2
    iget-object v1, p0, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel$favorite$1;->$favoriteInfo:Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;

    .line 115
    .line 116
    iget-boolean v2, p0, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel$favorite$1;->$favorite:Z

    .line 117
    .line 118
    iget-object v3, p0, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel$favorite$1;->this$0:Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;

    .line 119
    .line 120
    iget-object v4, p0, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel$favorite$1;->$shortTvInfo:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 121
    .line 122
    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v5

    .line 126
    if-eqz v5, :cond_9

    .line 127
    .line 128
    move-object v5, p1

    .line 129
    check-cast v5, Lcom/tn/lib/net/bean/BaseDto;

    .line 130
    .line 131
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;->getHasFavorite()Z

    .line 132
    .line 133
    .line 134
    move-result v5

    .line 135
    xor-int/lit8 v6, v2, 0x1

    .line 136
    .line 137
    if-ne v5, v6, :cond_3

    .line 138
    .line 139
    goto/16 :goto_7

    .line 140
    .line 141
    :cond_3
    xor-int/lit8 v5, v2, 0x1

    .line 142
    .line 143
    invoke-virtual {v1, v5}, Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;->setHasFavorite(Z)V

    .line 144
    .line 145
    .line 146
    const-wide/16 v5, 0x0

    .line 147
    .line 148
    const-wide/16 v7, 0x1

    .line 149
    .line 150
    if-eqz v2, :cond_5

    .line 151
    .line 152
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;->getFavoriteNum()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v9

    .line 156
    if-eqz v9, :cond_4

    .line 157
    .line 158
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 159
    .line 160
    .line 161
    move-result-wide v9

    .line 162
    goto :goto_3

    .line 163
    :cond_4
    move-wide v9, v7

    .line 164
    :goto_3
    sub-long/2addr v9, v7

    .line 165
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v7

    .line 169
    invoke-virtual {v1, v7}, Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;->setFavoriteNum(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    goto :goto_5

    .line 173
    :cond_5
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;->getFavoriteNum()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v9

    .line 177
    if-eqz v9, :cond_6

    .line 178
    .line 179
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 180
    .line 181
    .line 182
    move-result-wide v9

    .line 183
    goto :goto_4

    .line 184
    :cond_6
    move-wide v9, v5

    .line 185
    :goto_4
    add-long/2addr v9, v7

    .line 186
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v7

    .line 190
    invoke-virtual {v1, v7}, Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;->setFavoriteNum(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    :goto_5
    invoke-virtual {v3}, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;->e()Landroidx/lifecycle/b0;

    .line 194
    .line 195
    .line 196
    move-result-object v7

    .line 197
    xor-int/lit8 v8, v2, 0x1

    .line 198
    .line 199
    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    .line 200
    .line 201
    .line 202
    move-result-object v8

    .line 203
    invoke-virtual {v7, v8}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v3}, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;->f()Landroidx/lifecycle/b0;

    .line 207
    .line 208
    .line 209
    move-result-object v7

    .line 210
    if-nez v2, :cond_7

    .line 211
    .line 212
    const-string v8, "favorite_add"

    .line 213
    .line 214
    goto :goto_6

    .line 215
    :cond_7
    const-string v8, "favorite_cancel"

    .line 216
    .line 217
    :goto_6
    invoke-virtual {v7, v8}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 218
    .line 219
    .line 220
    new-instance v7, Lhx/c;

    .line 221
    .line 222
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v8

    .line 226
    if-nez v8, :cond_8

    .line 227
    .line 228
    const-string v8, ""

    .line 229
    .line 230
    :cond_8
    xor-int/2addr v0, v2

    .line 231
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;->getFavoriteNum()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    invoke-direct {v7, v8, v0, v1}, Lhx/c;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 240
    .line 241
    .line 242
    sget-object v0, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 243
    .line 244
    const-class v1, Lcom/transsnet/flow/event/FlowEventBus;

    .line 245
    .line 246
    invoke-virtual {v0, v1}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    check-cast v0, Lcom/transsnet/flow/event/FlowEventBus;

    .line 251
    .line 252
    const-class v1, Lhx/c;

    .line 253
    .line 254
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    const-string v2, "getName(...)"

    .line 259
    .line 260
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v0, v1, v7, v5, v6}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 264
    .line 265
    .line 266
    invoke-static {v3, v4}, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;->c(Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;Lcom/transsion/moviedetailapi/bean/Subject;)V

    .line 267
    .line 268
    .line 269
    :cond_9
    :goto_7
    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel$favorite$1;->this$0:Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;

    .line 270
    .line 271
    iget-boolean v1, p0, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel$favorite$1;->$favorite:Z

    .line 272
    .line 273
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    if-eqz p1, :cond_a

    .line 278
    .line 279
    invoke-virtual {v0}, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;->e()Landroidx/lifecycle/b0;

    .line 280
    .line 281
    .line 282
    move-result-object p1

    .line 283
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    invoke-virtual {p1, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v0}, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;->f()Landroidx/lifecycle/b0;

    .line 291
    .line 292
    .line 293
    move-result-object p1

    .line 294
    const-string v0, "favorite_fail"

    .line 295
    .line 296
    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 297
    .line 298
    .line 299
    :cond_a
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 300
    .line 301
    return-object p1
.end method
