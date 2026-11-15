.class public final synthetic Lcom/transsnet/downloader/core/h;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsnet/downloader/core/thread/f;

.field public final synthetic b:Lcom/transsnet/downloader/core/DownloadTaskImpl2;

.field public final synthetic c:Lcom/transsion/baselib/db/download/DownloadRange;

.field public final synthetic d:Lcom/transsion/baselib/db/download/DownloadRange;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/downloader/core/thread/f;Lcom/transsnet/downloader/core/DownloadTaskImpl2;Lcom/transsion/baselib/db/download/DownloadRange;Lcom/transsion/baselib/db/download/DownloadRange;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsnet/downloader/core/h;->a:Lcom/transsnet/downloader/core/thread/f;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsnet/downloader/core/h;->b:Lcom/transsnet/downloader/core/DownloadTaskImpl2;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/transsnet/downloader/core/h;->c:Lcom/transsion/baselib/db/download/DownloadRange;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/transsnet/downloader/core/h;->d:Lcom/transsion/baselib/db/download/DownloadRange;

    .line 11
    .line 12
    iput p5, p0, Lcom/transsnet/downloader/core/h;->e:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/core/h;->a:Lcom/transsnet/downloader/core/thread/f;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsnet/downloader/core/h;->b:Lcom/transsnet/downloader/core/DownloadTaskImpl2;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsnet/downloader/core/h;->c:Lcom/transsion/baselib/db/download/DownloadRange;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsnet/downloader/core/h;->d:Lcom/transsion/baselib/db/download/DownloadRange;

    .line 8
    .line 9
    iget v4, p0, Lcom/transsnet/downloader/core/h;->e:I

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, v4}, Lcom/transsnet/downloader/core/DownloadTaskImpl2$c;->b(Lcom/transsnet/downloader/core/thread/f;Lcom/transsnet/downloader/core/DownloadTaskImpl2;Lcom/transsion/baselib/db/download/DownloadRange;Lcom/transsion/baselib/db/download/DownloadRange;I)Lkotlin/Unit;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method
