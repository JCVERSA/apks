.class final Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getFirstVideoDetail$1$1$detailDeferred$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getFirstVideoDetail$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lkotlinx/coroutines/n0;",
        "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;",
        "<anonymous>",
        "(Lkotlinx/coroutines/n0;)Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsion.ugcvideodetail.viewmodel.UGCImmVideoDetailViewModel$getFirstVideoDetail$1$1$detailDeferred$1"
    f = "UGCImmVideoDetailViewModel.kt"
    l = {
        0x132
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $collectionId:Ljava/lang/String;

.field final synthetic $ugcVideoId:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getFirstVideoDetail$1$1$detailDeferred$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getFirstVideoDetail$1$1$detailDeferred$1;->this$0:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getFirstVideoDetail$1$1$detailDeferred$1;->$ugcVideoId:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getFirstVideoDetail$1$1$detailDeferred$1;->$collectionId:Ljava/lang/String;

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
    new-instance p1, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getFirstVideoDetail$1$1$detailDeferred$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getFirstVideoDetail$1$1$detailDeferred$1;->this$0:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getFirstVideoDetail$1$1$detailDeferred$1;->$ugcVideoId:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getFirstVideoDetail$1$1$detailDeferred$1;->$collectionId:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getFirstVideoDetail$1$1$detailDeferred$1;-><init>(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getFirstVideoDetail$1$1$detailDeferred$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getFirstVideoDetail$1$1$detailDeferred$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getFirstVideoDetail$1$1$detailDeferred$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getFirstVideoDetail$1$1$detailDeferred$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getFirstVideoDetail$1$1$detailDeferred$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    if-ne v1, v3, :cond_0

    .line 12
    .line 13
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_1

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
    iget-object p1, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getFirstVideoDetail$1$1$detailDeferred$1;->this$0:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 31
    .line 32
    invoke-static {p1}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->t0(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;)Lju/a;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    iget-object v5, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getFirstVideoDetail$1$1$detailDeferred$1;->$ugcVideoId:Ljava/lang/String;

    .line 37
    .line 38
    iget-object v6, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getFirstVideoDetail$1$1$detailDeferred$1;->$collectionId:Ljava/lang/String;

    .line 39
    .line 40
    iput v3, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getFirstVideoDetail$1$1$detailDeferred$1;->label:I

    .line 41
    .line 42
    const/4 v7, 0x0

    .line 43
    const/4 v9, 0x4

    .line 44
    const/4 v10, 0x0

    .line 45
    move-object v8, p0

    .line 46
    invoke-static/range {v4 .. v10}, Lju/a$a;->d(Lju/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    if-ne p1, v0, :cond_2

    .line 51
    .line 52
    return-object v0

    .line 53
    :cond_2
    :goto_0
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const-string v1, "0"

    .line 60
    .line 61
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_3

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_3
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    check-cast p1, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    .line 74
    move-object v2, p1

    .line 75
    goto :goto_2

    .line 76
    :goto_1
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 77
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    const-string v1, "getVideoDetail error:"

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    const/4 v7, 0x4

    .line 96
    const/4 v8, 0x0

    .line 97
    const-string v4, "UGCImmVideoDetailViewModel"

    .line 98
    .line 99
    const/4 v6, 0x0

    .line 100
    invoke-static/range {v3 .. v8}, Lwf/a$a;->l(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    :goto_2
    return-object v2
.end method
