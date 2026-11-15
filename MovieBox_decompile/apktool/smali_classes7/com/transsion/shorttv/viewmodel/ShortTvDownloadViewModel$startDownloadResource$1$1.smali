.class final Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$startDownloadResource$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$startDownloadResource$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Lcom/transsion/shorttv/bean/StartDownloadResponseBean;",
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
    c = "com.transsion.shorttv.viewmodel.ShortTvDownloadViewModel$startDownloadResource$1$1"
    f = "ShortTvDownloadViewModel.kt"
    l = {
        0xea,
        0xeb
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $beanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/shorttv/bean/DownloadItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $subjectId:Ljava/lang/String;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/shorttv/bean/DownloadItem;",
            ">;",
            "Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$startDownloadResource$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$startDownloadResource$1$1;->$beanList:Ljava/util/List;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$startDownloadResource$1$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$startDownloadResource$1$1;->$subjectId:Ljava/lang/String;

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
    new-instance v0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$startDownloadResource$1$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$startDownloadResource$1$1;->$beanList:Ljava/util/List;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$startDownloadResource$1$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$startDownloadResource$1$1;->$subjectId:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3, p2}, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$startDownloadResource$1$1;-><init>(Ljava/util/List;Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, v0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$startDownloadResource$1$1;->L$0:Ljava/lang/Object;

    .line 13
    .line 14
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/flow/b;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$startDownloadResource$1$1;->invoke(Lkotlinx/coroutines/flow/b;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$startDownloadResource$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$startDownloadResource$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$startDownloadResource$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$startDownloadResource$1$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    if-eq v1, v3, :cond_1

    .line 12
    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    goto/16 :goto_2

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
    iget-object v1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$startDownloadResource$1$1;->L$0:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v1, Lkotlinx/coroutines/flow/b;

    .line 31
    .line 32
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$startDownloadResource$1$1;->L$0:Ljava/lang/Object;

    .line 40
    .line 41
    move-object v1, p1

    .line 42
    check-cast v1, Lkotlinx/coroutines/flow/b;

    .line 43
    .line 44
    new-instance p1, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .line 48
    .line 49
    iget-object v4, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$startDownloadResource$1$1;->$beanList:Ljava/util/List;

    .line 50
    .line 51
    check-cast v4, Ljava/lang/Iterable;

    .line 52
    .line 53
    iget-object v5, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$startDownloadResource$1$1;->$subjectId:Ljava/lang/String;

    .line 54
    .line 55
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    if-eqz v6, :cond_3

    .line 64
    .line 65
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    check-cast v6, Lcom/transsion/shorttv/bean/DownloadItem;

    .line 70
    .line 71
    new-instance v7, Lcom/transsion/shorttv/bean/StartDownloadBean;

    .line 72
    .line 73
    invoke-virtual {v6}, Lcom/transsion/shorttv/bean/DownloadItem;->getResourceId()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v8

    .line 77
    invoke-virtual {v6}, Lcom/transsion/shorttv/bean/DownloadItem;->getEpse()Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    invoke-direct {v7, v5, v8, v6}, Lcom/transsion/shorttv/bean/StartDownloadBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 82
    .line 83
    .line 84
    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_3
    iget-object v4, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$startDownloadResource$1$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;

    .line 89
    .line 90
    invoke-static {v4}, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->e(Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;)Lsr/a;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    sget-object v5, Lgg/a;->a:Lgg/a$a;

    .line 95
    .line 96
    invoke-virtual {v5}, Lgg/a$a;->a()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    sget-object v6, Lmg/b;->a:Lmg/b$a;

    .line 101
    .line 102
    new-instance v7, Lcom/transsion/shorttv/bean/StartRequestBean;

    .line 103
    .line 104
    invoke-direct {v7, p1}, Lcom/transsion/shorttv/bean/StartRequestBean;-><init>(Ljava/util/List;)V

    .line 105
    .line 106
    .line 107
    invoke-static {v7}, Lcom/blankj/utilcode/util/o;->j(Ljava/lang/Object;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    const-string v7, "toJson(...)"

    .line 112
    .line 113
    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v6, p1}, Lmg/b$a;->a(Ljava/lang/Object;)Lokhttp3/RequestBody;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    iput-object v1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$startDownloadResource$1$1;->L$0:Ljava/lang/Object;

    .line 121
    .line 122
    iput v3, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$startDownloadResource$1$1;->label:I

    .line 123
    .line 124
    invoke-interface {v4, v5, p1, p0}, Lsr/a;->b(Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    if-ne p1, v0, :cond_4

    .line 129
    .line 130
    return-object v0

    .line 131
    :cond_4
    :goto_1
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    .line 132
    .line 133
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    const/4 v3, 0x0

    .line 138
    iput-object v3, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$startDownloadResource$1$1;->L$0:Ljava/lang/Object;

    .line 139
    .line 140
    iput v2, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$startDownloadResource$1$1;->label:I

    .line 141
    .line 142
    invoke-interface {v1, p1, p0}, Lkotlinx/coroutines/flow/b;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    if-ne p1, v0, :cond_5

    .line 147
    .line 148
    return-object v0

    .line 149
    :cond_5
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 150
    .line 151
    return-object p1
.end method
