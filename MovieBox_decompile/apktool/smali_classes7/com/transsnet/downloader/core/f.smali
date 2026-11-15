.class public final synthetic Lcom/transsnet/downloader/core/f;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsnet/downloader/core/thread/f;

.field public final synthetic b:Lcom/transsnet/downloader/core/DownloadTaskImpl;

.field public final synthetic c:Lcom/transsion/baselib/db/download/DownloadRange;

.field public final synthetic d:I

.field public final synthetic e:Lax/b;

.field public final synthetic f:Lcom/transsion/baselib/db/download/DownloadBean;

.field public final synthetic g:Lcom/transsion/baselib/db/download/DownloadRange;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/downloader/core/thread/f;Lcom/transsnet/downloader/core/DownloadTaskImpl;Lcom/transsion/baselib/db/download/DownloadRange;ILax/b;Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsion/baselib/db/download/DownloadRange;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsnet/downloader/core/f;->a:Lcom/transsnet/downloader/core/thread/f;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsnet/downloader/core/f;->b:Lcom/transsnet/downloader/core/DownloadTaskImpl;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/transsnet/downloader/core/f;->c:Lcom/transsion/baselib/db/download/DownloadRange;

    .line 9
    .line 10
    iput p4, p0, Lcom/transsnet/downloader/core/f;->d:I

    .line 11
    .line 12
    iput-object p5, p0, Lcom/transsnet/downloader/core/f;->e:Lax/b;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/transsnet/downloader/core/f;->f:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/transsnet/downloader/core/f;->g:Lcom/transsion/baselib/db/download/DownloadRange;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/core/f;->a:Lcom/transsnet/downloader/core/thread/f;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsnet/downloader/core/f;->b:Lcom/transsnet/downloader/core/DownloadTaskImpl;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsnet/downloader/core/f;->c:Lcom/transsion/baselib/db/download/DownloadRange;

    .line 6
    .line 7
    iget v3, p0, Lcom/transsnet/downloader/core/f;->d:I

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsnet/downloader/core/f;->e:Lax/b;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/transsnet/downloader/core/f;->f:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 12
    .line 13
    iget-object v6, p0, Lcom/transsnet/downloader/core/f;->g:Lcom/transsion/baselib/db/download/DownloadRange;

    .line 14
    .line 15
    invoke-static/range {v0 .. v6}, Lcom/transsnet/downloader/core/DownloadTaskImpl$a;->b(Lcom/transsnet/downloader/core/thread/f;Lcom/transsnet/downloader/core/DownloadTaskImpl;Lcom/transsion/baselib/db/download/DownloadRange;ILax/b;Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsion/baselib/db/download/DownloadRange;)Lkotlin/Unit;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method
