.class final Lcom/transsnet/downloader/viewmodel/DownloadListManager$getShortTVList$1$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlinx/coroutines/flow/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/viewmodel/DownloadListManager$getShortTVList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Landroidx/lifecycle/b0;


# direct methods
.method constructor <init>(Ljava/lang/String;IILandroidx/lifecycle/b0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getShortTVList$1$a;->a:Ljava/lang/String;

    .line 2
    .line 3
    iput p2, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getShortTVList$1$a;->b:I

    .line 4
    .line 5
    iput p3, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getShortTVList$1$a;->c:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getShortTVList$1$a;->d:Landroidx/lifecycle/b0;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(Lcom/transsnet/downloader/bean/DownloadListBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    .line 1
    const/4 p2, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/DownloadListBean;->getTitle()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object v0, p2

    .line 10
    :goto_0
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_2

    .line 17
    .line 18
    :cond_1
    if-eqz p1, :cond_2

    .line 19
    .line 20
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getShortTVList$1$a;->a:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lcom/transsnet/downloader/bean/DownloadListBean;->setTitle(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_2
    if-eqz p1, :cond_3

    .line 26
    .line 27
    iget v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getShortTVList$1$a;->b:I

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Lcom/transsnet/downloader/bean/DownloadListBean;->setEndPosition(I)V

    .line 30
    .line 31
    .line 32
    :cond_3
    if-eqz p1, :cond_4

    .line 33
    .line 34
    iget v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getShortTVList$1$a;->c:I

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Lcom/transsnet/downloader/bean/DownloadListBean;->setStartPosition(I)V

    .line 37
    .line 38
    .line 39
    :cond_4
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 40
    .line 41
    if-eqz p1, :cond_5

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/DownloadListBean;->getItems()Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-eqz v0, :cond_5

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string v2, "getBottomList, on get data , size= "

    .line 63
    .line 64
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    const/4 v5, 0x4

    .line 75
    const/4 v6, 0x0

    .line 76
    const-string v2, "DownloadReDetector"

    .line 77
    .line 78
    const/4 v4, 0x0

    .line 79
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    iget-object p2, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getShortTVList$1$a;->d:Landroidx/lifecycle/b0;

    .line 83
    .line 84
    if-eqz p2, :cond_6

    .line 85
    .line 86
    invoke-virtual {p2, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    :cond_6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 90
    .line 91
    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/transsnet/downloader/bean/DownloadListBean;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getShortTVList$1$a;->a(Lcom/transsnet/downloader/bean/DownloadListBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
