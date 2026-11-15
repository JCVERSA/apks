.class final Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$requestUGCSearchResult$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/transsion/search_pugc/bean/SecondTab;)V
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
    c = "com.transsion.search_pugc.fragment.result.SearchResultViewModel$requestUGCSearchResult$1"
    f = "SearchResultViewModel.kt"
    l = {
        0x44
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $isLoadMore:Z

.field final synthetic $keyword:Ljava/lang/String;

.field final synthetic $pageFrom:Ljava/lang/String;

.field final synthetic $secondTab:Lcom/transsion/search_pugc/bean/SecondTab;

.field final synthetic $tabId:Ljava/lang/String;

.field private synthetic L$0:Ljava/lang/Object;

.field Z$0:Z

.field label:I

.field final synthetic this$0:Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/search_pugc/bean/SecondTab;ZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/transsion/search_pugc/bean/SecondTab;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$requestUGCSearchResult$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$requestUGCSearchResult$1;->this$0:Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$requestUGCSearchResult$1;->$keyword:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$requestUGCSearchResult$1;->$pageFrom:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$requestUGCSearchResult$1;->$tabId:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$requestUGCSearchResult$1;->$secondTab:Lcom/transsion/search_pugc/bean/SecondTab;

    .line 10
    .line 11
    iput-boolean p6, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$requestUGCSearchResult$1;->$isLoadMore:Z

    .line 12
    .line 13
    const/4 p1, 0x2

    .line 14
    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9
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
    new-instance v8, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$requestUGCSearchResult$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$requestUGCSearchResult$1;->this$0:Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$requestUGCSearchResult$1;->$keyword:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$requestUGCSearchResult$1;->$pageFrom:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$requestUGCSearchResult$1;->$tabId:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$requestUGCSearchResult$1;->$secondTab:Lcom/transsion/search_pugc/bean/SecondTab;

    .line 12
    .line 13
    iget-boolean v6, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$requestUGCSearchResult$1;->$isLoadMore:Z

    .line 14
    .line 15
    move-object v0, v8

    .line 16
    move-object v7, p2

    .line 17
    invoke-direct/range {v0 .. v7}, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$requestUGCSearchResult$1;-><init>(Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/search_pugc/bean/SecondTab;ZLkotlin/coroutines/Continuation;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, v8, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$requestUGCSearchResult$1;->L$0:Ljava/lang/Object;

    .line 21
    .line 22
    return-object v8
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$requestUGCSearchResult$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$requestUGCSearchResult$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$requestUGCSearchResult$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$requestUGCSearchResult$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    iget v2, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$requestUGCSearchResult$1;->label:I

    .line 7
    .line 8
    if-eqz v2, :cond_1

    .line 9
    .line 10
    if-ne v2, v0, :cond_0

    .line 11
    .line 12
    iget-boolean v1, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$requestUGCSearchResult$1;->Z$0:Z

    .line 13
    .line 14
    iget-object v2, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$requestUGCSearchResult$1;->L$0:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v2, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;

    .line 17
    .line 18
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    goto/16 :goto_2

    .line 22
    .line 23
    :catchall_0
    move-exception p1

    .line 24
    goto/16 :goto_4

    .line 25
    .line 26
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 29
    .line 30
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p1

    .line 34
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$requestUGCSearchResult$1;->L$0:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast p1, Lkotlinx/coroutines/n0;

    .line 40
    .line 41
    new-instance p1, Lcom/google/gson/JsonObject;

    .line 42
    .line 43
    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 44
    .line 45
    .line 46
    iget-object v2, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$requestUGCSearchResult$1;->this$0:Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;

    .line 47
    .line 48
    iget-object v3, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$requestUGCSearchResult$1;->$keyword:Ljava/lang/String;

    .line 49
    .line 50
    iget-object v4, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$requestUGCSearchResult$1;->$pageFrom:Ljava/lang/String;

    .line 51
    .line 52
    iget-object v5, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$requestUGCSearchResult$1;->$tabId:Ljava/lang/String;

    .line 53
    .line 54
    iget-object v6, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$requestUGCSearchResult$1;->$secondTab:Lcom/transsion/search_pugc/bean/SecondTab;

    .line 55
    .line 56
    invoke-static {v2}, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;->d(Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;)I

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    const-string v8, "page"

    .line 65
    .line 66
    invoke-virtual {p1, v8, v7}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 67
    .line 68
    .line 69
    const/16 v7, 0x14

    .line 70
    .line 71
    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    const-string v8, "perPage"

    .line 76
    .line 77
    invoke-virtual {p1, v8, v7}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 78
    .line 79
    .line 80
    const-string v7, "keyword"

    .line 81
    .line 82
    invoke-virtual {p1, v7, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    const-string v3, "pageFrom"

    .line 86
    .line 87
    invoke-virtual {p1, v3, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    if-eqz v5, :cond_3

    .line 91
    .line 92
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    if-nez v3, :cond_2

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_2
    const-string v3, "tabId"

    .line 100
    .line 101
    invoke-virtual {p1, v3, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    :cond_3
    :goto_0
    invoke-virtual {v2}, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;->g()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    if-eqz v3, :cond_5

    .line 109
    .line 110
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    if-nez v3, :cond_4

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_4
    const-string v3, "ugcVideoId"

    .line 118
    .line 119
    invoke-virtual {v2}, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;->g()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {p1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    :cond_5
    :goto_1
    if-eqz v6, :cond_6

    .line 127
    .line 128
    new-instance v2, Lcom/google/gson/JsonObject;

    .line 129
    .line 130
    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 131
    .line 132
    .line 133
    const-string v3, "tagType"

    .line 134
    .line 135
    invoke-virtual {v6}, Lcom/transsion/search_pugc/bean/SecondTab;->getTagType()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    invoke-virtual {v2, v3, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    const-string v3, "tagValue"

    .line 143
    .line 144
    invoke-virtual {v6}, Lcom/transsion/search_pugc/bean/SecondTab;->getTagValue()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    invoke-virtual {v2, v3, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    const-string v3, "secondTab"

    .line 152
    .line 153
    invoke-virtual {p1, v3, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 154
    .line 155
    .line 156
    :cond_6
    sget-object v2, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    .line 157
    .line 158
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    const-string v3, "toString(...)"

    .line 163
    .line 164
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    sget-object v3, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    .line 168
    .line 169
    const-string v4, "application/json"

    .line 170
    .line 171
    invoke-virtual {v3, v4}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    invoke-virtual {v2, p1, v3}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    iget-object v2, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$requestUGCSearchResult$1;->this$0:Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;

    .line 180
    .line 181
    iget-boolean v3, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$requestUGCSearchResult$1;->$isLoadMore:Z

    .line 182
    .line 183
    :try_start_1
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 184
    .line 185
    invoke-static {v2}, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;->e(Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;)Ljq/a;

    .line 186
    .line 187
    .line 188
    move-result-object v4

    .line 189
    sget-object v5, Lgg/a;->a:Lgg/a$a;

    .line 190
    .line 191
    invoke-virtual {v5}, Lgg/a$a;->a()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v5

    .line 195
    iput-object v2, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$requestUGCSearchResult$1;->L$0:Ljava/lang/Object;

    .line 196
    .line 197
    iput-boolean v3, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$requestUGCSearchResult$1;->Z$0:Z

    .line 198
    .line 199
    iput v0, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$requestUGCSearchResult$1;->label:I

    .line 200
    .line 201
    invoke-interface {v4, v5, p1, p0}, Ljq/a;->b(Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    if-ne p1, v1, :cond_7

    .line 206
    .line 207
    return-object v1

    .line 208
    :cond_7
    move v1, v3

    .line 209
    :goto_2
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    .line 210
    .line 211
    if-eqz v1, :cond_8

    .line 212
    .line 213
    invoke-virtual {v2}, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;->k()Landroidx/lifecycle/b0;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    invoke-virtual {v1, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 222
    .line 223
    .line 224
    goto :goto_3

    .line 225
    :cond_8
    invoke-virtual {v2}, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;->l()Landroidx/lifecycle/b0;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    invoke-virtual {v1, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 234
    .line 235
    .line 236
    :goto_3
    invoke-static {v2}, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;->d(Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;)I

    .line 237
    .line 238
    .line 239
    move-result p1

    .line 240
    add-int/2addr v0, p1

    .line 241
    invoke-static {v2, v0}, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;->f(Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;I)V

    .line 242
    .line 243
    .line 244
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 252
    goto :goto_5

    .line 253
    :goto_4
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 254
    .line 255
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object p1

    .line 263
    :goto_5
    iget-boolean v0, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$requestUGCSearchResult$1;->$isLoadMore:Z

    .line 264
    .line 265
    iget-object v1, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$requestUGCSearchResult$1;->this$0:Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;

    .line 266
    .line 267
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    if-eqz p1, :cond_a

    .line 272
    .line 273
    const/4 v2, 0x0

    .line 274
    if-eqz v0, :cond_9

    .line 275
    .line 276
    invoke-virtual {v1}, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;->k()Landroidx/lifecycle/b0;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    invoke-virtual {v0, v2}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 281
    .line 282
    .line 283
    goto :goto_6

    .line 284
    :cond_9
    invoke-virtual {v1}, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;->l()Landroidx/lifecycle/b0;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    invoke-virtual {v0, v2}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 289
    .line 290
    .line 291
    :goto_6
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    .line 296
    .line 297
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 298
    .line 299
    .line 300
    const-string v2, "getUGCSearchResult error: "

    .line 301
    .line 302
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    const-string v1, "SearchResultViewModel"

    .line 313
    .line 314
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 315
    .line 316
    .line 317
    :cond_a
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 318
    .line 319
    return-object p1
.end method
