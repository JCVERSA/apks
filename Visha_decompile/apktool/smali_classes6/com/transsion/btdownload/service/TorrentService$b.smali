.class public Lcom/transsion/btdownload/service/TorrentService$b;
.super Landroid/os/Binder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/btdownload/service/TorrentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public b:Lgu1;

.field public final synthetic c:Lcom/transsion/btdownload/service/TorrentService;


# direct methods
.method public constructor <init>(Lcom/transsion/btdownload/service/TorrentService;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/btdownload/service/TorrentService$b;->c:Lcom/transsion/btdownload/service/TorrentService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/btdownload/service/TorrentService$b;Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/btdownload/service/TorrentService$b;->n(Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;)V

    return-void
.end method


# virtual methods
.method public b(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/btdownload/service/TorrentService$b;->c:Lcom/transsion/btdownload/service/TorrentService;

    invoke-static {p0}, Lcom/transsion/btdownload/service/TorrentService;->c(Lcom/transsion/btdownload/service/TorrentService;)Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->C(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V

    return-void
.end method

.method public c(Landroid/net/Uri;Lgu1;)Lcom/transsion/btdownload/service/TorrentService$c;
    .locals 1

    iput-object p2, p0, Lcom/transsion/btdownload/service/TorrentService$b;->b:Lgu1;

    new-instance p2, Lcom/transsion/btdownload/service/TorrentService$c;

    iget-object p0, p0, Lcom/transsion/btdownload/service/TorrentService$b;->c:Lcom/transsion/btdownload/service/TorrentService;

    invoke-static {p0}, Lcom/transsion/btdownload/service/TorrentService;->c(Lcom/transsion/btdownload/service/TorrentService;)Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Lcom/transsion/btdownload/service/TorrentService$c;-><init>(Lcom/transsion/btdownload/service/TorrentService;Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    filled-new-array {p1}, [Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-object p2
.end method

.method public d(Ljava/util/List;Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/btdownload/service/TorrentService$b;->c:Lcom/transsion/btdownload/service/TorrentService;

    invoke-static {p0}, Lcom/transsion/btdownload/service/TorrentService;->c(Lcom/transsion/btdownload/service/TorrentService;)Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->M(Ljava/util/List;Z)V

    return-void
.end method

.method public e()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsion/btdownload/service/TorrentService$b;->c:Lcom/transsion/btdownload/service/TorrentService;

    iget-object p0, p0, Lcom/transsion/btdownload/service/TorrentService;->b:Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;->a()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public f()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsion/btdownload/service/TorrentService$b;->c:Lcom/transsion/btdownload/service/TorrentService;

    invoke-static {p0}, Lcom/transsion/btdownload/service/TorrentService;->c(Lcom/transsion/btdownload/service/TorrentService;)Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    move-result-object p0

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->t0()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public g(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;
    .locals 0

    iget-object p0, p0, Lcom/transsion/btdownload/service/TorrentService$b;->c:Lcom/transsion/btdownload/service/TorrentService;

    invoke-static {p0}, Lcom/transsion/btdownload/service/TorrentService;->c(Lcom/transsion/btdownload/service/TorrentService;)Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->X(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;

    move-result-object p0

    return-object p0
.end method

.method public h(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;
    .locals 0

    iget-object p0, p0, Lcom/transsion/btdownload/service/TorrentService$b;->c:Lcom/transsion/btdownload/service/TorrentService;

    invoke-static {p0}, Lcom/transsion/btdownload/service/TorrentService;->c(Lcom/transsion/btdownload/service/TorrentService;)Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->V(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;

    move-result-object p0

    return-object p0
.end method

.method public i()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/btdownload/service/TorrentService$b;->c:Lcom/transsion/btdownload/service/TorrentService;

    invoke-static {p0}, Lcom/transsion/btdownload/service/TorrentService;->c(Lcom/transsion/btdownload/service/TorrentService;)Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    move-result-object p0

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->c0()Z

    move-result p0

    return p0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/btdownload/service/TorrentService$b;->c:Lcom/transsion/btdownload/service/TorrentService;

    invoke-static {p0}, Lcom/transsion/btdownload/service/TorrentService;->c(Lcom/transsion/btdownload/service/TorrentService;)Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->x0(Ljava/lang/String;)V

    return-void
.end method

.method public k(Ljava/lang/String;[Lorg/proninyaroslav/libretorrent/core/model/data/Priority;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/btdownload/service/TorrentService$b;->c:Lcom/transsion/btdownload/service/TorrentService;

    invoke-static {p0}, Lcom/transsion/btdownload/service/TorrentService;->c(Lcom/transsion/btdownload/service/TorrentService;)Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->z0(Ljava/lang/String;[Lorg/proninyaroslav/libretorrent/core/model/data/Priority;)V

    return-void
.end method

.method public l()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/btdownload/service/TorrentService$b;->b:Lgu1;

    return-void
.end method

.method public m()Z
    .locals 2

    const-string v0, "visha_TorrentService"

    const-string v1, "startDownload begin"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/btdownload/service/TorrentService$b;->c:Lcom/transsion/btdownload/service/TorrentService;

    invoke-virtual {p0}, Lcom/transsion/btdownload/service/TorrentService;->f()Z

    move-result p0

    return p0
.end method

.method public final n(Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/btdownload/service/TorrentService$b;->c:Lcom/transsion/btdownload/service/TorrentService;

    iget-object v0, v0, Lcom/transsion/btdownload/service/TorrentService;->b:Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;

    invoke-virtual {v0, p1}, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;->s(Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;)V

    iget-object p0, p0, Lcom/transsion/btdownload/service/TorrentService$b;->b:Lgu1;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lieb;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
