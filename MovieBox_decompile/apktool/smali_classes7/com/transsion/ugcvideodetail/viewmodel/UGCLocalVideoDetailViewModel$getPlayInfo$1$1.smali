.class final Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel$getPlayInfo$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel$getPlayInfo$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Lcom/transsion/baselib/db/download/DownloadBean;",
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
    c = "com.transsion.ugcvideodetail.viewmodel.UGCLocalVideoDetailViewModel$getPlayInfo$1$1"
    f = "UGCLocalVideoDetailViewModel.kt"
    l = {
        0x36,
        0x38,
        0x3d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $resourceId:Ljava/lang/String;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel$getPlayInfo$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel$getPlayInfo$1$1;->$resourceId:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel$getPlayInfo$1$1;->this$0:Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel;

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
    new-instance v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel$getPlayInfo$1$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel$getPlayInfo$1$1;->$resourceId:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel$getPlayInfo$1$1;->this$0:Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, p2}, Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel$getPlayInfo$1$1;-><init>(Ljava/lang/String;Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel;Lkotlin/coroutines/Continuation;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel$getPlayInfo$1$1;->L$0:Ljava/lang/Object;

    .line 11
    .line 12
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/flow/b;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel$getPlayInfo$1$1;->invoke(Lkotlinx/coroutines/flow/b;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel$getPlayInfo$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel$getPlayInfo$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel$getPlayInfo$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel$getPlayInfo$1$1;->label:I

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
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    goto/16 :goto_2

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
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel$getPlayInfo$1$1;->L$1:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v1, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 34
    .line 35
    iget-object v3, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel$getPlayInfo$1$1;->L$0:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v3, Lkotlinx/coroutines/flow/b;

    .line 38
    .line 39
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel$getPlayInfo$1$1;->L$0:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v1, Lkotlinx/coroutines/flow/b;

    .line 46
    .line 47
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel$getPlayInfo$1$1;->L$0:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast p1, Lkotlinx/coroutines/flow/b;

    .line 57
    .line 58
    sget-object v1, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    iget-object v5, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel$getPlayInfo$1$1;->$resourceId:Ljava/lang/String;

    .line 65
    .line 66
    iput-object p1, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel$getPlayInfo$1$1;->L$0:Ljava/lang/Object;

    .line 67
    .line 68
    iput v4, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel$getPlayInfo$1$1;->label:I

    .line 69
    .line 70
    invoke-virtual {v1, v5, p0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->p(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    if-ne v1, v0, :cond_4

    .line 75
    .line 76
    return-object v0

    .line 77
    :cond_4
    move-object v6, v1

    .line 78
    move-object v1, p1

    .line 79
    move-object p1, v6

    .line 80
    :goto_0
    check-cast p1, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 81
    .line 82
    if-eqz p1, :cond_7

    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoId()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    if-eqz v4, :cond_7

    .line 89
    .line 90
    iget-object v5, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel$getPlayInfo$1$1;->this$0:Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel;

    .line 91
    .line 92
    invoke-static {v5}, Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel;->c(Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel;)Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    iput-object v1, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel$getPlayInfo$1$1;->L$0:Ljava/lang/Object;

    .line 97
    .line 98
    iput-object p1, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel$getPlayInfo$1$1;->L$1:Ljava/lang/Object;

    .line 99
    .line 100
    iput v3, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel$getPlayInfo$1$1;->label:I

    .line 101
    .line 102
    invoke-interface {v5, v4, p0}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;->r(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    if-ne v3, v0, :cond_5

    .line 107
    .line 108
    return-object v0

    .line 109
    :cond_5
    move-object v6, v1

    .line 110
    move-object v1, p1

    .line 111
    move-object p1, v3

    .line 112
    move-object v3, v6

    .line 113
    :goto_1
    check-cast p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 114
    .line 115
    if-eqz p1, :cond_6

    .line 116
    .line 117
    invoke-virtual {p1}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getProgress()J

    .line 118
    .line 119
    .line 120
    move-result-wide v4

    .line 121
    invoke-virtual {v1, v4, v5}, Lcom/transsion/baselib/db/download/DownloadBean;->setReadProgress(J)V

    .line 122
    .line 123
    .line 124
    :cond_6
    move-object p1, v1

    .line 125
    move-object v1, v3

    .line 126
    :cond_7
    const/4 v3, 0x0

    .line 127
    iput-object v3, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel$getPlayInfo$1$1;->L$0:Ljava/lang/Object;

    .line 128
    .line 129
    iput-object v3, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel$getPlayInfo$1$1;->L$1:Ljava/lang/Object;

    .line 130
    .line 131
    iput v2, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel$getPlayInfo$1$1;->label:I

    .line 132
    .line 133
    invoke-interface {v1, p1, p0}, Lkotlinx/coroutines/flow/b;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    if-ne p1, v0, :cond_8

    .line 138
    .line 139
    return-object v0

    .line 140
    :cond_8
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 141
    .line 142
    return-object p1
.end method
