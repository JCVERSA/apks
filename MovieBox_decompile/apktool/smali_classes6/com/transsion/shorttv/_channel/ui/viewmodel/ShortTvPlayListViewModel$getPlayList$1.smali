.class final Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvPlayListViewModel$getPlayList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvPlayListViewModel;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
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
    c = "com.transsion.shorttv._channel.ui.viewmodel.ShortTvPlayListViewModel$getPlayList$1"
    f = "ShortTvPlayListViewModel.kt"
    l = {
        0x16
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $category:Ljava/lang/String;

.field final synthetic $label:Ljava/lang/String;

.field final synthetic $recType:Ljava/lang/String;

.field final synthetic $tabId:I

.field final synthetic $topIds:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvPlayListViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvPlayListViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvPlayListViewModel;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvPlayListViewModel$getPlayList$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvPlayListViewModel$getPlayList$1;->this$0:Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvPlayListViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvPlayListViewModel$getPlayList$1;->$label:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvPlayListViewModel$getPlayList$1;->$category:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvPlayListViewModel$getPlayList$1;->$recType:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvPlayListViewModel$getPlayList$1;->$topIds:Ljava/lang/String;

    .line 10
    .line 11
    iput p6, p0, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvPlayListViewModel$getPlayList$1;->$tabId:I

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
    new-instance p1, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvPlayListViewModel$getPlayList$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvPlayListViewModel$getPlayList$1;->this$0:Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvPlayListViewModel;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvPlayListViewModel$getPlayList$1;->$label:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvPlayListViewModel$getPlayList$1;->$category:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvPlayListViewModel$getPlayList$1;->$recType:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvPlayListViewModel$getPlayList$1;->$topIds:Ljava/lang/String;

    .line 12
    .line 13
    iget v6, p0, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvPlayListViewModel$getPlayList$1;->$tabId:I

    .line 14
    .line 15
    move-object v0, p1

    .line 16
    move-object v7, p2

    .line 17
    invoke-direct/range {v0 .. v7}, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvPlayListViewModel$getPlayList$1;-><init>(Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvPlayListViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvPlayListViewModel$getPlayList$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvPlayListViewModel$getPlayList$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvPlayListViewModel$getPlayList$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvPlayListViewModel$getPlayList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15

    .line 1
    move-object v13, p0

    .line 2
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    iget v1, v13, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvPlayListViewModel$getPlayList$1;->label:I

    .line 7
    .line 8
    const/4 v14, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    .line 14
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    move-object/from16 v1, p1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 25
    .line 26
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw v0

    .line 30
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    :try_start_1
    iget-object v1, v13, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvPlayListViewModel$getPlayList$1;->this$0:Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvPlayListViewModel;

    .line 34
    .line 35
    invoke-static {v1}, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvPlayListViewModel;->d(Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvPlayListViewModel;)Lrq/a;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iget-object v3, v13, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvPlayListViewModel$getPlayList$1;->this$0:Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvPlayListViewModel;

    .line 40
    .line 41
    invoke-virtual {v3}, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvPlayListViewModel;->e()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    iget-object v4, v13, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvPlayListViewModel$getPlayList$1;->this$0:Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvPlayListViewModel;

    .line 46
    .line 47
    invoke-static {v4}, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvPlayListViewModel;->c(Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvPlayListViewModel;)I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    iget-object v5, v13, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvPlayListViewModel$getPlayList$1;->$label:Ljava/lang/String;

    .line 52
    .line 53
    iget-object v6, v13, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvPlayListViewModel$getPlayList$1;->$category:Ljava/lang/String;

    .line 54
    .line 55
    iget-object v7, v13, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvPlayListViewModel$getPlayList$1;->$recType:Ljava/lang/String;

    .line 56
    .line 57
    iget-object v8, v13, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvPlayListViewModel$getPlayList$1;->$topIds:Ljava/lang/String;

    .line 58
    .line 59
    iget v9, v13, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvPlayListViewModel$getPlayList$1;->$tabId:I

    .line 60
    .line 61
    iput v2, v13, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvPlayListViewModel$getPlayList$1;->label:I

    .line 62
    .line 63
    const/4 v2, 0x0

    .line 64
    const/4 v11, 0x1

    .line 65
    const/4 v12, 0x0

    .line 66
    move-object v10, p0

    .line 67
    invoke-static/range {v1 .. v12}, Lrq/a$a;->a(Lrq/a;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    if-ne v1, v0, :cond_2

    .line 72
    .line 73
    return-object v0

    .line 74
    :cond_2
    :goto_0
    check-cast v1, Lcom/tn/lib/net/bean/BaseDto;

    .line 75
    .line 76
    invoke-virtual {v1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    if-eqz v0, :cond_3

    .line 81
    .line 82
    iget-object v0, v13, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvPlayListViewModel$getPlayList$1;->this$0:Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvPlayListViewModel;

    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvPlayListViewModel;->g()Landroidx/lifecycle/b0;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    iget-object v0, v13, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvPlayListViewModel$getPlayList$1;->this$0:Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvPlayListViewModel;

    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvPlayListViewModel;->e()I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    iget-object v1, v13, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvPlayListViewModel$getPlayList$1;->this$0:Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvPlayListViewModel;

    .line 102
    .line 103
    add-int/lit8 v2, v0, 0x1

    .line 104
    .line 105
    invoke-virtual {v1, v2}, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvPlayListViewModel;->i(I)V

    .line 106
    .line 107
    .line 108
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_3
    iget-object v0, v13, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvPlayListViewModel$getPlayList$1;->this$0:Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvPlayListViewModel;

    .line 113
    .line 114
    invoke-virtual {v0}, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvPlayListViewModel;->g()Landroidx/lifecycle/b0;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v0, v14}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 119
    .line 120
    .line 121
    goto :goto_2

    .line 122
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 123
    .line 124
    .line 125
    iget-object v0, v13, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvPlayListViewModel$getPlayList$1;->this$0:Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvPlayListViewModel;

    .line 126
    .line 127
    invoke-virtual {v0}, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvPlayListViewModel;->g()Landroidx/lifecycle/b0;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-virtual {v0, v14}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    :goto_2
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 135
    .line 136
    return-object v0
.end method
