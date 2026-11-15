.class final Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1$4;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlinx/coroutines/flow/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1$4;->a:Ljava/util/List;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/transsnet/downloader/bean/StartResponseBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of p1, p2, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1$4$emit$1;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    move-object p1, p2

    .line 6
    check-cast p1, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1$4$emit$1;

    .line 7
    .line 8
    iget v0, p1, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1$4$emit$1;->label:I

    .line 9
    .line 10
    const/high16 v1, -0x80000000

    .line 11
    .line 12
    and-int v2, v0, v1

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    sub-int/2addr v0, v1

    .line 17
    iput v0, p1, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1$4$emit$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance p1, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1$4$emit$1;

    .line 21
    .line 22
    invoke-direct {p1, p0, p2}, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1$4$emit$1;-><init>(Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1$4;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, p1, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1$4$emit$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget v1, p1, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1$4$emit$1;->label:I

    .line 32
    .line 33
    const/4 v2, 0x1

    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    if-ne v1, v2, :cond_1

    .line 37
    .line 38
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 43
    .line 44
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 45
    .line 46
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    sget-object p2, Lcom/transsnet/downloader/manager/f;->a:Lcom/transsnet/downloader/manager/f$a;

    .line 54
    .line 55
    invoke-virtual {p2}, Lcom/transsnet/downloader/manager/f$a;->a()Lcom/transsnet/downloader/manager/f;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-virtual {p2}, Lcom/transsnet/downloader/manager/f;->g()V

    .line 60
    .line 61
    .line 62
    iget-object p2, p0, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1$4;->a:Ljava/util/List;

    .line 63
    .line 64
    if-eqz p2, :cond_4

    .line 65
    .line 66
    check-cast p2, Ljava/lang/Iterable;

    .line 67
    .line 68
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_4

    .line 77
    .line 78
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    check-cast v1, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 83
    .line 84
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->isStartRequested()Z

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    if-eqz v3, :cond_3

    .line 89
    .line 90
    invoke-virtual {v1, v2}, Lcom/transsion/baselib/db/download/DownloadBean;->setSubtitleStarted(I)V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_4
    iput v2, p1, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1$4$emit$1;->label:I

    .line 95
    .line 96
    const-wide/16 v1, 0xbb8

    .line 97
    .line 98
    invoke-static {v1, v2, p1}, Lkotlinx/coroutines/u0;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    :goto_2
    sget-object p1, Lcom/transsnet/downloader/manager/f;->a:Lcom/transsnet/downloader/manager/f$a;

    .line 106
    .line 107
    invoke-virtual {p1}, Lcom/transsnet/downloader/manager/f$a;->a()Lcom/transsnet/downloader/manager/f;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {p1}, Lcom/transsnet/downloader/manager/f;->h()V

    .line 112
    .line 113
    .line 114
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 115
    .line 116
    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/transsnet/downloader/bean/StartResponseBean;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1$4;->a(Lcom/transsnet/downloader/bean/StartResponseBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
