.class final Lcom/transsnet/downloader/core/task/DownloadFileInfoTask$checkWithOkhttp$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/core/task/DownloadFileInfoTask;->d(Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsnet/downloader/core/task/a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsnet.downloader.core.task.DownloadFileInfoTask"
    f = "DownloadFileInfoTask.kt"
    l = {
        0x37,
        0x37,
        0x37
    }
    m = "checkWithOkhttp"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/transsnet/downloader/core/task/DownloadFileInfoTask;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/core/task/DownloadFileInfoTask;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsnet/downloader/core/task/DownloadFileInfoTask;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsnet/downloader/core/task/DownloadFileInfoTask$checkWithOkhttp$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/core/task/DownloadFileInfoTask$checkWithOkhttp$1;->this$0:Lcom/transsnet/downloader/core/task/DownloadFileInfoTask;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/core/task/DownloadFileInfoTask$checkWithOkhttp$1;->result:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lcom/transsnet/downloader/core/task/DownloadFileInfoTask$checkWithOkhttp$1;->label:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lcom/transsnet/downloader/core/task/DownloadFileInfoTask$checkWithOkhttp$1;->label:I

    .line 9
    .line 10
    iget-object p1, p0, Lcom/transsnet/downloader/core/task/DownloadFileInfoTask$checkWithOkhttp$1;->this$0:Lcom/transsnet/downloader/core/task/DownloadFileInfoTask;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-static {p1, v0, v0, p0}, Lcom/transsnet/downloader/core/task/DownloadFileInfoTask;->a(Lcom/transsnet/downloader/core/task/DownloadFileInfoTask;Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsnet/downloader/core/task/a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method
