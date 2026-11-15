.class final Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel$getUGCDownloadForYouList$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel$getUGCDownloadForYouList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Lcom/transsion/ugcvideodetail/api/bean/UGCContentList;",
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
    c = "com.transsnet.downloader.ugc.viewmodel.UGCForYouViewModel$getUGCDownloadForYouList$1$1"
    f = "UGCForYouViewModel.kt"
    l = {
        0x29,
        0x2e,
        0x30
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $isRefresh:Z

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel;


# direct methods
.method constructor <init>(ZLcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel$getUGCDownloadForYouList$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel$getUGCDownloadForYouList$1$1;->$isRefresh:Z

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel$getUGCDownloadForYouList$1$1;->this$0:Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel;

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
    new-instance v0, Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel$getUGCDownloadForYouList$1$1;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel$getUGCDownloadForYouList$1$1;->$isRefresh:Z

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel$getUGCDownloadForYouList$1$1;->this$0:Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, p2}, Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel$getUGCDownloadForYouList$1$1;-><init>(ZLcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel;Lkotlin/coroutines/Continuation;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, v0, Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel$getUGCDownloadForYouList$1$1;->L$0:Ljava/lang/Object;

    .line 11
    .line 12
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/flow/b;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel$getUGCDownloadForYouList$1$1;->invoke(Lkotlinx/coroutines/flow/b;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel$getUGCDownloadForYouList$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel$getUGCDownloadForYouList$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel$getUGCDownloadForYouList$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel$getUGCDownloadForYouList$1$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v4, 0x1

    .line 10
    const/4 v5, 0x0

    .line 11
    if-eqz v1, :cond_3

    .line 12
    .line 13
    if-eq v1, v4, :cond_2

    .line 14
    .line 15
    if-eq v1, v3, :cond_1

    .line 16
    .line 17
    if-ne v1, v2, :cond_0

    .line 18
    .line 19
    goto :goto_0

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
    :goto_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_2
    iget-object v1, p0, Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel$getUGCDownloadForYouList$1$1;->L$0:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v1, Lkotlinx/coroutines/flow/b;

    .line 35
    .line 36
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel$getUGCDownloadForYouList$1$1;->L$0:Ljava/lang/Object;

    .line 44
    .line 45
    move-object v1, p1

    .line 46
    check-cast v1, Lkotlinx/coroutines/flow/b;

    .line 47
    .line 48
    iget-boolean p1, p0, Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel$getUGCDownloadForYouList$1$1;->$isRefresh:Z

    .line 49
    .line 50
    if-eqz p1, :cond_4

    .line 51
    .line 52
    iget-object p1, p0, Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel$getUGCDownloadForYouList$1$1;->this$0:Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel;

    .line 53
    .line 54
    invoke-virtual {p1, v5}, Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel;->k(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :cond_4
    iget-object p1, p0, Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel$getUGCDownloadForYouList$1$1;->this$0:Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel;

    .line 58
    .line 59
    invoke-static {p1}, Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel;->c(Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel;)Lfx/a;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    iget-object p1, p0, Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel$getUGCDownloadForYouList$1$1;->this$0:Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel;

    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel;->i()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    if-nez p1, :cond_5

    .line 70
    .line 71
    const-string p1, ""

    .line 72
    .line 73
    :cond_5
    move-object v7, p1

    .line 74
    iput-object v1, p0, Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel$getUGCDownloadForYouList$1$1;->L$0:Ljava/lang/Object;

    .line 75
    .line 76
    iput v4, p0, Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel$getUGCDownloadForYouList$1$1;->label:I

    .line 77
    .line 78
    const/16 v8, 0x8

    .line 79
    .line 80
    const/4 v9, 0x0

    .line 81
    const/4 v11, 0x4

    .line 82
    const/4 v12, 0x0

    .line 83
    move-object v10, p0

    .line 84
    invoke-static/range {v6 .. v12}, Lfx/a$a;->b(Lfx/a;Ljava/lang/String;ILjava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    if-ne p1, v0, :cond_6

    .line 89
    .line 90
    return-object v0

    .line 91
    :cond_6
    :goto_1
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    const-string v6, "0"

    .line 98
    .line 99
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    if-nez v4, :cond_7

    .line 104
    .line 105
    iput-object v5, p0, Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel$getUGCDownloadForYouList$1$1;->L$0:Ljava/lang/Object;

    .line 106
    .line 107
    iput v3, p0, Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel$getUGCDownloadForYouList$1$1;->label:I

    .line 108
    .line 109
    invoke-interface {v1, v5, p0}, Lkotlinx/coroutines/flow/b;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    if-ne p1, v0, :cond_8

    .line 114
    .line 115
    return-object v0

    .line 116
    :cond_7
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    iput-object v5, p0, Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel$getUGCDownloadForYouList$1$1;->L$0:Ljava/lang/Object;

    .line 121
    .line 122
    iput v2, p0, Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel$getUGCDownloadForYouList$1$1;->label:I

    .line 123
    .line 124
    invoke-interface {v1, p1, p0}, Lkotlinx/coroutines/flow/b;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    if-ne p1, v0, :cond_8

    .line 129
    .line 130
    return-object v0

    .line 131
    :cond_8
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 132
    .line 133
    return-object p1
.end method
