.class final Lcom/transsnet/downloader/core/DownloadTaskImpl2$reDownload$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/core/DownloadTaskImpl2;->a(Lcom/transsnet/downloader/core/thread/f;ILcom/transsion/baselib/db/download/DownloadRange;)V
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
    c = "com.transsnet.downloader.core.DownloadTaskImpl2$reDownload$1"
    f = "DownloadTaskImpl2.kt"
    l = {
        0x1d6,
        0x1d8
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/transsnet/downloader/core/DownloadTaskImpl2;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/core/DownloadTaskImpl2;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsnet/downloader/core/DownloadTaskImpl2;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsnet/downloader/core/DownloadTaskImpl2$reDownload$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl2$reDownload$1;->this$0:Lcom/transsnet/downloader/core/DownloadTaskImpl2;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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
    new-instance p1, Lcom/transsnet/downloader/core/DownloadTaskImpl2$reDownload$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl2$reDownload$1;->this$0:Lcom/transsnet/downloader/core/DownloadTaskImpl2;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/transsnet/downloader/core/DownloadTaskImpl2$reDownload$1;-><init>(Lcom/transsnet/downloader/core/DownloadTaskImpl2;Lkotlin/coroutines/Continuation;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/core/DownloadTaskImpl2$reDownload$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/core/DownloadTaskImpl2$reDownload$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsnet/downloader/core/DownloadTaskImpl2$reDownload$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/core/DownloadTaskImpl2$reDownload$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl2$reDownload$1;->label:I

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
    goto :goto_0

    .line 31
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl2$reDownload$1;->this$0:Lcom/transsnet/downloader/core/DownloadTaskImpl2;

    .line 35
    .line 36
    invoke-static {p1}, Lcom/transsnet/downloader/core/DownloadTaskImpl2;->m(Lcom/transsnet/downloader/core/DownloadTaskImpl2;)Lui/n0;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iget-object v1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl2$reDownload$1;->this$0:Lcom/transsnet/downloader/core/DownloadTaskImpl2;

    .line 41
    .line 42
    invoke-static {v1}, Lcom/transsnet/downloader/core/DownloadTaskImpl2;->i(Lcom/transsnet/downloader/core/DownloadTaskImpl2;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    if-nez v1, :cond_3

    .line 51
    .line 52
    iget-object v1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl2$reDownload$1;->this$0:Lcom/transsnet/downloader/core/DownloadTaskImpl2;

    .line 53
    .line 54
    invoke-static {v1}, Lcom/transsnet/downloader/core/DownloadTaskImpl2;->i(Lcom/transsnet/downloader/core/DownloadTaskImpl2;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    :cond_3
    iput v3, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl2$reDownload$1;->label:I

    .line 63
    .line 64
    invoke-interface {p1, v1, p0}, Lui/n0;->b(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    if-ne p1, v0, :cond_4

    .line 69
    .line 70
    return-object v0

    .line 71
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl2$reDownload$1;->this$0:Lcom/transsnet/downloader/core/DownloadTaskImpl2;

    .line 72
    .line 73
    invoke-static {p1}, Lcom/transsnet/downloader/core/DownloadTaskImpl2;->i(Lcom/transsnet/downloader/core/DownloadTaskImpl2;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getDownloadRanges()Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 82
    .line 83
    .line 84
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    new-instance v1, Lcom/transsnet/downloader/core/DownloadTaskImpl2$reDownload$1$1;

    .line 89
    .line 90
    iget-object v3, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl2$reDownload$1;->this$0:Lcom/transsnet/downloader/core/DownloadTaskImpl2;

    .line 91
    .line 92
    const/4 v4, 0x0

    .line 93
    invoke-direct {v1, v3, v4}, Lcom/transsnet/downloader/core/DownloadTaskImpl2$reDownload$1$1;-><init>(Lcom/transsnet/downloader/core/DownloadTaskImpl2;Lkotlin/coroutines/Continuation;)V

    .line 94
    .line 95
    .line 96
    iput v2, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl2$reDownload$1;->label:I

    .line 97
    .line 98
    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    if-ne p1, v0, :cond_5

    .line 103
    .line 104
    return-object v0

    .line 105
    :cond_5
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 106
    .line 107
    return-object p1
.end method
