.class final Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment$onDownload$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;->Q1()V
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
    c = "com.transsnet.downloader.fragment.DownloadReDetectorGroupMainFragment$onDownload$2"
    f = "DownloadReDetectorGroupMainFragment.kt"
    l = {
        0x36d
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment$onDownload$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment$onDownload$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;

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
    new-instance p1, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment$onDownload$2;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment$onDownload$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment$onDownload$2;-><init>(Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment$onDownload$2;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment$onDownload$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment$onDownload$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment$onDownload$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment$onDownload$2;->label:I

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
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment$onDownload$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;->c1(Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;)Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const/4 v1, 0x0

    .line 38
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_3

    .line 43
    .line 44
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    add-int/lit8 v4, v1, 0x1

    .line 49
    .line 50
    if-gez v1, :cond_2

    .line 51
    .line 52
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 53
    .line 54
    .line 55
    :cond_2
    check-cast v3, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 56
    .line 57
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->isMultiresolution()Z

    .line 58
    .line 59
    .line 60
    move-result v10

    .line 61
    sget-object v1, Lcom/transsnet/downloader/DownloadManagerApi;->j:Lcom/transsnet/downloader/DownloadManagerApi$a;

    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/transsnet/downloader/DownloadManagerApi$a;->a()Lcom/transsnet/downloader/DownloadManagerApi;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->isSeries()Z

    .line 76
    .line 77
    .line 78
    move-result v8

    .line 79
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getTotalEpisode()I

    .line 80
    .line 81
    .line 82
    move-result v9

    .line 83
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->isMultiresolution()Z

    .line 84
    .line 85
    .line 86
    move-result v11

    .line 87
    invoke-virtual/range {v5 .. v11}, Lcom/transsnet/downloader/DownloadManagerApi;->T(Ljava/lang/String;Ljava/lang/String;ZIZZ)V

    .line 88
    .line 89
    .line 90
    move v1, v4

    .line 91
    goto :goto_0

    .line 92
    :cond_3
    iget-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment$onDownload$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;

    .line 93
    .line 94
    invoke-static {p1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;->f1(Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    sget-object v1, Lcom/transsnet/downloader/api/DownloadPageType;->SERIES:Lcom/transsnet/downloader/api/DownloadPageType;

    .line 99
    .line 100
    invoke-virtual {v1}, Lcom/transsnet/downloader/api/DownloadPageType;->getPageName()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    if-eqz p1, :cond_4

    .line 109
    .line 110
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    new-instance v1, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment$onDownload$2$2;

    .line 115
    .line 116
    iget-object v3, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment$onDownload$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;

    .line 117
    .line 118
    const/4 v4, 0x0

    .line 119
    invoke-direct {v1, v3, v4}, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment$onDownload$2$2;-><init>(Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;Lkotlin/coroutines/Continuation;)V

    .line 120
    .line 121
    .line 122
    iput v2, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment$onDownload$2;->label:I

    .line 123
    .line 124
    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 132
    .line 133
    return-object p1
.end method
