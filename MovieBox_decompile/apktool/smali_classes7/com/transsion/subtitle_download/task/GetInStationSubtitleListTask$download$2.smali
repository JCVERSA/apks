.class final Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;->h(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
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
    c = "com.transsion.subtitle_download.task.GetInStationSubtitleListTask$download$2"
    f = "GetInStationSubtitleListTask.kt"
    l = {
        0xb4
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $dbBean:Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

.field label:I


# direct methods
.method constructor <init>(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$2;->$dbBean:Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

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
    new-instance p1, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$2;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$2;->$dbBean:Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$2;-><init>(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$2;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$2;->label:I

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
    sget-object p1, Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase;->p:Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase$d;

    .line 28
    .line 29
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const-string v3, "getApp(...)"

    .line 34
    .line 35
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase$d;->b(Landroid/content/Context;)Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase;->l0()Lqt/a;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    iget-object v4, p0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$2;->$dbBean:Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 47
    .line 48
    invoke-virtual {v4}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    iget-object v5, p0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$2;->$dbBean:Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 53
    .line 54
    invoke-virtual {v5}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getResourceStreamType()I

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    invoke-interface {v1, v4, v5}, Lqt/a;->c(Ljava/lang/String;I)Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    if-nez v1, :cond_3

    .line 63
    .line 64
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase$d;->b(Landroid/content/Context;)Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase;->l0()Lqt/a;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    iget-object v1, p0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$2;->$dbBean:Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 80
    .line 81
    iput v2, p0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$2;->label:I

    .line 82
    .line 83
    invoke-interface {p1, v1, p0}, Lqt/a;->e(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    if-ne p1, v0, :cond_2

    .line 88
    .line 89
    return-object v0

    .line 90
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$2;->$dbBean:Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_3
    iget-object p1, p0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$2;->$dbBean:Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->isSetImmediately()Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    invoke-virtual {v1, p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->setSetImmediately(Z)V

    .line 100
    .line 101
    .line 102
    :goto_1
    sget-object p1, Lcom/transsion/subtitle_download/task/p;->a:Lcom/transsion/subtitle_download/task/p;

    .line 103
    .line 104
    invoke-virtual {p1, v1, v2}, Lcom/transsion/subtitle_download/task/p;->d(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;Z)V

    .line 105
    .line 106
    .line 107
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 108
    .line 109
    return-object p1
.end method
