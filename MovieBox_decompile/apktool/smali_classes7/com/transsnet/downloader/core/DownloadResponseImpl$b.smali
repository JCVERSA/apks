.class public final Lcom/transsnet/downloader/core/DownloadResponseImpl$b;
.super Landroid/os/Handler;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/core/DownloadResponseImpl;-><init>(Lcom/transsnet/downloader/manager/g;Ljava/util/Set;Lax/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsnet/downloader/core/DownloadResponseImpl;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/core/DownloadResponseImpl;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/core/DownloadResponseImpl$b;->a:Lcom/transsnet/downloader/core/DownloadResponseImpl;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    const-string v0, "msg"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string v1, "null cannot be cast to non-null type com.transsion.baselib.db.download.DownloadBean"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    check-cast v0, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    if-nez v0, :cond_1

    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    iget-object v1, p0, Lcom/transsnet/downloader/core/DownloadResponseImpl$b;->a:Lcom/transsnet/downloader/core/DownloadResponseImpl;

    .line 26
    .line 27
    iget v2, p1, Landroid/os/Message;->what:I

    .line 28
    .line 29
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    if-ne p1, v3, :cond_2

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    const/4 v3, 0x0

    .line 36
    :goto_1
    invoke-static {v1, v0, v2, v3}, Lcom/transsnet/downloader/core/DownloadResponseImpl;->f(Lcom/transsnet/downloader/core/DownloadResponseImpl;Lcom/transsion/baselib/db/download/DownloadBean;IZ)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
