.class final Lcom/transsion/postdetail/viewmodel/ugcfavorite/UgcFavoriteViewModel$getUgcVideoFavoriteList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/viewmodel/ugcfavorite/UgcFavoriteViewModel;->f(Ljava/lang/String;Ljava/lang/String;)V
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
    c = "com.transsion.postdetail.viewmodel.ugcfavorite.UgcFavoriteViewModel$getUgcVideoFavoriteList$1"
    f = "UgcFavoriteViewModel.kt"
    l = {
        0x72
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $page:Ljava/lang/String;

.field final synthetic $userId:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/transsion/postdetail/viewmodel/ugcfavorite/UgcFavoriteViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/viewmodel/ugcfavorite/UgcFavoriteViewModel;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/postdetail/viewmodel/ugcfavorite/UgcFavoriteViewModel;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/postdetail/viewmodel/ugcfavorite/UgcFavoriteViewModel$getUgcVideoFavoriteList$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/viewmodel/ugcfavorite/UgcFavoriteViewModel$getUgcVideoFavoriteList$1;->this$0:Lcom/transsion/postdetail/viewmodel/ugcfavorite/UgcFavoriteViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/postdetail/viewmodel/ugcfavorite/UgcFavoriteViewModel$getUgcVideoFavoriteList$1;->$page:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/postdetail/viewmodel/ugcfavorite/UgcFavoriteViewModel$getUgcVideoFavoriteList$1;->$userId:Ljava/lang/String;

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
    new-instance p1, Lcom/transsion/postdetail/viewmodel/ugcfavorite/UgcFavoriteViewModel$getUgcVideoFavoriteList$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/postdetail/viewmodel/ugcfavorite/UgcFavoriteViewModel$getUgcVideoFavoriteList$1;->this$0:Lcom/transsion/postdetail/viewmodel/ugcfavorite/UgcFavoriteViewModel;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/postdetail/viewmodel/ugcfavorite/UgcFavoriteViewModel$getUgcVideoFavoriteList$1;->$page:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/transsion/postdetail/viewmodel/ugcfavorite/UgcFavoriteViewModel$getUgcVideoFavoriteList$1;->$userId:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/transsion/postdetail/viewmodel/ugcfavorite/UgcFavoriteViewModel$getUgcVideoFavoriteList$1;-><init>(Lcom/transsion/postdetail/viewmodel/ugcfavorite/UgcFavoriteViewModel;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/viewmodel/ugcfavorite/UgcFavoriteViewModel$getUgcVideoFavoriteList$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/viewmodel/ugcfavorite/UgcFavoriteViewModel$getUgcVideoFavoriteList$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/postdetail/viewmodel/ugcfavorite/UgcFavoriteViewModel$getUgcVideoFavoriteList$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/postdetail/viewmodel/ugcfavorite/UgcFavoriteViewModel$getUgcVideoFavoriteList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/transsion/postdetail/viewmodel/ugcfavorite/UgcFavoriteViewModel$getUgcVideoFavoriteList$1;->label:I

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
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception p1

    .line 17
    goto/16 :goto_2

    .line 18
    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1

    .line 27
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    :try_start_1
    iget-object p1, p0, Lcom/transsion/postdetail/viewmodel/ugcfavorite/UgcFavoriteViewModel$getUgcVideoFavoriteList$1;->this$0:Lcom/transsion/postdetail/viewmodel/ugcfavorite/UgcFavoriteViewModel;

    .line 31
    .line 32
    invoke-static {p1}, Lcom/transsion/postdetail/viewmodel/ugcfavorite/UgcFavoriteViewModel;->d(Lcom/transsion/postdetail/viewmodel/ugcfavorite/UgcFavoriteViewModel;)Lnp/a;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    sget-object p1, Lgg/a;->a:Lgg/a$a;

    .line 37
    .line 38
    invoke-virtual {p1}, Lgg/a$a;->a()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    iget-object v5, p0, Lcom/transsion/postdetail/viewmodel/ugcfavorite/UgcFavoriteViewModel$getUgcVideoFavoriteList$1;->$page:Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {}, Lcom/transsion/postdetail/viewmodel/ugcfavorite/UgcFavoriteViewModel;->c()I

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    iget-object v7, p0, Lcom/transsion/postdetail/viewmodel/ugcfavorite/UgcFavoriteViewModel$getUgcVideoFavoriteList$1;->$userId:Ljava/lang/String;

    .line 49
    .line 50
    iput v2, p0, Lcom/transsion/postdetail/viewmodel/ugcfavorite/UgcFavoriteViewModel$getUgcVideoFavoriteList$1;->label:I

    .line 51
    .line 52
    move-object v8, p0

    .line 53
    invoke-interface/range {v3 .. v8}, Lnp/a;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    if-ne p1, v0, :cond_2

    .line 58
    .line 59
    return-object v0

    .line 60
    :cond_2
    :goto_0
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    .line 61
    .line 62
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 63
    .line 64
    const-string v4, "subscription"

    .line 65
    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    const-string v3, "favorite data "

    .line 72
    .line 73
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    const/4 v7, 0x4

    .line 84
    const/4 v8, 0x0

    .line 85
    const/4 v6, 0x0

    .line 86
    move-object v3, v0

    .line 87
    invoke-static/range {v3 .. v8}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    check-cast v1, Lcom/transsion/postdetail/bean/favorite/FeedFavorData;

    .line 95
    .line 96
    if-eqz v1, :cond_3

    .line 97
    .line 98
    invoke-virtual {v1}, Lcom/transsion/postdetail/bean/favorite/FeedFavorData;->getItems()Ljava/util/List;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    if-eqz v1, :cond_3

    .line 103
    .line 104
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    goto :goto_1

    .line 113
    :cond_3
    const/4 v1, 0x0

    .line 114
    :goto_1
    const-string v4, "subscription"

    .line 115
    .line 116
    new-instance v3, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .line 120
    .line 121
    const-string v5, "favorite data size "

    .line 122
    .line 123
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    const/4 v7, 0x4

    .line 134
    const/4 v8, 0x0

    .line 135
    const/4 v6, 0x0

    .line 136
    move-object v3, v0

    .line 137
    invoke-static/range {v3 .. v8}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    iget-object v0, p0, Lcom/transsion/postdetail/viewmodel/ugcfavorite/UgcFavoriteViewModel$getUgcVideoFavoriteList$1;->this$0:Lcom/transsion/postdetail/viewmodel/ugcfavorite/UgcFavoriteViewModel;

    .line 141
    .line 142
    invoke-virtual {v0}, Lcom/transsion/postdetail/viewmodel/ugcfavorite/UgcFavoriteViewModel;->e()Landroidx/lifecycle/b0;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 151
    .line 152
    .line 153
    goto :goto_3

    .line 154
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 155
    .line 156
    .line 157
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 158
    .line 159
    const-class v1, Lcom/transsion/postdetail/viewmodel/ugcfavorite/UgcFavoriteViewModel;

    .line 160
    .line 161
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    const-string v3, "getSimpleName(...)"

    .line 166
    .line 167
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    new-instance v3, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .line 178
    .line 179
    const-string v4, "exceptionHandler "

    .line 180
    .line 181
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    invoke-virtual {v0, v1, p1, v2}, Lwf/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 192
    .line 193
    .line 194
    :goto_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 195
    .line 196
    return-object p1
.end method
