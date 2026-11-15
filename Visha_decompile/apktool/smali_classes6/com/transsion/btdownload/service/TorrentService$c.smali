.class public Lcom/transsion/btdownload/service/TorrentService$c;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/btdownload/service/TorrentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public a:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

.field public final synthetic b:Lcom/transsion/btdownload/service/TorrentService;


# direct methods
.method public constructor <init>(Lcom/transsion/btdownload/service/TorrentService;Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/btdownload/service/TorrentService$c;->b:Lcom/transsion/btdownload/service/TorrentService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/transsion/btdownload/service/TorrentService$c;->a:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    return-void
.end method

.method public static synthetic a(Lcom/transsion/btdownload/service/TorrentService$c;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/btdownload/service/TorrentService$c;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/btdownload/service/TorrentService$c;Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/btdownload/service/TorrentService$c;->d(Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;)V

    return-void
.end method


# virtual methods
.method public varargs c([Landroid/net/Uri;)Ljava/lang/Throwable;
    .locals 6

    const/4 v0, 0x0

    aget-object p1, p1, v0

    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x40786096

    if-ne v1, v2, :cond_3

    const-string v1, "magnet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/btdownload/service/TorrentService$c;->b:Lcom/transsion/btdownload/service/TorrentService;

    iget-object v0, v0, Lcom/transsion/btdownload/service/TorrentService;->b:Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;->r(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/btdownload/service/TorrentService$c;->b:Lcom/transsion/btdownload/service/TorrentService;

    iget-object v0, v0, Lcom/transsion/btdownload/service/TorrentService;->b:Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;->o(Z)V

    iget-object v0, p0, Lcom/transsion/btdownload/service/TorrentService$c;->b:Lcom/transsion/btdownload/service/TorrentService;

    invoke-static {v0}, Lcom/transsion/btdownload/service/TorrentService;->c(Lcom/transsion/btdownload/service/TorrentService;)Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->P(Ljava/lang/String;)Landroidx/core/util/Pair;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lorg/proninyaroslav/libretorrent/core/model/data/MagnetInfo;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/transsion/btdownload/service/TorrentService$c;->b:Lcom/transsion/btdownload/service/TorrentService;

    iget-object v2, v2, Lcom/transsion/btdownload/service/TorrentService;->b:Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;

    new-instance v3, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;

    invoke-virtual {v1}, Lorg/proninyaroslav/libretorrent/core/model/data/MagnetInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lorg/proninyaroslav/libretorrent/core/model/data/MagnetInfo;->getSha1hash()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;->p(Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;)V

    iget-object v2, p0, Lcom/transsion/btdownload/service/TorrentService$c;->b:Lcom/transsion/btdownload/service/TorrentService;

    iget-object v2, v2, Lcom/transsion/btdownload/service/TorrentService;->b:Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;

    invoke-virtual {v1}, Lorg/proninyaroslav/libretorrent/core/model/data/MagnetInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;->q(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/transsion/btdownload/service/TorrentService$c;->b:Lcom/transsion/btdownload/service/TorrentService;

    invoke-static {v2}, Lcom/transsion/btdownload/service/TorrentService;->c(Lcom/transsion/btdownload/service/TorrentService;)Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    move-result-object v2

    invoke-virtual {v1}, Lorg/proninyaroslav/libretorrent/core/model/data/MagnetInfo;->getSha1hash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->V(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/transsion/btdownload/service/TorrentService$c;->b:Lcom/transsion/btdownload/service/TorrentService;

    invoke-static {p0}, Lcom/transsion/btdownload/service/TorrentService;->d(Lcom/transsion/btdownload/service/TorrentService;)Lcom/transsion/btdownload/service/TorrentService$b;

    move-result-object p0

    sget-object p1, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;->TASK_EXIST:Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;

    invoke-static {p0, p1}, Lcom/transsion/btdownload/service/TorrentService$b;->a(Lcom/transsion/btdownload/service/TorrentService$b;Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;)V

    return-object v0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    iget-object p1, p1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lxm9;

    new-instance v1, Ldua;

    invoke-direct {v1, p0}, Ldua;-><init>(Lcom/transsion/btdownload/service/TorrentService$c;)V

    new-instance v2, Leua;

    invoke-direct {v2, p0}, Leua;-><init>(Lcom/transsion/btdownload/service/TorrentService$c;)V

    invoke-virtual {p1, v1, v2}, Lxm9;->p(Lzf1;Lzf1;)Lrc2;

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid scheme"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "parse magnet error:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "visha_TorrentService"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public final synthetic d(Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/btdownload/service/TorrentService$c;->b:Lcom/transsion/btdownload/service/TorrentService;

    iget-object v0, v0, Lcom/transsion/btdownload/service/TorrentService;->b:Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;

    invoke-virtual {v0, p1}, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;->p(Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;)V

    iget-object p1, p0, Lcom/transsion/btdownload/service/TorrentService$c;->b:Lcom/transsion/btdownload/service/TorrentService;

    invoke-virtual {p1}, Lcom/transsion/btdownload/service/TorrentService;->k()V

    iget-object p1, p0, Lcom/transsion/btdownload/service/TorrentService$c;->b:Lcom/transsion/btdownload/service/TorrentService;

    invoke-virtual {p1}, Lcom/transsion/btdownload/service/TorrentService;->l()V

    iget-object p0, p0, Lcom/transsion/btdownload/service/TorrentService$c;->b:Lcom/transsion/btdownload/service/TorrentService;

    invoke-static {p0}, Lcom/transsion/btdownload/service/TorrentService;->d(Lcom/transsion/btdownload/service/TorrentService;)Lcom/transsion/btdownload/service/TorrentService$b;

    move-result-object p0

    sget-object p1, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;->FETCHING_MAGNET_COMPLETED:Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;

    invoke-static {p0, p1}, Lcom/transsion/btdownload/service/TorrentService$b;->a(Lcom/transsion/btdownload/service/TorrentService$b;Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;)V

    return-void
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/transsion/btdownload/service/TorrentService$c;->c([Landroid/net/Uri;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic e(Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "visha_TorrentService"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/btdownload/service/TorrentService$c;->b:Lcom/transsion/btdownload/service/TorrentService;

    invoke-static {p0}, Lcom/transsion/btdownload/service/TorrentService;->d(Lcom/transsion/btdownload/service/TorrentService;)Lcom/transsion/btdownload/service/TorrentService$b;

    move-result-object p0

    sget-object p1, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;->ERROR:Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;

    invoke-static {p0, p1}, Lcom/transsion/btdownload/service/TorrentService$b;->a(Lcom/transsion/btdownload/service/TorrentService$b;Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;)V

    return-void
.end method

.method public f(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/transsion/btdownload/service/TorrentService$c;->f(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 0

    return-void
.end method
