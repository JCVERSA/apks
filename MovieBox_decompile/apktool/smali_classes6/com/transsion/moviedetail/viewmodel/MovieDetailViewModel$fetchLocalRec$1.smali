.class final Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$fetchLocalRec$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->s(ZLjava/lang/String;Ljava/lang/Integer;IZ)V
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
    c = "com.transsion.moviedetail.viewmodel.MovieDetailViewModel$fetchLocalRec$1"
    f = "MovieDetailViewModel.kt"
    l = {
        0xe3
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $isTablet:Z

.field final synthetic $page:I

.field final synthetic $requestKey:Ljava/lang/String;

.field final synthetic $subjectType:Ljava/lang/Integer;

.field final synthetic $useName:Z

.field label:I

.field final synthetic this$0:Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;


# direct methods
.method constructor <init>(ZLjava/lang/String;Ljava/lang/Integer;IZLcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "IZ",
            "Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$fetchLocalRec$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$fetchLocalRec$1;->$useName:Z

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$fetchLocalRec$1;->$requestKey:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$fetchLocalRec$1;->$subjectType:Ljava/lang/Integer;

    .line 6
    .line 7
    iput p4, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$fetchLocalRec$1;->$page:I

    .line 8
    .line 9
    iput-boolean p5, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$fetchLocalRec$1;->$isTablet:Z

    .line 10
    .line 11
    iput-object p6, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$fetchLocalRec$1;->this$0:Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;

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
    .locals 8
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
    new-instance p1, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$fetchLocalRec$1;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$fetchLocalRec$1;->$useName:Z

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$fetchLocalRec$1;->$requestKey:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$fetchLocalRec$1;->$subjectType:Ljava/lang/Integer;

    .line 8
    .line 9
    iget v4, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$fetchLocalRec$1;->$page:I

    .line 10
    .line 11
    iget-boolean v5, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$fetchLocalRec$1;->$isTablet:Z

    .line 12
    .line 13
    iget-object v6, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$fetchLocalRec$1;->this$0:Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;

    .line 14
    .line 15
    move-object v0, p1

    .line 16
    move-object v7, p2

    .line 17
    invoke-direct/range {v0 .. v7}, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$fetchLocalRec$1;-><init>(ZLjava/lang/String;Ljava/lang/Integer;IZLcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;Lkotlin/coroutines/Continuation;)V

    .line 18
    .line 19
    .line 20
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$fetchLocalRec$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$fetchLocalRec$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$fetchLocalRec$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$fetchLocalRec$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$fetchLocalRec$1;->label:I

    .line 6
    .line 7
    const-string v2, "0"

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    const/4 v4, 0x0

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    if-ne v1, v3, :cond_0

    .line 14
    .line 15
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    goto/16 :goto_5

    .line 19
    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 23
    .line 24
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    :try_start_1
    sget-object v5, Lwf/a;->a:Lwf/a$a;

    .line 32
    .line 33
    const-string v6, "MovieDetailViewModel"

    .line 34
    .line 35
    iget-boolean p1, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$fetchLocalRec$1;->$useName:Z

    .line 36
    .line 37
    iget-object v1, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$fetchLocalRec$1;->$requestKey:Ljava/lang/String;

    .line 38
    .line 39
    iget-object v7, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$fetchLocalRec$1;->$subjectType:Ljava/lang/Integer;

    .line 40
    .line 41
    iget v8, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$fetchLocalRec$1;->$page:I

    .line 42
    .line 43
    new-instance v9, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v10, "fetchLocalRec,useName:"

    .line 49
    .line 50
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string p1, ", requestKey:"

    .line 57
    .line 58
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string p1, ",subjectType"

    .line 65
    .line 66
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string p1, ", page:"

    .line 73
    .line 74
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v7

    .line 84
    const/4 v9, 0x4

    .line 85
    const/4 v10, 0x0

    .line 86
    const/4 v8, 0x0

    .line 87
    invoke-static/range {v5 .. v10}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$fetchLocalRec$1;->$subjectType:Ljava/lang/Integer;

    .line 91
    .line 92
    sget-object v1, Lcom/transsion/moviedetailapi/SubjectType;->MUSIC:Lcom/transsion/moviedetailapi/SubjectType;

    .line 93
    .line 94
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    const/16 v5, 0x8

    .line 99
    .line 100
    if-nez p1, :cond_2

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-eq p1, v1, :cond_6

    .line 108
    .line 109
    :goto_0
    iget-object p1, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$fetchLocalRec$1;->$subjectType:Ljava/lang/Integer;

    .line 110
    .line 111
    sget-object v1, Lcom/transsion/moviedetailapi/SubjectType;->EDUCATION:Lcom/transsion/moviedetailapi/SubjectType;

    .line 112
    .line 113
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    if-nez p1, :cond_3

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    if-ne p1, v1, :cond_4

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_4
    :goto_1
    iget-boolean p1, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$fetchLocalRec$1;->$isTablet:Z

    .line 128
    .line 129
    if-eqz p1, :cond_5

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_5
    const/4 v5, 0x6

    .line 133
    :cond_6
    :goto_2
    new-instance p1, Lcom/google/gson/JsonObject;

    .line 134
    .line 135
    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 136
    .line 137
    .line 138
    const-string v1, "subjectId"

    .line 139
    .line 140
    iget-boolean v6, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$fetchLocalRec$1;->$useName:Z

    .line 141
    .line 142
    if-eqz v6, :cond_7

    .line 143
    .line 144
    move-object v6, v2

    .line 145
    goto :goto_3

    .line 146
    :cond_7
    iget-object v6, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$fetchLocalRec$1;->$requestKey:Ljava/lang/String;

    .line 147
    .line 148
    :goto_3
    invoke-virtual {p1, v1, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    const-string v1, "name"

    .line 152
    .line 153
    iget-boolean v6, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$fetchLocalRec$1;->$useName:Z

    .line 154
    .line 155
    if-eqz v6, :cond_8

    .line 156
    .line 157
    iget-object v6, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$fetchLocalRec$1;->$requestKey:Ljava/lang/String;

    .line 158
    .line 159
    goto :goto_4

    .line 160
    :cond_8
    const-string v6, ""

    .line 161
    .line 162
    :goto_4
    invoke-virtual {p1, v1, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    const-string v1, "page"

    .line 166
    .line 167
    iget v6, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$fetchLocalRec$1;->$page:I

    .line 168
    .line 169
    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 170
    .line 171
    .line 172
    move-result-object v6

    .line 173
    invoke-virtual {p1, v1, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 174
    .line 175
    .line 176
    const-string v1, "perPage"

    .line 177
    .line 178
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    invoke-virtual {p1, v1, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 183
    .line 184
    .line 185
    sget-object v1, Lmg/b;->a:Lmg/b$a;

    .line 186
    .line 187
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    const-string v5, "toString(...)"

    .line 192
    .line 193
    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1, p1}, Lmg/b$a;->a(Ljava/lang/Object;)Lokhttp3/RequestBody;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    if-eqz p1, :cond_b

    .line 201
    .line 202
    iget-object v1, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$fetchLocalRec$1;->this$0:Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;

    .line 203
    .line 204
    invoke-static {v1}, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->n(Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;)Lom/a;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    sget-object v5, Lgg/a;->a:Lgg/a$a;

    .line 209
    .line 210
    invoke-virtual {v5}, Lgg/a$a;->a()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v5

    .line 214
    iput v3, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$fetchLocalRec$1;->label:I

    .line 215
    .line 216
    invoke-interface {v1, v5, p1, p0}, Lom/a;->h(Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    if-ne p1, v0, :cond_9

    .line 221
    .line 222
    return-object v0

    .line 223
    :cond_9
    :goto_5
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    .line 224
    .line 225
    if-eqz p1, :cond_b

    .line 226
    .line 227
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    if-eqz v0, :cond_a

    .line 236
    .line 237
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    check-cast p1, Lcom/transsion/postdetail/bean/ForYouBean;

    .line 242
    .line 243
    goto :goto_6

    .line 244
    :cond_a
    move-object p1, v4

    .line 245
    :goto_6
    if-eqz p1, :cond_b

    .line 246
    .line 247
    invoke-virtual {p1}, Lcom/transsion/postdetail/bean/ForYouBean;->getItems()Ljava/util/List;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    goto :goto_7

    .line 252
    :cond_b
    move-object p1, v4

    .line 253
    :goto_7
    sget-object v5, Lwf/a;->a:Lwf/a$a;

    .line 254
    .line 255
    const-string v6, "MovieDetailViewModel"

    .line 256
    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    .line 258
    .line 259
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    .line 261
    .line 262
    const-string v1, "fetchLocalRec,items: "

    .line 263
    .line 264
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v7

    .line 274
    const/4 v9, 0x4

    .line 275
    const/4 v10, 0x0

    .line 276
    const/4 v8, 0x0

    .line 277
    invoke-static/range {v5 .. v10}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 278
    .line 279
    .line 280
    iget-object v0, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$fetchLocalRec$1;->this$0:Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;

    .line 281
    .line 282
    invoke-static {v0}, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->m(Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;)Landroidx/lifecycle/b0;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 287
    .line 288
    .line 289
    goto :goto_8

    .line 290
    :catch_0
    iget-object p1, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$fetchLocalRec$1;->this$0:Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;

    .line 291
    .line 292
    invoke-static {p1}, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->m(Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;)Landroidx/lifecycle/b0;

    .line 293
    .line 294
    .line 295
    move-result-object p1

    .line 296
    invoke-virtual {p1, v4}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 297
    .line 298
    .line 299
    :goto_8
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 300
    .line 301
    return-object p1
.end method
