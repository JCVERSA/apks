.class final Lcom/transsnet/downloader/util/DownloadTransferUtils$getTransferDataList$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/util/DownloadTransferUtils;->e(Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
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
    c = "com.transsnet.downloader.util.DownloadTransferUtils$getTransferDataList$2$1"
    f = "DownloadTransferUtils.kt"
    l = {
        0x52
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $callback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "Lcom/transsion/transfer/impl/entity/FileData;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $coverWidth:I

.field final synthetic $pathMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $selectedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/baselib/db/download/DownloadBean;",
            ">;"
        }
    .end annotation
.end field

.field label:I


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/Map;ILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/baselib/db/download/DownloadBean;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Lcom/transsion/transfer/impl/entity/FileData;",
            ">;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsnet/downloader/util/DownloadTransferUtils$getTransferDataList$2$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/util/DownloadTransferUtils$getTransferDataList$2$1;->$selectedList:Ljava/util/List;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsnet/downloader/util/DownloadTransferUtils$getTransferDataList$2$1;->$pathMap:Ljava/util/Map;

    .line 4
    .line 5
    iput p3, p0, Lcom/transsnet/downloader/util/DownloadTransferUtils$getTransferDataList$2$1;->$coverWidth:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsnet/downloader/util/DownloadTransferUtils$getTransferDataList$2$1;->$callback:Lkotlin/jvm/functions/Function1;

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
    .locals 6
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
    new-instance p1, Lcom/transsnet/downloader/util/DownloadTransferUtils$getTransferDataList$2$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsnet/downloader/util/DownloadTransferUtils$getTransferDataList$2$1;->$selectedList:Ljava/util/List;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsnet/downloader/util/DownloadTransferUtils$getTransferDataList$2$1;->$pathMap:Ljava/util/Map;

    .line 6
    .line 7
    iget v3, p0, Lcom/transsnet/downloader/util/DownloadTransferUtils$getTransferDataList$2$1;->$coverWidth:I

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsnet/downloader/util/DownloadTransferUtils$getTransferDataList$2$1;->$callback:Lkotlin/jvm/functions/Function1;

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/transsnet/downloader/util/DownloadTransferUtils$getTransferDataList$2$1;-><init>(Ljava/util/List;Ljava/util/Map;ILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/util/DownloadTransferUtils$getTransferDataList$2$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/util/DownloadTransferUtils$getTransferDataList$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsnet/downloader/util/DownloadTransferUtils$getTransferDataList$2$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/util/DownloadTransferUtils$getTransferDataList$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/transsnet/downloader/util/DownloadTransferUtils$getTransferDataList$2$1;->label:I

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
    goto/16 :goto_2

    .line 16
    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 18
    .line 19
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 20
    .line 21
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1

    .line 25
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    new-instance p1, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/transsnet/downloader/util/DownloadTransferUtils$getTransferDataList$2$1;->$selectedList:Ljava/util/List;

    .line 34
    .line 35
    check-cast v1, Ljava/lang/Iterable;

    .line 36
    .line 37
    iget-object v3, p0, Lcom/transsnet/downloader/util/DownloadTransferUtils$getTransferDataList$2$1;->$pathMap:Ljava/util/Map;

    .line 38
    .line 39
    iget v4, p0, Lcom/transsnet/downloader/util/DownloadTransferUtils$getTransferDataList$2$1;->$coverWidth:I

    .line 40
    .line 41
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    if-eqz v5, :cond_5

    .line 50
    .line 51
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    check-cast v5, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 56
    .line 57
    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->isSeriesCollection()Z

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    if-ne v6, v2, :cond_4

    .line 62
    .line 63
    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getSeriesList()Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    check-cast v6, Ljava/lang/Iterable;

    .line 68
    .line 69
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result v7

    .line 77
    if-eqz v7, :cond_2

    .line 78
    .line 79
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    check-cast v7, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 84
    .line 85
    invoke-virtual {v7}, Lcom/transsion/baselib/db/download/DownloadBean;->isCheck()Z

    .line 86
    .line 87
    .line 88
    move-result v8

    .line 89
    if-eqz v8, :cond_3

    .line 90
    .line 91
    sget-object v8, Lcom/transsnet/downloader/util/DownloadTransferUtils;->a:Lcom/transsnet/downloader/util/DownloadTransferUtils;

    .line 92
    .line 93
    invoke-static {v8, v3, v4, v5}, Lcom/transsnet/downloader/util/DownloadTransferUtils;->b(Lcom/transsnet/downloader/util/DownloadTransferUtils;Ljava/util/Map;ILcom/transsion/baselib/db/download/DownloadBean;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v9

    .line 97
    invoke-static {v8, v9, v7}, Lcom/transsnet/downloader/util/DownloadTransferUtils;->c(Lcom/transsnet/downloader/util/DownloadTransferUtils;Ljava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;)Lcom/transsion/transfer/impl/entity/FileData;

    .line 98
    .line 99
    .line 100
    move-result-object v7

    .line 101
    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_4
    sget-object v6, Lcom/transsnet/downloader/util/DownloadTransferUtils;->a:Lcom/transsnet/downloader/util/DownloadTransferUtils;

    .line 106
    .line 107
    invoke-static {v6, v3, v4, v5}, Lcom/transsnet/downloader/util/DownloadTransferUtils;->b(Lcom/transsnet/downloader/util/DownloadTransferUtils;Ljava/util/Map;ILcom/transsion/baselib/db/download/DownloadBean;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v7

    .line 111
    invoke-static {v6, v7, v5}, Lcom/transsnet/downloader/util/DownloadTransferUtils;->c(Lcom/transsnet/downloader/util/DownloadTransferUtils;Ljava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;)Lcom/transsion/transfer/impl/entity/FileData;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v5

    .line 119
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_5
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    new-instance v3, Lcom/transsnet/downloader/util/DownloadTransferUtils$getTransferDataList$2$1$2;

    .line 128
    .line 129
    iget-object v4, p0, Lcom/transsnet/downloader/util/DownloadTransferUtils$getTransferDataList$2$1;->$callback:Lkotlin/jvm/functions/Function1;

    .line 130
    .line 131
    const/4 v5, 0x0

    .line 132
    invoke-direct {v3, v4, p1, v5}, Lcom/transsnet/downloader/util/DownloadTransferUtils$getTransferDataList$2$1$2;-><init>(Lkotlin/jvm/functions/Function1;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    .line 133
    .line 134
    .line 135
    iput v2, p0, Lcom/transsnet/downloader/util/DownloadTransferUtils$getTransferDataList$2$1;->label:I

    .line 136
    .line 137
    invoke-static {v1, v3, p0}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    if-ne p1, v0, :cond_6

    .line 142
    .line 143
    return-object v0

    .line 144
    :cond_6
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 145
    .line 146
    return-object p1
.end method
