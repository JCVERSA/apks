.class final Lcom/transsion/commercialization/aha/GameRecommendViewModel$getAllGame$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/commercialization/aha/GameRecommendViewModel;->i()V
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
    c = "com.transsion.commercialization.aha.GameRecommendViewModel$getAllGame$1"
    f = "GameRecommendViewModel.kt"
    l = {
        0x25
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/commercialization/aha/GameRecommendViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/commercialization/aha/GameRecommendViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/commercialization/aha/GameRecommendViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/commercialization/aha/GameRecommendViewModel$getAllGame$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/commercialization/aha/GameRecommendViewModel$getAllGame$1;->this$0:Lcom/transsion/commercialization/aha/GameRecommendViewModel;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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
    new-instance p1, Lcom/transsion/commercialization/aha/GameRecommendViewModel$getAllGame$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/commercialization/aha/GameRecommendViewModel$getAllGame$1;->this$0:Lcom/transsion/commercialization/aha/GameRecommendViewModel;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/transsion/commercialization/aha/GameRecommendViewModel$getAllGame$1;-><init>(Lcom/transsion/commercialization/aha/GameRecommendViewModel;Lkotlin/coroutines/Continuation;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/commercialization/aha/GameRecommendViewModel$getAllGame$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/commercialization/aha/GameRecommendViewModel$getAllGame$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/commercialization/aha/GameRecommendViewModel$getAllGame$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/commercialization/aha/GameRecommendViewModel$getAllGame$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/transsion/commercialization/aha/GameRecommendViewModel$getAllGame$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/transsion/commercialization/aha/GameRecommendViewModel$getAllGame$1;->L$0:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lcom/transsion/commercialization/aha/GameRecommendViewModel;

    .line 15
    .line 16
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    goto/16 :goto_2

    .line 22
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
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/transsion/commercialization/aha/GameRecommendViewModel$getAllGame$1;->this$0:Lcom/transsion/commercialization/aha/GameRecommendViewModel;

    .line 35
    .line 36
    :try_start_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 37
    .line 38
    invoke-static {p1}, Lcom/transsion/commercialization/aha/GameRecommendViewModel;->f(Lcom/transsion/commercialization/aha/GameRecommendViewModel;)Lcom/transsion/commercialization/aha/g;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    sget-object v3, Lcom/transsion/commercialization/aha/g;->a:Lcom/transsion/commercialization/aha/g$a;

    .line 43
    .line 44
    invoke-virtual {v3}, Lcom/transsion/commercialization/aha/g$a;->a()Ljava/util/Map;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    sget-object v4, Lmg/b;->a:Lmg/b$a;

    .line 49
    .line 50
    new-instance v5, Lcom/transsion/commercialization/aha/AhaGameRequest;

    .line 51
    .line 52
    new-instance v6, Lcom/transsion/commercialization/aha/AhaGameQuery;

    .line 53
    .line 54
    invoke-static {p1}, Lcom/transsion/commercialization/aha/GameRecommendViewModel;->e(Lcom/transsion/commercialization/aha/GameRecommendViewModel;)I

    .line 55
    .line 56
    .line 57
    move-result v7

    .line 58
    const/16 v8, 0xa

    .line 59
    .line 60
    invoke-direct {v6, v7, v8}, Lcom/transsion/commercialization/aha/AhaGameQuery;-><init>(II)V

    .line 61
    .line 62
    .line 63
    invoke-direct {v5, v6}, Lcom/transsion/commercialization/aha/AhaGameRequest;-><init>(Lcom/transsion/commercialization/aha/AhaGameQuery;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4, v5}, Lmg/b$a;->a(Ljava/lang/Object;)Lokhttp3/RequestBody;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    iput-object p1, p0, Lcom/transsion/commercialization/aha/GameRecommendViewModel$getAllGame$1;->L$0:Ljava/lang/Object;

    .line 71
    .line 72
    iput v2, p0, Lcom/transsion/commercialization/aha/GameRecommendViewModel$getAllGame$1;->label:I

    .line 73
    .line 74
    invoke-interface {v1, v3, v4, p0}, Lcom/transsion/commercialization/aha/g;->a(Ljava/util/Map;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    if-ne v1, v0, :cond_2

    .line 79
    .line 80
    return-object v0

    .line 81
    :cond_2
    move-object v0, p1

    .line 82
    move-object p1, v1

    .line 83
    :goto_0
    check-cast p1, Lcom/transsion/bean/AhaGameResponse;

    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/transsion/bean/AhaGameResponse;->getCode()Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    if-nez v1, :cond_3

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    const/16 v3, 0x3e8

    .line 97
    .line 98
    if-ne v1, v3, :cond_4

    .line 99
    .line 100
    invoke-static {v0}, Lcom/transsion/commercialization/aha/GameRecommendViewModel;->e(Lcom/transsion/commercialization/aha/GameRecommendViewModel;)I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    add-int/2addr v1, v2

    .line 105
    invoke-static {v0, v1}, Lcom/transsion/commercialization/aha/GameRecommendViewModel;->g(Lcom/transsion/commercialization/aha/GameRecommendViewModel;I)V

    .line 106
    .line 107
    .line 108
    :cond_4
    :goto_1
    invoke-static {v0}, Lcom/transsion/commercialization/aha/GameRecommendViewModel;->c(Lcom/transsion/commercialization/aha/GameRecommendViewModel;)Landroidx/lifecycle/b0;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v1, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 116
    .line 117
    invoke-static {v0}, Lcom/transsion/commercialization/aha/GameRecommendViewModel;->d(Lcom/transsion/commercialization/aha/GameRecommendViewModel;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    invoke-static {v0}, Lcom/transsion/commercialization/aha/GameRecommendViewModel;->d(Lcom/transsion/commercialization/aha/GameRecommendViewModel;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    new-instance v4, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v0, " --> getAllGame() --> postAhaGameRecommendList = "

    .line 134
    .line 135
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-virtual {v1, v3, p1, v2}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 146
    .line 147
    .line 148
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 149
    .line 150
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    goto :goto_3

    .line 155
    :goto_2
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 156
    .line 157
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    :goto_3
    iget-object v0, p0, Lcom/transsion/commercialization/aha/GameRecommendViewModel$getAllGame$1;->this$0:Lcom/transsion/commercialization/aha/GameRecommendViewModel;

    .line 166
    .line 167
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    if-nez p1, :cond_5

    .line 172
    .line 173
    goto :goto_4

    .line 174
    :cond_5
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 175
    .line 176
    invoke-static {v0}, Lcom/transsion/commercialization/aha/GameRecommendViewModel;->d(Lcom/transsion/commercialization/aha/GameRecommendViewModel;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    invoke-static {v0}, Lcom/transsion/commercialization/aha/GameRecommendViewModel;->d(Lcom/transsion/commercialization/aha/GameRecommendViewModel;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    new-instance v5, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    const-string v4, " --> getAllGame() --> \u52a0\u8f7d\u5931\u8d25\u4e86 it = "

    .line 193
    .line 194
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    invoke-virtual {v1, v3, p1, v2}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 205
    .line 206
    .line 207
    invoke-static {v0}, Lcom/transsion/commercialization/aha/GameRecommendViewModel;->c(Lcom/transsion/commercialization/aha/GameRecommendViewModel;)Landroidx/lifecycle/b0;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    const/4 v0, 0x0

    .line 212
    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    :goto_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 216
    .line 217
    return-object p1
.end method
