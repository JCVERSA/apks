.class final Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvCategoryViewModel$getCategoryList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvCategoryViewModel;->i(Ljava/lang/String;)V
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
    c = "com.transsion.shorttv._channel.ui.viewmodel.ShortTvCategoryViewModel$getCategoryList$1"
    f = "ShortTvCategoryViewModel.kt"
    l = {
        0x24
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $type:Ljava/lang/String;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvCategoryViewModel;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvCategoryViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvCategoryViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvCategoryViewModel$getCategoryList$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvCategoryViewModel$getCategoryList$1;->$type:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvCategoryViewModel$getCategoryList$1;->this$0:Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvCategoryViewModel;

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
    .locals 2
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
    new-instance p1, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvCategoryViewModel$getCategoryList$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvCategoryViewModel$getCategoryList$1;->$type:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvCategoryViewModel$getCategoryList$1;->this$0:Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvCategoryViewModel;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvCategoryViewModel$getCategoryList$1;-><init>(Ljava/lang/String;Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvCategoryViewModel;Lkotlin/coroutines/Continuation;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvCategoryViewModel$getCategoryList$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvCategoryViewModel$getCategoryList$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvCategoryViewModel$getCategoryList$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvCategoryViewModel$getCategoryList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvCategoryViewModel$getCategoryList$1;->label:I

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
    iget-object v0, p0, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvCategoryViewModel$getCategoryList$1;->L$0:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvCategoryViewModel;

    .line 15
    .line 16
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception p1

    .line 21
    goto/16 :goto_1

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
    :try_start_1
    new-instance p1, Lcom/google/gson/JsonObject;

    .line 35
    .line 36
    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v1, "type"

    .line 40
    .line 41
    iget-object v3, p0, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvCategoryViewModel$getCategoryList$1;->$type:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p1, v1, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v1, "page"

    .line 47
    .line 48
    iget-object v3, p0, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvCategoryViewModel$getCategoryList$1;->this$0:Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvCategoryViewModel;

    .line 49
    .line 50
    invoke-virtual {v3}, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvCategoryViewModel;->k()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {p1, v1, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 59
    .line 60
    .line 61
    const-string v1, "perPage"

    .line 62
    .line 63
    iget-object v3, p0, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvCategoryViewModel$getCategoryList$1;->this$0:Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvCategoryViewModel;

    .line 64
    .line 65
    invoke-static {v3}, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvCategoryViewModel;->e(Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvCategoryViewModel;)I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-virtual {p1, v1, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 74
    .line 75
    .line 76
    sget-object v1, Lmg/b;->a:Lmg/b$a;

    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    const-string v3, "toString(...)"

    .line 83
    .line 84
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, p1}, Lmg/b$a;->a(Ljava/lang/Object;)Lokhttp3/RequestBody;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    if-eqz p1, :cond_3

    .line 92
    .line 93
    iget-object v1, p0, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvCategoryViewModel$getCategoryList$1;->this$0:Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvCategoryViewModel;

    .line 94
    .line 95
    invoke-static {v1}, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvCategoryViewModel;->f(Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvCategoryViewModel;)Lrq/a;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    sget-object v4, Lgg/a;->a:Lgg/a$a;

    .line 100
    .line 101
    invoke-virtual {v4}, Lgg/a$a;->a()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    iput-object v1, p0, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvCategoryViewModel$getCategoryList$1;->L$0:Ljava/lang/Object;

    .line 106
    .line 107
    iput v2, p0, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvCategoryViewModel$getCategoryList$1;->label:I

    .line 108
    .line 109
    invoke-interface {v3, v4, p1, p0}, Lrq/a;->c(Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    if-ne p1, v0, :cond_2

    .line 114
    .line 115
    return-object v0

    .line 116
    :cond_2
    move-object v0, v1

    .line 117
    :goto_0
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    .line 118
    .line 119
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    check-cast v1, Lcom/transsion/shorttv/_channel/model/ShortTvCategoryBean;

    .line 124
    .line 125
    invoke-static {v0, v1}, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvCategoryViewModel;->g(Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvCategoryViewModel;Lcom/transsion/shorttv/_channel/model/ShortTvCategoryBean;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvCategoryViewModel;->j()Landroidx/lifecycle/b0;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-virtual {v1, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0}, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvCategoryViewModel;->k()I

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    add-int/lit8 v1, p1, 0x1

    .line 140
    .line 141
    invoke-virtual {v0, v1}, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvCategoryViewModel;->o(I)V

    .line 142
    .line 143
    .line 144
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 145
    .line 146
    .line 147
    goto :goto_2

    .line 148
    :goto_1
    iget-object v0, p0, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvCategoryViewModel$getCategoryList$1;->this$0:Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvCategoryViewModel;

    .line 149
    .line 150
    invoke-virtual {v0}, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvCategoryViewModel;->j()Landroidx/lifecycle/b0;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    new-instance v1, Lcom/tn/lib/net/bean/BaseDto;

    .line 155
    .line 156
    invoke-direct {v1}, Lcom/tn/lib/net/bean/BaseDto;-><init>()V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 163
    .line 164
    .line 165
    :cond_3
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 166
    .line 167
    return-object p1
.end method
