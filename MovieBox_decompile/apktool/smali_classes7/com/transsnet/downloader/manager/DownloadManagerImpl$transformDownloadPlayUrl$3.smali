.class final Lcom/transsnet/downloader/manager/DownloadManagerImpl$transformDownloadPlayUrl$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/manager/DownloadManagerImpl;->a(Ljava/lang/String;ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lkotlinx/coroutines/n0;",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/n0;)Ljava/lang/String;"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsnet.downloader.manager.DownloadManagerImpl$transformDownloadPlayUrl$3"
    f = "DownloadManagerImpl.kt"
    l = {
        0x63e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $ep:I

.field final synthetic $subjectId:Ljava/lang/String;

.field final synthetic $url:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/transsnet/downloader/manager/DownloadManagerImpl;


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/transsnet/downloader/manager/DownloadManagerImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/transsnet/downloader/manager/DownloadManagerImpl;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsnet/downloader/manager/DownloadManagerImpl$transformDownloadPlayUrl$3;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$transformDownloadPlayUrl$3;->$subjectId:Ljava/lang/String;

    .line 2
    .line 3
    iput p2, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$transformDownloadPlayUrl$3;->$ep:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$transformDownloadPlayUrl$3;->$url:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$transformDownloadPlayUrl$3;->this$0:Lcom/transsnet/downloader/manager/DownloadManagerImpl;

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
    new-instance p1, Lcom/transsnet/downloader/manager/DownloadManagerImpl$transformDownloadPlayUrl$3;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$transformDownloadPlayUrl$3;->$subjectId:Ljava/lang/String;

    .line 4
    .line 5
    iget v2, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$transformDownloadPlayUrl$3;->$ep:I

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$transformDownloadPlayUrl$3;->$url:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$transformDownloadPlayUrl$3;->this$0:Lcom/transsnet/downloader/manager/DownloadManagerImpl;

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/transsnet/downloader/manager/DownloadManagerImpl$transformDownloadPlayUrl$3;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/transsnet/downloader/manager/DownloadManagerImpl;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/manager/DownloadManagerImpl$transformDownloadPlayUrl$3;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/manager/DownloadManagerImpl$transformDownloadPlayUrl$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsnet/downloader/manager/DownloadManagerImpl$transformDownloadPlayUrl$3;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/manager/DownloadManagerImpl$transformDownloadPlayUrl$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$transformDownloadPlayUrl$3;->label:I

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
    goto :goto_0

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
    sget-object p1, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iget-object v3, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$transformDownloadPlayUrl$3;->$subjectId:Ljava/lang/String;

    .line 34
    .line 35
    iget v4, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$transformDownloadPlayUrl$3;->$ep:I

    .line 36
    .line 37
    invoke-virtual {v1, v3, v4}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->x(Ljava/lang/String;I)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    if-nez v1, :cond_3

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iget-object v1, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$transformDownloadPlayUrl$3;->$subjectId:Ljava/lang/String;

    .line 48
    .line 49
    iget v3, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$transformDownloadPlayUrl$3;->$ep:I

    .line 50
    .line 51
    iput v2, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$transformDownloadPlayUrl$3;->label:I

    .line 52
    .line 53
    invoke-virtual {p1, v1, v3, p0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->w(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    if-ne p1, v0, :cond_2

    .line 58
    .line 59
    return-object v0

    .line 60
    :cond_2
    :goto_0
    move-object v1, p1

    .line 61
    check-cast v1, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 62
    .line 63
    :cond_3
    if-nez v1, :cond_4

    .line 64
    .line 65
    iget-object p1, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$transformDownloadPlayUrl$3;->$url:Ljava/lang/String;

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_4
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->isCompleted()Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-eqz p1, :cond_7

    .line 73
    .line 74
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    if-eqz p1, :cond_6

    .line 79
    .line 80
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-nez p1, :cond_5

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_5
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    goto :goto_2

    .line 92
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$transformDownloadPlayUrl$3;->$url:Ljava/lang/String;

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_7
    iget-object p1, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$transformDownloadPlayUrl$3;->this$0:Lcom/transsnet/downloader/manager/DownloadManagerImpl;

    .line 96
    .line 97
    invoke-virtual {p1, v1}, Lcom/transsnet/downloader/manager/DownloadManagerImpl;->l(Lcom/transsion/baselib/db/download/DownloadBean;)V

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$transformDownloadPlayUrl$3;->$url:Ljava/lang/String;

    .line 101
    .line 102
    :goto_2
    return-object p1
.end method
