.class final Lcom/transsion/home/viewmodel/SubTabViewModel$getTrendingList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/viewmodel/SubTabViewModel;->t(ILjava/lang/String;Z)V
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
    c = "com.transsion.home.viewmodel.SubTabViewModel$getTrendingList$1"
    f = "SubTabViewModel.kt"
    l = {
        0xd7,
        0xd9
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $requestEntity:Lcom/transsion/home/bean/TrendingRequestEntity;

.field final synthetic $tabCode:Ljava/lang/String;

.field final synthetic $tabId:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/home/viewmodel/SubTabViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/home/bean/TrendingRequestEntity;Lcom/transsion/home/viewmodel/SubTabViewModel;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/home/bean/TrendingRequestEntity;",
            "Lcom/transsion/home/viewmodel/SubTabViewModel;",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/home/viewmodel/SubTabViewModel$getTrendingList$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$getTrendingList$1;->$requestEntity:Lcom/transsion/home/bean/TrendingRequestEntity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$getTrendingList$1;->this$0:Lcom/transsion/home/viewmodel/SubTabViewModel;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$getTrendingList$1;->$tabCode:Ljava/lang/String;

    .line 6
    .line 7
    iput p4, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$getTrendingList$1;->$tabId:I

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
    new-instance v6, Lcom/transsion/home/viewmodel/SubTabViewModel$getTrendingList$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$getTrendingList$1;->$requestEntity:Lcom/transsion/home/bean/TrendingRequestEntity;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$getTrendingList$1;->this$0:Lcom/transsion/home/viewmodel/SubTabViewModel;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$getTrendingList$1;->$tabCode:Ljava/lang/String;

    .line 8
    .line 9
    iget v4, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$getTrendingList$1;->$tabId:I

    .line 10
    .line 11
    move-object v0, v6

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/transsion/home/viewmodel/SubTabViewModel$getTrendingList$1;-><init>(Lcom/transsion/home/bean/TrendingRequestEntity;Lcom/transsion/home/viewmodel/SubTabViewModel;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, v6, Lcom/transsion/home/viewmodel/SubTabViewModel$getTrendingList$1;->L$0:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v6
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/viewmodel/SubTabViewModel$getTrendingList$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/viewmodel/SubTabViewModel$getTrendingList$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/home/viewmodel/SubTabViewModel$getTrendingList$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/home/viewmodel/SubTabViewModel$getTrendingList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$getTrendingList$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v4, 0x1

    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    if-eq v1, v4, :cond_1

    .line 13
    .line 14
    if-ne v1, v3, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$getTrendingList$1;->L$1:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Lcom/transsion/home/viewmodel/SubTabViewModel;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$getTrendingList$1;->L$0:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v1, Lkotlinx/coroutines/n0;

    .line 23
    .line 24
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    goto/16 :goto_2

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
    iget-object v0, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$getTrendingList$1;->L$1:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v0, Lcom/transsion/home/viewmodel/SubTabViewModel;

    .line 43
    .line 44
    iget-object v1, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$getTrendingList$1;->L$0:Ljava/lang/Object;

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
    goto :goto_1

    .line 52
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$getTrendingList$1;->L$0:Ljava/lang/Object;

    .line 56
    .line 57
    move-object v1, p1

    .line 58
    check-cast v1, Lkotlinx/coroutines/n0;

    .line 59
    .line 60
    :try_start_2
    iget-object p1, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$getTrendingList$1;->$requestEntity:Lcom/transsion/home/bean/TrendingRequestEntity;

    .line 61
    .line 62
    iget-object v5, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$getTrendingList$1;->this$0:Lcom/transsion/home/viewmodel/SubTabViewModel;

    .line 63
    .line 64
    invoke-static {v5}, Lcom/transsion/home/viewmodel/SubTabViewModel;->j(Lcom/transsion/home/viewmodel/SubTabViewModel;)Z

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-eqz v5, :cond_3

    .line 69
    .line 70
    iget-object v5, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$getTrendingList$1;->$tabCode:Ljava/lang/String;

    .line 71
    .line 72
    if-nez v5, :cond_4

    .line 73
    .line 74
    const-string v5, ""

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    iget v5, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$getTrendingList$1;->$tabId:I

    .line 78
    .line 79
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    :cond_4
    :goto_0
    invoke-virtual {p1, v5}, Lcom/transsion/home/bean/TrendingRequestEntity;->setTabId(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object p1, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$getTrendingList$1;->$requestEntity:Lcom/transsion/home/bean/TrendingRequestEntity;

    .line 87
    .line 88
    const/4 v5, 0x0

    .line 89
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    invoke-virtual {p1, v5}, Lcom/transsion/home/bean/TrendingRequestEntity;->setDisablePlaylist(Ljava/lang/Boolean;)V

    .line 94
    .line 95
    .line 96
    sget-object p1, Lmg/b;->a:Lmg/b$a;

    .line 97
    .line 98
    iget-object v5, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$getTrendingList$1;->$requestEntity:Lcom/transsion/home/bean/TrendingRequestEntity;

    .line 99
    .line 100
    invoke-static {v5}, Lcom/blankj/utilcode/util/o;->j(Ljava/lang/Object;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    const-string v6, "toJson(...)"

    .line 105
    .line 106
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, v5}, Lmg/b$a;->a(Ljava/lang/Object;)Lokhttp3/RequestBody;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    if-eqz p1, :cond_10

    .line 114
    .line 115
    iget-object v5, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$getTrendingList$1;->this$0:Lcom/transsion/home/viewmodel/SubTabViewModel;

    .line 116
    .line 117
    invoke-static {v5}, Lcom/transsion/home/viewmodel/SubTabViewModel;->j(Lcom/transsion/home/viewmodel/SubTabViewModel;)Z

    .line 118
    .line 119
    .line 120
    move-result v6

    .line 121
    if-eqz v6, :cond_6

    .line 122
    .line 123
    invoke-static {v5}, Lcom/transsion/home/viewmodel/SubTabViewModel;->g(Lcom/transsion/home/viewmodel/SubTabViewModel;)Lyk/e;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    sget-object v6, Lgg/a;->a:Lgg/a$a;

    .line 128
    .line 129
    invoke-virtual {v6}, Lgg/a$a;->a()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v6

    .line 133
    iput-object v1, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$getTrendingList$1;->L$0:Ljava/lang/Object;

    .line 134
    .line 135
    iput-object v5, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$getTrendingList$1;->L$1:Ljava/lang/Object;

    .line 136
    .line 137
    iput v4, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$getTrendingList$1;->label:I

    .line 138
    .line 139
    invoke-interface {v3, v6, p1, p0}, Lyk/e;->d(Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    if-ne p1, v0, :cond_5

    .line 144
    .line 145
    return-object v0

    .line 146
    :cond_5
    move-object v0, v5

    .line 147
    :goto_1
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_6
    invoke-static {v5}, Lcom/transsion/home/viewmodel/SubTabViewModel;->g(Lcom/transsion/home/viewmodel/SubTabViewModel;)Lyk/e;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    sget-object v6, Lgg/a;->a:Lgg/a$a;

    .line 155
    .line 156
    invoke-virtual {v6}, Lgg/a$a;->a()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v6

    .line 160
    iput-object v1, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$getTrendingList$1;->L$0:Ljava/lang/Object;

    .line 161
    .line 162
    iput-object v5, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$getTrendingList$1;->L$1:Ljava/lang/Object;

    .line 163
    .line 164
    iput v3, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$getTrendingList$1;->label:I

    .line 165
    .line 166
    invoke-interface {v4, v6, p1, p0}, Lyk/e;->b(Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    if-ne p1, v0, :cond_7

    .line 171
    .line 172
    return-object v0

    .line 173
    :cond_7
    move-object v0, v5

    .line 174
    :goto_2
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    .line 175
    .line 176
    :goto_3
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    const-string v4, "0"

    .line 181
    .line 182
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v3

    .line 186
    if-eqz v3, :cond_f

    .line 187
    .line 188
    sget-object v4, Lwf/a;->a:Lwf/a$a;

    .line 189
    .line 190
    const-string v5, "SubTabViewModel"

    .line 191
    .line 192
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    check-cast v3, Lcom/transsion/home/bean/TrendingRespData;

    .line 197
    .line 198
    if-eqz v3, :cond_8

    .line 199
    .line 200
    invoke-virtual {v3}, Lcom/transsion/home/bean/TrendingRespData;->getItems()Ljava/util/List;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    if-eqz v3, :cond_8

    .line 205
    .line 206
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 207
    .line 208
    .line 209
    move-result v3

    .line 210
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    goto :goto_4

    .line 215
    :cond_8
    move-object v3, v2

    .line 216
    :goto_4
    new-instance v6, Ljava/lang/StringBuilder;

    .line 217
    .line 218
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    .line 220
    .line 221
    const-string v7, "success "

    .line 222
    .line 223
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    const-string v3, " "

    .line 230
    .line 231
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    const-string v1, "@PostListViewModel"

    .line 238
    .line 239
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v6

    .line 246
    const/4 v8, 0x4

    .line 247
    const/4 v9, 0x0

    .line 248
    const/4 v7, 0x0

    .line 249
    invoke-static/range {v4 .. v9}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 250
    .line 251
    .line 252
    invoke-static {v0}, Lcom/transsion/home/viewmodel/SubTabViewModel;->j(Lcom/transsion/home/viewmodel/SubTabViewModel;)Z

    .line 253
    .line 254
    .line 255
    move-result v1

    .line 256
    if-eqz v1, :cond_b

    .line 257
    .line 258
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    check-cast v1, Lcom/transsion/home/bean/TrendingRespData;

    .line 263
    .line 264
    if-eqz v1, :cond_9

    .line 265
    .line 266
    invoke-virtual {v1}, Lcom/transsion/home/bean/TrendingRespData;->getItems()Ljava/util/List;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    if-nez v1, :cond_a

    .line 271
    .line 272
    :cond_9
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    :cond_a
    invoke-static {v0, v1}, Lcom/transsion/home/viewmodel/SubTabViewModel;->e(Lcom/transsion/home/viewmodel/SubTabViewModel;Ljava/util/List;)Ljava/util/List;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    goto :goto_5

    .line 281
    :cond_b
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    check-cast v1, Lcom/transsion/home/bean/TrendingRespData;

    .line 286
    .line 287
    if-eqz v1, :cond_c

    .line 288
    .line 289
    invoke-virtual {v1}, Lcom/transsion/home/bean/TrendingRespData;->getItems()Ljava/util/List;

    .line 290
    .line 291
    .line 292
    move-result-object v1

    .line 293
    if-nez v1, :cond_d

    .line 294
    .line 295
    :cond_c
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    :cond_d
    invoke-static {v0, v1}, Lcom/transsion/home/viewmodel/SubTabViewModel;->d(Lcom/transsion/home/viewmodel/SubTabViewModel;Ljava/util/List;)Ljava/util/List;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    :goto_5
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v3

    .line 307
    check-cast v3, Lcom/transsion/home/bean/TrendingRespData;

    .line 308
    .line 309
    if-eqz v3, :cond_e

    .line 310
    .line 311
    invoke-virtual {v3, v1}, Lcom/transsion/home/bean/TrendingRespData;->setTransferData(Ljava/util/List;)V

    .line 312
    .line 313
    .line 314
    :cond_e
    invoke-virtual {v0}, Lcom/transsion/home/viewmodel/SubTabViewModel;->s()Landroidx/lifecycle/b0;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object p1

    .line 322
    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 323
    .line 324
    .line 325
    goto :goto_7

    .line 326
    :cond_f
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 327
    .line 328
    const-string v4, "SubTabViewModel"

    .line 329
    .line 330
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getMsg()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object p1

    .line 338
    new-instance v1, Ljava/lang/StringBuilder;

    .line 339
    .line 340
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 341
    .line 342
    .line 343
    const-string v5, "code "

    .line 344
    .line 345
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    const-string v0, " message "

    .line 352
    .line 353
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v5

    .line 363
    const/4 v7, 0x4

    .line 364
    const/4 v8, 0x0

    .line 365
    const/4 v6, 0x0

    .line 366
    invoke-static/range {v3 .. v8}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 367
    .line 368
    .line 369
    goto :goto_7

    .line 370
    :goto_6
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 371
    .line 372
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v5

    .line 380
    const/4 v7, 0x4

    .line 381
    const/4 v8, 0x0

    .line 382
    const-string v4, "SubTabViewModel"

    .line 383
    .line 384
    const/4 v6, 0x0

    .line 385
    invoke-static/range {v3 .. v8}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 389
    .line 390
    .line 391
    iget-object p1, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$getTrendingList$1;->this$0:Lcom/transsion/home/viewmodel/SubTabViewModel;

    .line 392
    .line 393
    invoke-virtual {p1}, Lcom/transsion/home/viewmodel/SubTabViewModel;->s()Landroidx/lifecycle/b0;

    .line 394
    .line 395
    .line 396
    move-result-object p1

    .line 397
    invoke-virtual {p1, v2}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 398
    .line 399
    .line 400
    :cond_10
    :goto_7
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 401
    .line 402
    return-object p1
.end method
