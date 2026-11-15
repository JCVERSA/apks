.class final Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$favorite$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->P(Lcom/transsion/shorttv/bean/Subject;)V
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
    c = "com.transsion.shorttv.viewmodel.ShortTvViewModel$favorite$1"
    f = "ShortTvViewModel.kt"
    l = {
        0x2a8
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $favorite:Z

.field final synthetic $favoriteInfo:Lcom/transsion/shorttv/bean/ShortTVFavInfo;

.field final synthetic $subjectDetail:Lcom/transsion/shorttv/bean/Subject;

.field final synthetic $subjectId:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;Lcom/transsion/shorttv/bean/Subject;Ljava/lang/String;ZLcom/transsion/shorttv/bean/ShortTVFavInfo;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;",
            "Lcom/transsion/shorttv/bean/Subject;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/transsion/shorttv/bean/ShortTVFavInfo;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$favorite$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$favorite$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$favorite$1;->$subjectDetail:Lcom/transsion/shorttv/bean/Subject;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$favorite$1;->$subjectId:Ljava/lang/String;

    .line 6
    .line 7
    iput-boolean p4, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$favorite$1;->$favorite:Z

    .line 8
    .line 9
    iput-object p5, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$favorite$1;->$favoriteInfo:Lcom/transsion/shorttv/bean/ShortTVFavInfo;

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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
    new-instance p1, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$favorite$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$favorite$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$favorite$1;->$subjectDetail:Lcom/transsion/shorttv/bean/Subject;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$favorite$1;->$subjectId:Ljava/lang/String;

    .line 8
    .line 9
    iget-boolean v4, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$favorite$1;->$favorite:Z

    .line 10
    .line 11
    iget-object v5, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$favorite$1;->$favoriteInfo:Lcom/transsion/shorttv/bean/ShortTVFavInfo;

    .line 12
    .line 13
    move-object v0, p1

    .line 14
    move-object v6, p2

    .line 15
    invoke-direct/range {v0 .. v6}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$favorite$1;-><init>(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;Lcom/transsion/shorttv/bean/Subject;Ljava/lang/String;ZLcom/transsion/shorttv/bean/ShortTVFavInfo;Lkotlin/coroutines/Continuation;)V

    .line 16
    .line 17
    .line 18
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$favorite$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$favorite$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$favorite$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$favorite$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v2, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$favorite$1;->label:I

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
    iget-object p1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$favorite$1;->$subjectId:Ljava/lang/String;

    .line 30
    .line 31
    iget-boolean v2, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$favorite$1;->$favorite:Z

    .line 32
    .line 33
    iget-object v3, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$favorite$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

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
    invoke-virtual {v4, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    .line 46
    .line 47
    const-string p1, "action"

    .line 48
    .line 49
    xor-int/2addr v2, v0

    .line 50
    invoke-virtual {v4, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 51
    .line 52
    .line 53
    invoke-static {v3}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->t(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lsr/a;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    sget-object p1, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    .line 58
    .line 59
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    const-string v3, "toString(...)"

    .line 64
    .line 65
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    sget-object v3, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    .line 69
    .line 70
    const-string v4, "application/json"

    .line 71
    .line 72
    invoke-virtual {v3, v4}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-virtual {p1, v2, v3}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    iput v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$favorite$1;->label:I

    .line 81
    .line 82
    const/4 v7, 0x0

    .line 83
    const/4 v9, 0x2

    .line 84
    const/4 v10, 0x0

    .line 85
    move-object v8, p0

    .line 86
    invoke-static/range {v5 .. v10}, Lsr/a$a;->a(Lsr/a;Lokhttp3/RequestBody;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    if-ne p1, v1, :cond_2

    .line 91
    .line 92
    return-object v1

    .line 93
    :cond_2
    :goto_0
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    .line 94
    .line 95
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    goto :goto_2

    .line 100
    :goto_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 101
    .line 102
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    :goto_2
    iget-object v1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$favorite$1;->$favoriteInfo:Lcom/transsion/shorttv/bean/ShortTVFavInfo;

    .line 111
    .line 112
    iget-boolean v2, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$favorite$1;->$favorite:Z

    .line 113
    .line 114
    iget-object v3, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$favorite$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 115
    .line 116
    iget-object v4, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$favorite$1;->$subjectId:Ljava/lang/String;

    .line 117
    .line 118
    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v5

    .line 122
    if-eqz v5, :cond_8

    .line 123
    .line 124
    move-object v5, p1

    .line 125
    check-cast v5, Lcom/tn/lib/net/bean/BaseDto;

    .line 126
    .line 127
    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/ShortTVFavInfo;->getHasFavorite()Z

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    xor-int/lit8 v6, v2, 0x1

    .line 132
    .line 133
    if-ne v5, v6, :cond_3

    .line 134
    .line 135
    goto/16 :goto_7

    .line 136
    .line 137
    :cond_3
    xor-int/lit8 v5, v2, 0x1

    .line 138
    .line 139
    invoke-virtual {v1, v5}, Lcom/transsion/shorttv/bean/ShortTVFavInfo;->setHasFavorite(Z)V

    .line 140
    .line 141
    .line 142
    const-wide/16 v5, 0x0

    .line 143
    .line 144
    const-wide/16 v7, 0x1

    .line 145
    .line 146
    if-eqz v2, :cond_5

    .line 147
    .line 148
    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/ShortTVFavInfo;->getFavoriteNum()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v9

    .line 152
    if-eqz v9, :cond_4

    .line 153
    .line 154
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 155
    .line 156
    .line 157
    move-result-wide v9

    .line 158
    goto :goto_3

    .line 159
    :cond_4
    move-wide v9, v7

    .line 160
    :goto_3
    sub-long/2addr v9, v7

    .line 161
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v7

    .line 165
    invoke-virtual {v1, v7}, Lcom/transsion/shorttv/bean/ShortTVFavInfo;->setFavoriteNum(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    goto :goto_5

    .line 169
    :cond_5
    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/ShortTVFavInfo;->getFavoriteNum()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v9

    .line 173
    if-eqz v9, :cond_6

    .line 174
    .line 175
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 176
    .line 177
    .line 178
    move-result-wide v9

    .line 179
    goto :goto_4

    .line 180
    :cond_6
    move-wide v9, v5

    .line 181
    :goto_4
    add-long/2addr v9, v7

    .line 182
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v7

    .line 186
    invoke-virtual {v1, v7}, Lcom/transsion/shorttv/bean/ShortTVFavInfo;->setFavoriteNum(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    :goto_5
    invoke-static {v3}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->x(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Landroidx/lifecycle/b0;

    .line 190
    .line 191
    .line 192
    move-result-object v7

    .line 193
    xor-int/lit8 v8, v2, 0x1

    .line 194
    .line 195
    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    .line 196
    .line 197
    .line 198
    move-result-object v8

    .line 199
    invoke-virtual {v7, v8}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    invoke-static {v3}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->y(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Landroidx/lifecycle/b0;

    .line 203
    .line 204
    .line 205
    move-result-object v7

    .line 206
    if-nez v2, :cond_7

    .line 207
    .line 208
    sget-object v2, Lnr/g;->a:Lnr/g;

    .line 209
    .line 210
    goto :goto_6

    .line 211
    :cond_7
    sget-object v2, Lnr/h;->a:Lnr/h;

    .line 212
    .line 213
    :goto_6
    invoke-virtual {v7, v2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 214
    .line 215
    .line 216
    new-instance v2, Lhx/c;

    .line 217
    .line 218
    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/ShortTVFavInfo;->getHasFavorite()Z

    .line 219
    .line 220
    .line 221
    move-result v7

    .line 222
    xor-int/2addr v0, v7

    .line 223
    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/ShortTVFavInfo;->getFavoriteNum()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v7

    .line 227
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v7

    .line 231
    invoke-direct {v2, v4, v0, v7}, Lhx/c;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 232
    .line 233
    .line 234
    sget-object v0, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 235
    .line 236
    const-class v7, Lcom/transsnet/flow/event/FlowEventBus;

    .line 237
    .line 238
    invoke-virtual {v0, v7}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    check-cast v0, Lcom/transsnet/flow/event/FlowEventBus;

    .line 243
    .line 244
    const-class v7, Lhx/c;

    .line 245
    .line 246
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v7

    .line 250
    const-string v8, "getName(...)"

    .line 251
    .line 252
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v0, v7, v2, v5, v6}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 256
    .line 257
    .line 258
    invoke-static {v3, v4, v1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->I(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;Ljava/lang/String;Lcom/transsion/shorttv/bean/ShortTVFavInfo;)V

    .line 259
    .line 260
    .line 261
    :cond_8
    :goto_7
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$favorite$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 262
    .line 263
    iget-boolean v1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$favorite$1;->$favorite:Z

    .line 264
    .line 265
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    if-eqz p1, :cond_9

    .line 270
    .line 271
    invoke-static {v0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->x(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Landroidx/lifecycle/b0;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    invoke-virtual {p1, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 280
    .line 281
    .line 282
    invoke-static {v0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->y(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Landroidx/lifecycle/b0;

    .line 283
    .line 284
    .line 285
    move-result-object p1

    .line 286
    sget-object v0, Lnr/i;->a:Lnr/i;

    .line 287
    .line 288
    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 289
    .line 290
    .line 291
    :cond_9
    iget-object p1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$favorite$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 292
    .line 293
    invoke-virtual {p1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->x0()Lur/e;

    .line 294
    .line 295
    .line 296
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 297
    .line 298
    return-object p1
.end method
