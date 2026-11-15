.class final Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/commercialization/gameres/ps/PSGameResLoader;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
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
    c = "com.transsion.commercialization.gameres.ps.PSGameResLoader$loadGameInfo$1"
    f = "PSGameResLoader.kt"
    l = {
        0x3e
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $callback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $itemId:Ljava/lang/String;

.field final synthetic $pageName:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/transsion/commercialization/gameres/ps/PSGameResLoader;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/transsion/commercialization/gameres/ps/PSGameResLoader;Lkotlin/jvm/functions/Function1;Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/transsion/commercialization/gameres/ps/PSGameResLoader;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1;->$itemId:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1;->this$0:Lcom/transsion/commercialization/gameres/ps/PSGameResLoader;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1;->$callback:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1;->$context:Landroid/content/Context;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1;->$pageName:Ljava/lang/String;

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
    new-instance p1, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1;->$itemId:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1;->this$0:Lcom/transsion/commercialization/gameres/ps/PSGameResLoader;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1;->$callback:Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1;->$context:Landroid/content/Context;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1;->$pageName:Ljava/lang/String;

    .line 12
    .line 13
    move-object v0, p1

    .line 14
    move-object v6, p2

    .line 15
    invoke-direct/range {v0 .. v6}, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1;-><init>(Ljava/lang/String;Lcom/transsion/commercialization/gameres/ps/PSGameResLoader;Lkotlin/jvm/functions/Function1;Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1;->label:I

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
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    goto/16 :goto_1

    .line 16
    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 18
    .line 19
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 20
    .line 21
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1

    .line 25
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    new-instance p1, Lorg/json/JSONObject;

    .line 29
    .line 30
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 31
    .line 32
    .line 33
    new-instance v1, Lorg/json/JSONArray;

    .line 34
    .line 35
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 36
    .line 37
    .line 38
    iget-object v3, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1;->$itemId:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 41
    .line 42
    .line 43
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 44
    .line 45
    const-string v3, "itemIds"

    .line 46
    .line 47
    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    .line 49
    .line 50
    sget-object v1, Lzh/a;->a:Lzh/a$a;

    .line 51
    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 53
    .line 54
    .line 55
    move-result-wide v3

    .line 56
    invoke-virtual {v1, v3, v4}, Lzh/a$a;->a(J)Ljava/util/Map;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-eqz v3, :cond_2

    .line 73
    .line 74
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    check-cast v3, Ljava/util/Map$Entry;

    .line 79
    .line 80
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    check-cast v4, Ljava/lang/String;

    .line 85
    .line 86
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-virtual {p1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_2
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    const-string v1, "toString(...)"

    .line 99
    .line 100
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 104
    .line 105
    new-instance v3, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    const-string v4, "PSGameRes loadGameInfo,bodyStr:"

    .line 111
    .line 112
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v4, " "

    .line 119
    .line 120
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    const-string v4, "GameResLoader"

    .line 128
    .line 129
    invoke-virtual {v1, v4, v3, v2}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 130
    .line 131
    .line 132
    sget-object v1, Lmg/b;->a:Lmg/b$a;

    .line 133
    .line 134
    invoke-virtual {v1, p1}, Lmg/b$a;->a(Ljava/lang/Object;)Lokhttp3/RequestBody;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    new-instance v1, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$3;

    .line 139
    .line 140
    iget-object v3, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1;->this$0:Lcom/transsion/commercialization/gameres/ps/PSGameResLoader;

    .line 141
    .line 142
    const/4 v4, 0x0

    .line 143
    invoke-direct {v1, v3, p1, v4}, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$3;-><init>(Lcom/transsion/commercialization/gameres/ps/PSGameResLoader;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)V

    .line 144
    .line 145
    .line 146
    invoke-static {v1}, Lkotlinx/coroutines/flow/c;->r(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/a;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    new-instance v1, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$4;

    .line 151
    .line 152
    invoke-direct {v1, v4}, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$4;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 153
    .line 154
    .line 155
    invoke-static {p1, v1}, Lkotlinx/coroutines/flow/c;->e(Lkotlinx/coroutines/flow/a;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/a;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    new-instance v1, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5;

    .line 160
    .line 161
    iget-object v4, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1;->$callback:Lkotlin/jvm/functions/Function1;

    .line 162
    .line 163
    iget-object v5, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1;->this$0:Lcom/transsion/commercialization/gameres/ps/PSGameResLoader;

    .line 164
    .line 165
    iget-object v6, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1;->$context:Landroid/content/Context;

    .line 166
    .line 167
    iget-object v7, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1;->$pageName:Ljava/lang/String;

    .line 168
    .line 169
    iget-object v8, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1;->$itemId:Ljava/lang/String;

    .line 170
    .line 171
    move-object v3, v1

    .line 172
    invoke-direct/range {v3 .. v8}, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5;-><init>(Lkotlin/jvm/functions/Function1;Lcom/transsion/commercialization/gameres/ps/PSGameResLoader;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    iput v2, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1;->label:I

    .line 176
    .line 177
    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/flow/a;->a(Lkotlinx/coroutines/flow/b;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    if-ne p1, v0, :cond_3

    .line 182
    .line 183
    return-object v0

    .line 184
    :cond_3
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 185
    .line 186
    return-object p1
.end method
