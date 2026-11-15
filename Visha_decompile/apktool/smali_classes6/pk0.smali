.class public Lpk0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpk0$a;,
        Lpk0$b;
    }
.end annotation


# static fields
.field public static volatile d:Lpk0;


# instance fields
.field public a:Lcom/transsion/btdownload/service/TorrentService$c;

.field public final b:Lpk0$a;

.field public c:Lcom/transsion/btdownload/service/TorrentService$b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lpk0$a;

    invoke-direct {v0, p0}, Lpk0$a;-><init>(Lpk0;)V

    iput-object v0, p0, Lpk0;->b:Lpk0$a;

    return-void
.end method

.method public static synthetic a(Lpk0;Landroid/net/Uri;Lgu1;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lpk0;->m(Landroid/net/Uri;Lgu1;)V

    return-void
.end method

.method public static bridge synthetic b(Lpk0;Lcom/transsion/btdownload/service/TorrentService$b;)V
    .locals 0

    iput-object p1, p0, Lpk0;->c:Lcom/transsion/btdownload/service/TorrentService$b;

    return-void
.end method

.method public static f()Lpk0;
    .locals 2

    sget-object v0, Lpk0;->d:Lpk0;

    if-nez v0, :cond_1

    const-class v0, Lpk0;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lpk0;->d:Lpk0;

    if-nez v1, :cond_0

    new-instance v1, Lpk0;

    invoke-direct {v1}, Lpk0;-><init>()V

    sput-object v1, Lpk0;->d:Lpk0;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lpk0;->d:Lpk0;

    return-object v0
.end method


# virtual methods
.method public c(Landroid/content/Context;Landroid/net/Uri;Lgu1;)V
    .locals 1

    iget-object v0, p0, Lpk0;->c:Lcom/transsion/btdownload/service/TorrentService$b;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lpk0;->n(Landroid/content/Context;)V

    iget-object p1, p0, Lpk0;->b:Lpk0$a;

    new-instance v0, Lok0;

    invoke-direct {v0, p0, p2, p3}, Lok0;-><init>(Lpk0;Landroid/net/Uri;Lgu1;)V

    iput-object v0, p1, Lpk0$a;->b:Lpk0$b;

    return-void

    :cond_0
    invoke-virtual {v0, p2, p3}, Lcom/transsion/btdownload/service/TorrentService$b;->c(Landroid/net/Uri;Lgu1;)Lcom/transsion/btdownload/service/TorrentService$c;

    move-result-object p1

    iput-object p1, p0, Lpk0;->a:Lcom/transsion/btdownload/service/TorrentService$c;

    return-void
.end method

.method public d(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V
    .locals 0

    iget-object p0, p0, Lpk0;->c:Lcom/transsion/btdownload/service/TorrentService$b;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/btdownload/service/TorrentService$b;->b(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V

    :cond_0
    return-void
.end method

.method public e(Ljava/util/List;Z)V
    .locals 0

    iget-object p0, p0, Lpk0;->c:Lcom/transsion/btdownload/service/TorrentService$b;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/btdownload/service/TorrentService$b;->d(Ljava/util/List;Z)V

    return-void
.end method

.method public g()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lpk0;->c:Lcom/transsion/btdownload/service/TorrentService$b;

    invoke-virtual {p0}, Lcom/transsion/btdownload/service/TorrentService$b;->e()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public h()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lpk0;->c:Lcom/transsion/btdownload/service/TorrentService$b;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/btdownload/service/TorrentService$b;->f()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public i(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;
    .locals 0

    iget-object p0, p0, Lpk0;->c:Lcom/transsion/btdownload/service/TorrentService$b;

    invoke-virtual {p0, p1}, Lcom/transsion/btdownload/service/TorrentService$b;->g(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;

    move-result-object p0

    return-object p0
.end method

.method public j(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;
    .locals 0

    iget-object p0, p0, Lpk0;->c:Lcom/transsion/btdownload/service/TorrentService$b;

    invoke-virtual {p0, p1}, Lcom/transsion/btdownload/service/TorrentService$b;->h(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;

    move-result-object p0

    return-object p0
.end method

.method public k(Landroid/content/Context;)V
    .locals 1

    new-instance p0, Landroid/content/Intent;

    const-class v0, Lcom/transsion/btdownload/activiy/TorrentDownloadActivity;

    invoke-direct {p0, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, p1}, Lf5;->c(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method

.method public l()Z
    .locals 0

    iget-object p0, p0, Lpk0;->c:Lcom/transsion/btdownload/service/TorrentService$b;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/btdownload/service/TorrentService$b;->i()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic m(Landroid/net/Uri;Lgu1;)V
    .locals 1

    iget-object v0, p0, Lpk0;->c:Lcom/transsion/btdownload/service/TorrentService$b;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/btdownload/service/TorrentService$b;->c(Landroid/net/Uri;Lgu1;)Lcom/transsion/btdownload/service/TorrentService$c;

    move-result-object p1

    iput-object p1, p0, Lpk0;->a:Lcom/transsion/btdownload/service/TorrentService$c;

    return-void
.end method

.method public n(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/transsion/btdownload/service/TorrentService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p0, p0, Lpk0;->b:Lpk0$a;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public o(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lpk0;->c:Lcom/transsion/btdownload/service/TorrentService$b;

    invoke-virtual {p0, p1}, Lcom/transsion/btdownload/service/TorrentService$b;->j(Ljava/lang/String;)V

    return-void
.end method

.method public p(Ljava/lang/String;[Lorg/proninyaroslav/libretorrent/core/model/data/Priority;)V
    .locals 0

    iget-object p0, p0, Lpk0;->c:Lcom/transsion/btdownload/service/TorrentService$b;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/btdownload/service/TorrentService$b;->k(Ljava/lang/String;[Lorg/proninyaroslav/libretorrent/core/model/data/Priority;)V

    return-void
.end method

.method public q()V
    .locals 2

    iget-object v0, p0, Lpk0;->a:Lcom/transsion/btdownload/service/TorrentService$c;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    iget-object p0, p0, Lpk0;->c:Lcom/transsion/btdownload/service/TorrentService$b;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/btdownload/service/TorrentService$b;->l()V

    :cond_1
    return-void
.end method

.method public r(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V
    .locals 0

    iget-object p0, p0, Lpk0;->c:Lcom/transsion/btdownload/service/TorrentService$b;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/btdownload/service/TorrentService$b;->b(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V

    :cond_0
    return-void
.end method

.method public s()Z
    .locals 0

    iget-object p0, p0, Lpk0;->c:Lcom/transsion/btdownload/service/TorrentService$b;

    invoke-virtual {p0}, Lcom/transsion/btdownload/service/TorrentService$b;->m()Z

    move-result p0

    return p0
.end method
