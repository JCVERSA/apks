.class public final Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$resDownloadListener$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lur/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$resDownloadListener$1;->a:Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final synthetic d(Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$resDownloadListener$1;Ljava/util/List;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$resDownloadListener$1;->f(Ljava/util/List;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private final e(Lxr/a;Z)V
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
    new-instance v0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1;

    .line 10
    .line 11
    iget-object v3, p0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$resDownloadListener$1;->a:Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;

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
    invoke-direct/range {v2 .. v7}, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1;-><init>(Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;Lxr/a;ZLcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$resDownloadListener$1;Lkotlin/coroutines/Continuation;)V

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
    check-cast v0, Lxr/b;

    .line 18
    .line 19
    invoke-virtual {v0}, Lxr/b;->b()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0}, Lxr/b;->a()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

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
    new-instance v4, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$resDownloadListener$1$deleteSubtitle$1;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-direct {v4, p1, v0}, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$resDownloadListener$1$deleteSubtitle$1;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

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

.method public b(Lxr/a;)V
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
    invoke-direct {p0, p1, v0}, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$resDownloadListener$1;->e(Lxr/a;Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public c(Lxr/a;Z)V
    .locals 6

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
    iget-object v1, p0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$resDownloadListener$1;->a:Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;->k(Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {p1}, Lxr/a;->h()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {p1}, Lxr/a;->a()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    invoke-virtual {p1}, Lxr/a;->c()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    new-instance v5, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v1, " \u5f00\u59cb\u4e0b\u8f7d\uff0c\u68c0\u6d4b\u5b57\u5e55 firstDownload:"

    .line 35
    .line 36
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v1, "\uff0ctitleName:"

    .line 43
    .line 44
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v1, ", ep:"

    .line 51
    .line 52
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v1, " se:"

    .line 59
    .line 60
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    const/4 v2, 0x1

    .line 71
    const-string v3, "short_tv_subtitle"

    .line 72
    .line 73
    invoke-virtual {v0, v3, v1, v2}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 74
    .line 75
    .line 76
    if-eqz p2, :cond_0

    .line 77
    .line 78
    iget-object p2, p0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$resDownloadListener$1;->a:Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;

    .line 79
    .line 80
    const/4 v0, 0x2

    .line 81
    const/4 v1, 0x0

    .line 82
    invoke-static {p2, p1, v1, v0, v1}, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;->n(Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;Lxr/a;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_0
    const/4 p2, 0x0

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$resDownloadListener$1;->e(Lxr/a;Z)V

    .line 88
    .line 89
    .line 90
    return-void
.end method
