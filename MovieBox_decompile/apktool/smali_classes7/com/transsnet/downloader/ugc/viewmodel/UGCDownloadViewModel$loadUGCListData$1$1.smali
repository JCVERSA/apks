.class final Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel$loadUGCListData$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel$loadUGCListData$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0004\u001a\u00020\u0003*\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00010\u0000H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "Lkotlinx/coroutines/flow/b;",
        "Lcom/tn/lib/net/bean/BaseDto;",
        "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadList;",
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
    c = "com.transsnet.downloader.ugc.viewmodel.UGCDownloadViewModel$loadUGCListData$1$1"
    f = "UGCDownloadViewModel.kt"
    l = {
        0x65,
        0x67,
        0x69
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $collectionId:Ljava/lang/String;

.field final synthetic $finalResolution:I

.field final synthetic $page:Ljava/lang/String;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel;Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel$loadUGCListData$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel$loadUGCListData$1$1;->this$0:Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel$loadUGCListData$1$1;->$collectionId:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel$loadUGCListData$1$1;->$page:Ljava/lang/String;

    .line 6
    .line 7
    iput p4, p0, Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel$loadUGCListData$1$1;->$finalResolution:I

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
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
    new-instance v6, Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel$loadUGCListData$1$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel$loadUGCListData$1$1;->this$0:Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel$loadUGCListData$1$1;->$collectionId:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel$loadUGCListData$1$1;->$page:Ljava/lang/String;

    .line 8
    .line 9
    iget v4, p0, Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel$loadUGCListData$1$1;->$finalResolution:I

    .line 10
    .line 11
    move-object v0, v6

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel$loadUGCListData$1$1;-><init>(Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel;Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, v6, Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel$loadUGCListData$1$1;->L$0:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v6
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/flow/b;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel$loadUGCListData$1$1;->invoke(Lkotlinx/coroutines/flow/b;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel$loadUGCListData$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel$loadUGCListData$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel$loadUGCListData$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel$loadUGCListData$1$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v4, 0x1

    .line 10
    if-eqz v1, :cond_3

    .line 11
    .line 12
    if-eq v1, v4, :cond_2

    .line 13
    .line 14
    if-eq v1, v3, :cond_1

    .line 15
    .line 16
    if-ne v1, v2, :cond_0

    .line 17
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
    :goto_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_2
    iget-object v1, p0, Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel$loadUGCListData$1$1;->L$0:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v1, Lkotlinx/coroutines/flow/b;

    .line 34
    .line 35
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel$loadUGCListData$1$1;->L$0:Ljava/lang/Object;

    .line 43
    .line 44
    move-object v1, p1

    .line 45
    check-cast v1, Lkotlinx/coroutines/flow/b;

    .line 46
    .line 47
    iget-object p1, p0, Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel$loadUGCListData$1$1;->this$0:Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel;

    .line 48
    .line 49
    invoke-static {p1}, Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel;->e(Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel;)Lfx/a;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    iget-object v6, p0, Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel$loadUGCListData$1$1;->$collectionId:Ljava/lang/String;

    .line 54
    .line 55
    iget-object v7, p0, Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel$loadUGCListData$1$1;->$page:Ljava/lang/String;

    .line 56
    .line 57
    iget-object p1, p0, Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel$loadUGCListData$1$1;->this$0:Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel;

    .line 58
    .line 59
    invoke-static {p1}, Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel;->g(Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel;)I

    .line 60
    .line 61
    .line 62
    move-result v8

    .line 63
    iget p1, p0, Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel$loadUGCListData$1$1;->$finalResolution:I

    .line 64
    .line 65
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v9

    .line 69
    iput-object v1, p0, Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel$loadUGCListData$1$1;->L$0:Ljava/lang/Object;

    .line 70
    .line 71
    iput v4, p0, Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel$loadUGCListData$1$1;->label:I

    .line 72
    .line 73
    const/4 v10, 0x0

    .line 74
    const/16 v12, 0x10

    .line 75
    .line 76
    const/4 v13, 0x0

    .line 77
    move-object v11, p0

    .line 78
    invoke-static/range {v5 .. v13}, Lfx/a$a;->a(Lfx/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    if-ne p1, v0, :cond_4

    .line 83
    .line 84
    return-object v0

    .line 85
    :cond_4
    :goto_1
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    const-string v5, "0"

    .line 92
    .line 93
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    const/4 v5, 0x0

    .line 98
    if-nez v4, :cond_5

    .line 99
    .line 100
    iput-object v5, p0, Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel$loadUGCListData$1$1;->L$0:Ljava/lang/Object;

    .line 101
    .line 102
    iput v3, p0, Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel$loadUGCListData$1$1;->label:I

    .line 103
    .line 104
    invoke-interface {v1, v5, p0}, Lkotlinx/coroutines/flow/b;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    if-ne p1, v0, :cond_6

    .line 109
    .line 110
    return-object v0

    .line 111
    :cond_5
    iput-object v5, p0, Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel$loadUGCListData$1$1;->L$0:Ljava/lang/Object;

    .line 112
    .line 113
    iput v2, p0, Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel$loadUGCListData$1$1;->label:I

    .line 114
    .line 115
    invoke-interface {v1, p1, p0}, Lkotlinx/coroutines/flow/b;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    if-ne p1, v0, :cond_6

    .line 120
    .line 121
    return-object v0

    .line 122
    :cond_6
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 123
    .line 124
    return-object p1
.end method
