.class public final Lcom/transsnet/downloader/proxy/DownloadFileCache$a;
.super Lzw/d;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/proxy/DownloadFileCache;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsnet/downloader/proxy/DownloadFileCache;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/proxy/DownloadFileCache;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache$a;->a:Lcom/transsnet/downloader/proxy/DownloadFileCache;

    .line 2
    .line 3
    invoke-direct {p0}, Lzw/d;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public h(Lcom/transsion/baselib/db/download/DownloadBean;I)V
    .locals 2

    .line 1
    const-string p2, "bean"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache$a;->a:Lcom/transsnet/downloader/proxy/DownloadFileCache;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/transsnet/downloader/proxy/DownloadFileCache;->c(Lcom/transsnet/downloader/proxy/DownloadFileCache;)Lcom/transsion/baselib/db/download/DownloadRange;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache$a;->a:Lcom/transsnet/downloader/proxy/DownloadFileCache;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/transsnet/downloader/proxy/DownloadFileCache;->d(Lcom/transsnet/downloader/proxy/DownloadFileCache;)Lcom/danikula/videocache/m;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/danikula/videocache/m;->b()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    const/4 p2, 0x1

    .line 28
    if-ne p1, p2, :cond_1

    .line 29
    .line 30
    iget-object p1, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache$a;->a:Lcom/transsnet/downloader/proxy/DownloadFileCache;

    .line 31
    .line 32
    invoke-static {p1}, Lcom/transsnet/downloader/proxy/DownloadFileCache;->b(Lcom/transsnet/downloader/proxy/DownloadFileCache;)J

    .line 33
    .line 34
    .line 35
    move-result-wide p1

    .line 36
    const/16 v0, 0x2000

    .line 37
    .line 38
    int-to-long v0, v0

    .line 39
    add-long/2addr p1, v0

    .line 40
    iget-object v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache$a;->a:Lcom/transsnet/downloader/proxy/DownloadFileCache;

    .line 41
    .line 42
    invoke-static {v0}, Lcom/transsnet/downloader/proxy/DownloadFileCache;->c(Lcom/transsnet/downloader/proxy/DownloadFileCache;)Lcom/transsion/baselib/db/download/DownloadRange;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadRange;->totalProgress()J

    .line 50
    .line 51
    .line 52
    move-result-wide v0

    .line 53
    cmp-long p1, p1, v0

    .line 54
    .line 55
    if-gtz p1, :cond_1

    .line 56
    .line 57
    iget-object p1, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache$a;->a:Lcom/transsnet/downloader/proxy/DownloadFileCache;

    .line 58
    .line 59
    invoke-static {p1}, Lcom/transsnet/downloader/proxy/DownloadFileCache;->d(Lcom/transsnet/downloader/proxy/DownloadFileCache;)Lcom/danikula/videocache/m;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    if-eqz p1, :cond_1

    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/danikula/videocache/m;->c()V

    .line 66
    .line 67
    .line 68
    :cond_1
    return-void
.end method
