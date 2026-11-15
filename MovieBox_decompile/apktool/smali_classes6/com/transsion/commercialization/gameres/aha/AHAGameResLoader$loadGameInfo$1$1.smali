.class final Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u0002*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lkotlinx/coroutines/flow/b;",
        "Lcom/transsion/commercialization/gameres/aha/c;",
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
    c = "com.transsion.commercialization.gameres.aha.AHAGameResLoader$loadGameInfo$1$1"
    f = "AHAGameResLoader.kt"
    l = {
        0x23,
        0x25,
        0x28
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $itemId:Ljava/lang/String;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$1;->$itemId:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$1;->this$0:Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader;

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
    new-instance v0, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$1;->$itemId:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$1;->this$0:Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, p2}, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$1;-><init>(Ljava/lang/String;Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader;Lkotlin/coroutines/Continuation;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, v0, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$1;->L$0:Ljava/lang/Object;

    .line 11
    .line 12
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/flow/b;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$1;->invoke(Lkotlinx/coroutines/flow/b;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$1;->label:I

    .line 6
    .line 7
    const-string v2, "GameResLoader"

    .line 8
    .line 9
    const/4 v3, 0x3

    .line 10
    const/4 v4, 0x2

    .line 11
    const/4 v5, 0x1

    .line 12
    if-eqz v1, :cond_3

    .line 13
    .line 14
    if-eq v1, v5, :cond_2

    .line 15
    .line 16
    if-eq v1, v4, :cond_1

    .line 17
    .line 18
    if-ne v1, v3, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 24
    .line 25
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p1

    .line 29
    :cond_1
    :goto_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    goto/16 :goto_3

    .line 33
    .line 34
    :cond_2
    iget-object v1, p0, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$1;->L$0:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v1, Lkotlinx/coroutines/flow/b;

    .line 37
    .line 38
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$1;->L$0:Ljava/lang/Object;

    .line 46
    .line 47
    move-object v1, p1

    .line 48
    check-cast v1, Lkotlinx/coroutines/flow/b;

    .line 49
    .line 50
    sget-object p1, Lwf/a;->a:Lwf/a$a;

    .line 51
    .line 52
    iget-object v6, p0, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$1;->$itemId:Ljava/lang/String;

    .line 53
    .line 54
    new-instance v7, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string v8, "AHAGameRes getGameInfo,itemId:"

    .line 60
    .line 61
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    invoke-virtual {p1, v2, v6, v5}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$1;->this$0:Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader;

    .line 75
    .line 76
    invoke-static {p1}, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader;->c(Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader;)Lcom/transsion/commercialization/gameres/aha/a;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    iget-object v6, p0, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$1;->$itemId:Ljava/lang/String;

    .line 81
    .line 82
    iget-object v7, p0, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$1;->this$0:Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader;

    .line 83
    .line 84
    invoke-virtual {v7}, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader;->f()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    iput-object v1, p0, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$1;->L$0:Ljava/lang/Object;

    .line 89
    .line 90
    iput v5, p0, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$1;->label:I

    .line 91
    .line 92
    invoke-interface {p1, v6, v7, p0}, Lcom/transsion/commercialization/gameres/aha/a;->a(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    if-ne p1, v0, :cond_4

    .line 97
    .line 98
    return-object v0

    .line 99
    :cond_4
    :goto_1
    check-cast p1, Lcom/transsion/commercialization/gameres/aha/b;

    .line 100
    .line 101
    invoke-virtual {p1}, Lcom/transsion/commercialization/gameres/aha/b;->a()Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    const/4 v7, 0x0

    .line 106
    if-nez v6, :cond_5

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_5
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 110
    .line 111
    .line 112
    move-result v6

    .line 113
    const/16 v8, 0x3e8

    .line 114
    .line 115
    if-ne v6, v8, :cond_6

    .line 116
    .line 117
    invoke-virtual {p1}, Lcom/transsion/commercialization/gameres/aha/b;->b()Lcom/transsion/commercialization/gameres/aha/c;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    iput-object v7, p0, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$1;->L$0:Ljava/lang/Object;

    .line 122
    .line 123
    iput v4, p0, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$1;->label:I

    .line 124
    .line 125
    invoke-interface {v1, p1, p0}, Lkotlinx/coroutines/flow/b;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    if-ne p1, v0, :cond_7

    .line 130
    .line 131
    return-object v0

    .line 132
    :cond_6
    :goto_2
    sget-object v4, Lwf/a;->a:Lwf/a$a;

    .line 133
    .line 134
    invoke-virtual {p1}, Lcom/transsion/commercialization/gameres/aha/b;->a()Ljava/lang/Integer;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    invoke-virtual {p1}, Lcom/transsion/commercialization/gameres/aha/b;->c()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    new-instance v8, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .line 146
    .line 147
    const-string v9, "AHAGameRes fail, code:"

    .line 148
    .line 149
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    const-string v6, ", msg:"

    .line 156
    .line 157
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-virtual {v4, v2, p1, v5}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 168
    .line 169
    .line 170
    iput-object v7, p0, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$1;->L$0:Ljava/lang/Object;

    .line 171
    .line 172
    iput v3, p0, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$1;->label:I

    .line 173
    .line 174
    invoke-interface {v1, v7, p0}, Lkotlinx/coroutines/flow/b;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    if-ne p1, v0, :cond_7

    .line 179
    .line 180
    return-object v0

    .line 181
    :cond_7
    :goto_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 182
    .line 183
    return-object p1
.end method
