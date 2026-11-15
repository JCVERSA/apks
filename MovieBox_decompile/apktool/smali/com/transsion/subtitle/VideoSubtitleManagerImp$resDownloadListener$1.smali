.class public final Lcom/transsion/subtitle/VideoSubtitleManagerImp$resDownloadListener$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lui/s0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/subtitle/VideoSubtitleManagerImp;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/subtitle/VideoSubtitleManagerImp;


# direct methods
.method constructor <init>(Lcom/transsion/subtitle/VideoSubtitleManagerImp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$resDownloadListener$1;->a:Lcom/transsion/subtitle/VideoSubtitleManagerImp;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final synthetic d(Lcom/transsion/subtitle/VideoSubtitleManagerImp$resDownloadListener$1;Ljava/util/List;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/subtitle/VideoSubtitleManagerImp$resDownloadListener$1;->f(Ljava/util/List;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private final e(Lcom/transsion/baselib/db/download/DownloadBean;Z)V
    .locals 8

    .line 1
    invoke-static {}, Lkotlinx/coroutines/y0;->a()Lkotlinx/coroutines/i0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1;

    .line 10
    .line 11
    iget-object v3, p0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$resDownloadListener$1;->a:Lcom/transsion/subtitle/VideoSubtitleManagerImp;

    .line 12
    .line 13
    const/4 v7, 0x0

    .line 14
    move-object v2, v0

    .line 15
    move-object v4, p1

    .line 16
    move v5, p2

    .line 17
    move-object v6, p0

    .line 18
    invoke-direct/range {v2 .. v7}, Lcom/transsion/subtitle/VideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1;-><init>(Lcom/transsion/subtitle/VideoSubtitleManagerImp;Lcom/transsion/baselib/db/download/DownloadBean;ZLcom/transsion/subtitle/VideoSubtitleManagerImp$resDownloadListener$1;Lkotlin/coroutines/Continuation;)V

    .line 19
    .line 20
    .line 21
    const/4 v5, 0x3

    .line 22
    const/4 v6, 0x0

    .line 23
    const/4 v2, 0x0

    .line 24
    const/4 v3, 0x0

    .line 25
    move-object v4, v0

    .line 26
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private final f(Ljava/util/List;)Z
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Iterable;

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lht/a;

    .line 18
    .line 19
    invoke-virtual {v0}, Lht/a;->d()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getStatus()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/4 v1, 0x6

    .line 34
    if-ne v0, v1, :cond_0

    .line 35
    .line 36
    const/4 p1, 0x1

    .line 37
    return p1

    .line 38
    :cond_1
    const/4 p1, 0x0

    .line 39
    return p1
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string v0, "subtitleResId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lkotlinx/coroutines/y0;->a()Lkotlinx/coroutines/i0;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    new-instance v4, Lcom/transsion/subtitle/VideoSubtitleManagerImp$resDownloadListener$1$deleteSubtitle$1;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-direct {v4, p1, v0}, Lcom/transsion/subtitle/VideoSubtitleManagerImp$resDownloadListener$1$deleteSubtitle$1;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 18
    .line 19
    .line 20
    const/4 v5, 0x3

    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v2, 0x0

    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public b(Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 1

    .line 1
    const-string v0, "bean"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-direct {p0, p1, v0}, Lcom/transsion/subtitle/VideoSubtitleManagerImp$resDownloadListener$1;->e(Lcom/transsion/baselib/db/download/DownloadBean;Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public c(Lcom/transsion/baselib/db/download/DownloadBean;Z)V
    .locals 7

    .line 1
    const-string v0, "bean"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 7
    .line 8
    sget-object v1, Lcom/transsion/baselib/report/a;->a:Lcom/transsion/baselib/report/a;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/transsion/baselib/report/a;->a()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$resDownloadListener$1;->a:Lcom/transsion/subtitle/VideoSubtitleManagerImp;

    .line 15
    .line 16
    invoke-static {v2}, Lcom/transsion/subtitle/VideoSubtitleManagerImp;->p(Lcom/transsion/subtitle/VideoSubtitleManagerImp;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getTitleName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getEp()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSe()I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    new-instance v6, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v2, " \u5f00\u59cb\u4e0b\u8f7d\uff0c\u68c0\u6d4b\u5b57\u5e55 firstDownload:"

    .line 41
    .line 42
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v2, "\uff0ctitleName:"

    .line 49
    .line 50
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v2, ", ep:"

    .line 57
    .line 58
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v2, " se:"

    .line 65
    .line 66
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    const/4 v3, 0x1

    .line 77
    invoke-virtual {v0, v1, v2, v3}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 78
    .line 79
    .line 80
    if-eqz p2, :cond_0

    .line 81
    .line 82
    iget-object p2, p0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$resDownloadListener$1;->a:Lcom/transsion/subtitle/VideoSubtitleManagerImp;

    .line 83
    .line 84
    const/4 v0, 0x2

    .line 85
    const/4 v1, 0x0

    .line 86
    invoke-static {p2, p1, v1, v0, v1}, Lcom/transsion/subtitle/VideoSubtitleManagerImp;->t(Lcom/transsion/subtitle/VideoSubtitleManagerImp;Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :cond_0
    const/4 p2, 0x0

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/transsion/subtitle/VideoSubtitleManagerImp$resDownloadListener$1;->e(Lcom/transsion/baselib/db/download/DownloadBean;Z)V

    .line 92
    .line 93
    .line 94
    return-void
.end method
