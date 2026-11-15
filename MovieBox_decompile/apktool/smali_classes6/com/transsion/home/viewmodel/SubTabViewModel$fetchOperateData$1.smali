.class final Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/viewmodel/SubTabViewModel;->n(IZLjava/lang/String;)V
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
    c = "com.transsion.home.viewmodel.SubTabViewModel$fetchOperateData$1"
    f = "SubTabViewModel.kt"
    l = {
        0x48
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $grade:Ljava/lang/String;

.field final synthetic $isRefresh:Z

.field final synthetic $operateData:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/transsion/home/bean/SubOperateData;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $tabId:I

.field label:I

.field final synthetic this$0:Lcom/transsion/home/viewmodel/SubTabViewModel;


# direct methods
.method constructor <init>(ZLcom/transsion/home/viewmodel/SubTabViewModel;Lkotlin/jvm/internal/Ref$ObjectRef;ILjava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/transsion/home/viewmodel/SubTabViewModel;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/transsion/home/bean/SubOperateData;",
            ">;I",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1;->$isRefresh:Z

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1;->this$0:Lcom/transsion/home/viewmodel/SubTabViewModel;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1;->$operateData:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 6
    .line 7
    iput p4, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1;->$tabId:I

    .line 8
    .line 9
    iput-object p5, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1;->$grade:Ljava/lang/String;

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
    new-instance p1, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1;->$isRefresh:Z

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1;->this$0:Lcom/transsion/home/viewmodel/SubTabViewModel;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1;->$operateData:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 8
    .line 9
    iget v4, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1;->$tabId:I

    .line 10
    .line 11
    iget-object v5, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1;->$grade:Ljava/lang/String;

    .line 12
    .line 13
    move-object v0, p1

    .line 14
    move-object v6, p2

    .line 15
    invoke-direct/range {v0 .. v6}, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1;-><init>(ZLcom/transsion/home/viewmodel/SubTabViewModel;Lkotlin/jvm/internal/Ref$ObjectRef;ILjava/lang/String;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1;->label:I

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
    goto/16 :goto_2

    .line 16
    .line 17
    :catch_0
    move-exception p1

    .line 18
    goto :goto_0

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
    new-instance p1, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1$1;

    .line 31
    .line 32
    iget-object v4, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1;->$operateData:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 33
    .line 34
    iget-object v5, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1;->this$0:Lcom/transsion/home/viewmodel/SubTabViewModel;

    .line 35
    .line 36
    iget v6, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1;->$tabId:I

    .line 37
    .line 38
    iget-boolean v7, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1;->$isRefresh:Z

    .line 39
    .line 40
    iget-object v8, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1;->$grade:Ljava/lang/String;

    .line 41
    .line 42
    const/4 v9, 0x0

    .line 43
    move-object v3, p1

    .line 44
    invoke-direct/range {v3 .. v9}, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/transsion/home/viewmodel/SubTabViewModel;IZLjava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 45
    .line 46
    .line 47
    iput v2, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1;->label:I

    .line 48
    .line 49
    invoke-static {p1, p0}, Lkotlinx/coroutines/l2;->c(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 53
    if-ne p1, v0, :cond_5

    .line 54
    .line 55
    return-object v0

    .line 56
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 57
    .line 58
    .line 59
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string v3, "exceptionHandler "

    .line 71
    .line 72
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    const-string v1, "SubTabFragment"

    .line 83
    .line 84
    invoke-virtual {v0, v1, p1, v2}, Lwf/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 85
    .line 86
    .line 87
    iget-boolean p1, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1;->$isRefresh:Z

    .line 88
    .line 89
    const/4 v0, 0x0

    .line 90
    if-eqz p1, :cond_2

    .line 91
    .line 92
    iget-object p1, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1;->this$0:Lcom/transsion/home/viewmodel/SubTabViewModel;

    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/transsion/home/viewmodel/SubTabViewModel;->q()Landroidx/lifecycle/b0;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_2
    iget-object p1, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1;->$operateData:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 103
    .line 104
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast p1, Lcom/transsion/home/bean/SubOperateData;

    .line 107
    .line 108
    if-eqz p1, :cond_3

    .line 109
    .line 110
    invoke-virtual {p1}, Lcom/transsion/home/bean/SubOperateData;->getItems()Ljava/util/List;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    if-eqz p1, :cond_3

    .line 115
    .line 116
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    goto :goto_1

    .line 121
    :cond_3
    const/4 p1, 0x0

    .line 122
    :goto_1
    if-lez p1, :cond_4

    .line 123
    .line 124
    iget-object p1, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1;->this$0:Lcom/transsion/home/viewmodel/SubTabViewModel;

    .line 125
    .line 126
    invoke-virtual {p1}, Lcom/transsion/home/viewmodel/SubTabViewModel;->p()Landroidx/lifecycle/b0;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    iget-object v0, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1;->$operateData:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 131
    .line 132
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 133
    .line 134
    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_4
    iget-object p1, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1;->this$0:Lcom/transsion/home/viewmodel/SubTabViewModel;

    .line 139
    .line 140
    invoke-virtual {p1}, Lcom/transsion/home/viewmodel/SubTabViewModel;->p()Landroidx/lifecycle/b0;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    :cond_5
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 148
    .line 149
    return-object p1
.end method
