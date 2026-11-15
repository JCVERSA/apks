.class final Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$request$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$request$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/flow/b;",
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u0002*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lkotlinx/coroutines/flow/b;",
        "",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/flow/b;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsion.web.fragment.WebFragmentV2$addJsInterface$2$request$1$1"
    f = "WebFragmentV2.kt"
    l = {
        0x130,
        0x134,
        0x13b,
        0x13d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $requestData:Lcom/transsion/web/bean/ApiRequestData;

.field final synthetic $url:Ljava/lang/String;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/web/fragment/WebFragmentV2;


# direct methods
.method constructor <init>(Lcom/transsion/web/bean/ApiRequestData;Lcom/transsion/web/fragment/WebFragmentV2;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/web/bean/ApiRequestData;",
            "Lcom/transsion/web/fragment/WebFragmentV2;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$request$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$request$1$1;->$requestData:Lcom/transsion/web/bean/ApiRequestData;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$request$1$1;->this$0:Lcom/transsion/web/fragment/WebFragmentV2;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$request$1$1;->$url:Ljava/lang/String;

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
    new-instance v0, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$request$1$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$request$1$1;->$requestData:Lcom/transsion/web/bean/ApiRequestData;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$request$1$1;->this$0:Lcom/transsion/web/fragment/WebFragmentV2;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$request$1$1;->$url:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3, p2}, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$request$1$1;-><init>(Lcom/transsion/web/bean/ApiRequestData;Lcom/transsion/web/fragment/WebFragmentV2;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, v0, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$request$1$1;->L$0:Ljava/lang/Object;

    .line 13
    .line 14
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/flow/b;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$request$1$1;->invoke(Lkotlinx/coroutines/flow/b;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/flow/b;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/b;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$request$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$request$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$request$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$request$1$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x4

    .line 8
    const/4 v3, 0x3

    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x1

    .line 11
    const/4 v6, 0x0

    .line 12
    if-eqz v1, :cond_4

    .line 13
    .line 14
    if-eq v1, v5, :cond_3

    .line 15
    .line 16
    if-eq v1, v4, :cond_2

    .line 17
    .line 18
    if-eq v1, v3, :cond_1

    .line 19
    .line 20
    if-ne v1, v2, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 26
    .line 27
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p1

    .line 31
    :cond_1
    :goto_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    goto/16 :goto_5

    .line 35
    .line 36
    :cond_2
    iget-object v1, p0, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$request$1$1;->L$0:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v1, Lkotlinx/coroutines/flow/b;

    .line 39
    .line 40
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    goto/16 :goto_3

    .line 44
    .line 45
    :cond_3
    iget-object v1, p0, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$request$1$1;->L$0:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v1, Lkotlinx/coroutines/flow/b;

    .line 48
    .line 49
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$request$1$1;->L$0:Ljava/lang/Object;

    .line 57
    .line 58
    move-object v1, p1

    .line 59
    check-cast v1, Lkotlinx/coroutines/flow/b;

    .line 60
    .line 61
    iget-object p1, p0, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$request$1$1;->$requestData:Lcom/transsion/web/bean/ApiRequestData;

    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/transsion/web/bean/ApiRequestData;->getMethods()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 68
    .line 69
    invoke-virtual {p1, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    const-string v7, "toUpperCase(...)"

    .line 74
    .line 75
    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    const-string v7, "POST"

    .line 79
    .line 80
    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-eqz p1, :cond_8

    .line 85
    .line 86
    iget-object p1, p0, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$request$1$1;->$requestData:Lcom/transsion/web/bean/ApiRequestData;

    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/transsion/web/bean/ApiRequestData;->getQueryParams()Ljava/util/Map;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    if-eqz p1, :cond_5

    .line 93
    .line 94
    sget-object p1, Lmg/b;->a:Lmg/b$a;

    .line 95
    .line 96
    iget-object v4, p0, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$request$1$1;->$requestData:Lcom/transsion/web/bean/ApiRequestData;

    .line 97
    .line 98
    invoke-virtual {v4}, Lcom/transsion/web/bean/ApiRequestData;->getQueryParams()Ljava/util/Map;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    invoke-static {v4}, Lcom/blankj/utilcode/util/o;->j(Ljava/lang/Object;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    const-string v7, "toJson(...)"

    .line 107
    .line 108
    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, v4}, Lmg/b$a;->a(Ljava/lang/Object;)Lokhttp3/RequestBody;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    goto :goto_1

    .line 116
    :cond_5
    move-object p1, v6

    .line 117
    :goto_1
    iget-object v4, p0, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$request$1$1;->this$0:Lcom/transsion/web/fragment/WebFragmentV2;

    .line 118
    .line 119
    invoke-static {v4}, Lcom/transsion/web/fragment/WebFragmentV2;->W0(Lcom/transsion/web/fragment/WebFragmentV2;)Lkw/a;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    iget-object v7, p0, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$request$1$1;->$url:Ljava/lang/String;

    .line 124
    .line 125
    iget-object v8, p0, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$request$1$1;->$requestData:Lcom/transsion/web/bean/ApiRequestData;

    .line 126
    .line 127
    invoke-virtual {v8}, Lcom/transsion/web/bean/ApiRequestData;->getHeaders()Ljava/util/Map;

    .line 128
    .line 129
    .line 130
    move-result-object v8

    .line 131
    if-nez v8, :cond_6

    .line 132
    .line 133
    new-instance v8, Ljava/util/LinkedHashMap;

    .line 134
    .line 135
    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 136
    .line 137
    .line 138
    :cond_6
    iput-object v1, p0, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$request$1$1;->L$0:Ljava/lang/Object;

    .line 139
    .line 140
    iput v5, p0, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$request$1$1;->label:I

    .line 141
    .line 142
    invoke-interface {v4, v7, v8, p1, p0}, Lkw/a;->a(Ljava/lang/String;Ljava/util/Map;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    if-ne p1, v0, :cond_7

    .line 147
    .line 148
    return-object v0

    .line 149
    :cond_7
    :goto_2
    check-cast p1, Lretrofit2/j0;

    .line 150
    .line 151
    goto :goto_4

    .line 152
    :cond_8
    iget-object p1, p0, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$request$1$1;->this$0:Lcom/transsion/web/fragment/WebFragmentV2;

    .line 153
    .line 154
    invoke-static {p1}, Lcom/transsion/web/fragment/WebFragmentV2;->W0(Lcom/transsion/web/fragment/WebFragmentV2;)Lkw/a;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    iget-object v5, p0, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$request$1$1;->$url:Ljava/lang/String;

    .line 159
    .line 160
    iget-object v7, p0, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$request$1$1;->$requestData:Lcom/transsion/web/bean/ApiRequestData;

    .line 161
    .line 162
    invoke-virtual {v7}, Lcom/transsion/web/bean/ApiRequestData;->getHeaders()Ljava/util/Map;

    .line 163
    .line 164
    .line 165
    move-result-object v7

    .line 166
    if-nez v7, :cond_9

    .line 167
    .line 168
    new-instance v7, Ljava/util/LinkedHashMap;

    .line 169
    .line 170
    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 171
    .line 172
    .line 173
    :cond_9
    iget-object v8, p0, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$request$1$1;->$requestData:Lcom/transsion/web/bean/ApiRequestData;

    .line 174
    .line 175
    invoke-virtual {v8}, Lcom/transsion/web/bean/ApiRequestData;->getQueryParams()Ljava/util/Map;

    .line 176
    .line 177
    .line 178
    move-result-object v8

    .line 179
    if-nez v8, :cond_a

    .line 180
    .line 181
    new-instance v8, Ljava/util/LinkedHashMap;

    .line 182
    .line 183
    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 184
    .line 185
    .line 186
    :cond_a
    iput-object v1, p0, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$request$1$1;->L$0:Ljava/lang/Object;

    .line 187
    .line 188
    iput v4, p0, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$request$1$1;->label:I

    .line 189
    .line 190
    invoke-interface {p1, v5, v7, v8, p0}, Lkw/a;->b(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    if-ne p1, v0, :cond_b

    .line 195
    .line 196
    return-object v0

    .line 197
    :cond_b
    :goto_3
    check-cast p1, Lretrofit2/j0;

    .line 198
    .line 199
    :goto_4
    invoke-virtual {p1}, Lretrofit2/j0;->e()Z

    .line 200
    .line 201
    .line 202
    move-result v4

    .line 203
    if-eqz v4, :cond_c

    .line 204
    .line 205
    invoke-virtual {p1}, Lretrofit2/j0;->a()Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v4

    .line 209
    if-eqz v4, :cond_c

    .line 210
    .line 211
    invoke-virtual {p1}, Lretrofit2/j0;->a()Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 216
    .line 217
    .line 218
    check-cast p1, Lokhttp3/ResponseBody;

    .line 219
    .line 220
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    iput-object v6, p0, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$request$1$1;->L$0:Ljava/lang/Object;

    .line 225
    .line 226
    iput v3, p0, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$request$1$1;->label:I

    .line 227
    .line 228
    invoke-interface {v1, p1, p0}, Lkotlinx/coroutines/flow/b;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    if-ne p1, v0, :cond_d

    .line 233
    .line 234
    return-object v0

    .line 235
    :cond_c
    iput-object v6, p0, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$request$1$1;->L$0:Ljava/lang/Object;

    .line 236
    .line 237
    iput v2, p0, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$request$1$1;->label:I

    .line 238
    .line 239
    invoke-interface {v1, v6, p0}, Lkotlinx/coroutines/flow/b;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    if-ne p1, v0, :cond_d

    .line 244
    .line 245
    return-object v0

    .line 246
    :cond_d
    :goto_5
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 247
    .line 248
    return-object p1
.end method
