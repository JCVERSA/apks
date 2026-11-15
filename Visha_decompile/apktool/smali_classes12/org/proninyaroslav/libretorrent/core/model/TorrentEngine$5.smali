.class Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;
.super Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;


# direct methods
.method public constructor <init>(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;)V
    .locals 0

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;->a:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;-><init>()V

    return-void
.end method

.method public static synthetic A(Ljava/lang/String;Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;)V
    .locals 0

    return-void
.end method

.method public static synthetic B(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    invoke-static {}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->B()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Getting torrent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " error: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;->p(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/String;Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;->q(Ljava/lang/String;Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;)V

    return-void
.end method

.method public static synthetic c(Ljava/lang/String;Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;->y(Ljava/lang/String;Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;)V

    return-void
.end method

.method public static synthetic d(Ljava/lang/String;Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;->A(Ljava/lang/String;Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;)V

    return-void
.end method

.method public static synthetic e(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;->x(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic f(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;->t(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic g(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;Ljava/lang/String;Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;->s(Ljava/lang/String;Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;)V

    return-void
.end method

.method public static synthetic h(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic i(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;->o(I)V

    return-void
.end method

.method public static synthetic j(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;->r(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic k(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;Ljava/lang/Exception;Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;->v(Ljava/lang/Exception;Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;)V

    return-void
.end method

.method public static synthetic l(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;->u(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic m(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;->B(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic n(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;->z(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic p(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    invoke-static {}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->B()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Getting torrent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " error: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic q(Ljava/lang/String;Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;)V
    .locals 0

    return-void
.end method

.method public static synthetic t(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    invoke-static {}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->B()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Getting torrent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " error: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    invoke-static {}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->B()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Getting torrent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " error: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic y(Ljava/lang/String;Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;)V
    .locals 0

    return-void
.end method

.method public static synthetic z(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    invoke-static {}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->B()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Getting torrent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " error: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final synthetic o(I)V
    .locals 2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;->a:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    invoke-static {v0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->p(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;)Landroid/content/Context;

    move-result-object v0

    if-lez p1, :cond_0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;->a:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    invoke-static {p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->p(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;)Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/transsion/bt_download/R$string;->ip_filter_add_success:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;->a:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    invoke-static {p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->p(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;)Landroid/content/Context;

    move-result-object p0

    sget v1, Lcom/transsion/bt_download/R$string;->ip_filter_add_error:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    const/4 p1, 0x1

    invoke-static {v0, p0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onIpFilterParsed(I)V
    .locals 2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;->a:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    invoke-static {v0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->q(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;)Lgd1;

    move-result-object v0

    new-instance v1, Lorg/proninyaroslav/libretorrent/core/model/e;

    invoke-direct {v1, p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/e;-><init>(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;I)V

    invoke-static {v1}, Lhb1;->d(Ljava/lang/Runnable;)Lhb1;

    move-result-object p0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lhb1;->j(Lio/reactivex/Scheduler;)Lhb1;

    move-result-object p0

    invoke-virtual {p0}, Lhb1;->f()Lrc2;

    move-result-object p0

    invoke-virtual {v0, p0}, Lgd1;->b(Lrc2;)Z

    return-void
.end method

.method public onNatError(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->B()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NAT error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRestoreSessionError(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;->a:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    invoke-static {v0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->q(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;)Lgd1;

    move-result-object v0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;->a:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    invoke-static {p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->u(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;)Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;->j(Ljava/lang/String;)Lxm9;

    move-result-object p0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p0, v1}, Lxm9;->r(Lio/reactivex/Scheduler;)Lxm9;

    move-result-object p0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p0, v1}, Lxm9;->m(Lio/reactivex/Scheduler;)Lxm9;

    move-result-object p0

    new-instance v1, Lorg/proninyaroslav/libretorrent/core/model/i;

    invoke-direct {v1, p1}, Lorg/proninyaroslav/libretorrent/core/model/i;-><init>(Ljava/lang/String;)V

    new-instance v2, Lorg/proninyaroslav/libretorrent/core/model/j;

    invoke-direct {v2, p1}, Lorg/proninyaroslav/libretorrent/core/model/j;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lxm9;->p(Lzf1;Lzf1;)Lrc2;

    move-result-object p0

    invoke-virtual {v0, p0}, Lgd1;->b(Lrc2;)Z

    return-void
.end method

.method public onSessionError(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;->a:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    invoke-static {p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->r(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;)Lorg/proninyaroslav/libretorrent/core/model/SessionErrorFilter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/SessionErrorFilter;->a(Ljava/lang/String;)Z

    return-void
.end method

.method public onSessionStarted()V
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;->a:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    invoke-static {p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->x(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;)V

    return-void
.end method

.method public onTorrentAdded(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;->a:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    invoke-static {v0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->t(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;)Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;

    move-result-object v0

    invoke-interface {v0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;->a0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;->a:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    invoke-static {v0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->u(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;)Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;->i(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;

    move-result-object v1

    iget-object v2, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;->a:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    invoke-static {v2}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->t(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;)Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;

    move-result-object v2

    invoke-interface {v2}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->z(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;Landroid/net/Uri;)V

    :cond_0
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;->a:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    invoke-static {v0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->w(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;->a:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    invoke-static {v0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->q(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;)Lgd1;

    move-result-object v0

    new-instance v1, Lorg/proninyaroslav/libretorrent/core/model/h;

    invoke-direct {v1, p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/h;-><init>(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;Ljava/lang/String;)V

    invoke-static {v1}, Lhb1;->d(Ljava/lang/Runnable;)Lhb1;

    move-result-object p0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lhb1;->j(Lio/reactivex/Scheduler;)Lhb1;

    move-result-object p0

    invoke-virtual {p0}, Lhb1;->f()Lrc2;

    move-result-object p0

    invoke-virtual {v0, p0}, Lgd1;->b(Lrc2;)Z

    :cond_1
    return-void
.end method

.method public onTorrentError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;->onTorrentError(Ljava/lang/String;Ljava/lang/Exception;)V

    if-nez p2, :cond_0

    const-string p0, "unknown"

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string p2, "dl_manager_downloading_bt_fail"

    const-string v0, "video_url"

    const-string v1, "msg"

    invoke-static {p2, v0, p1, v1, p0}, Lhb0;->markTrackTwo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onTorrentFinished(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5$1;

    invoke-direct {v0, p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5$1;-><init>(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/transsion/arch/threads/TaskExecutor;->c(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;->a:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    invoke-static {v0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->q(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;)Lgd1;

    move-result-object v0

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;->a:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    invoke-static {v1}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->u(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;)Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;->j(Ljava/lang/String;)Lxm9;

    move-result-object v1

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lxm9;->r(Lio/reactivex/Scheduler;)Lxm9;

    move-result-object v1

    new-instance v2, Lksa;

    invoke-direct {v2}, Lksa;-><init>()V

    invoke-virtual {v1, v2}, Lxm9;->h(Lie8;)Lb96;

    move-result-object v1

    new-instance v2, Lorg/proninyaroslav/libretorrent/core/model/f;

    invoke-direct {v2, p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/f;-><init>(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;Ljava/lang/String;)V

    new-instance p0, Lorg/proninyaroslav/libretorrent/core/model/g;

    invoke-direct {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/g;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, p0}, Lb96;->h(Lzf1;Lzf1;)Lrc2;

    move-result-object p0

    invoke-virtual {v0, p0}, Lgd1;->b(Lrc2;)Z

    return-void
.end method

.method public onTorrentLoaded(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;->a:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    invoke-static {v0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->w(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;->a:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    invoke-static {v0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->q(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;)Lgd1;

    move-result-object v0

    new-instance v1, Lorg/proninyaroslav/libretorrent/core/model/k;

    invoke-direct {v1, p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/k;-><init>(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;Ljava/lang/String;)V

    invoke-static {v1}, Lhb1;->d(Ljava/lang/Runnable;)Lhb1;

    move-result-object p0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lhb1;->j(Lio/reactivex/Scheduler;)Lhb1;

    move-result-object p0

    invoke-virtual {p0}, Lhb1;->f()Lrc2;

    move-result-object p0

    invoke-virtual {v0, p0}, Lgd1;->b(Lrc2;)Z

    :cond_0
    return-void
.end method

.method public onTorrentMetadataLoaded(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3

    if-eqz p2, :cond_0

    invoke-static {}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->B()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Load metadata error: "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->B()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;->a:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    invoke-static {v0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->q(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;)Lgd1;

    move-result-object v0

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;->a:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    invoke-static {v1}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->u(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;)Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;->j(Ljava/lang/String;)Lxm9;

    move-result-object v1

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lxm9;->r(Lio/reactivex/Scheduler;)Lxm9;

    move-result-object v1

    new-instance v2, Lksa;

    invoke-direct {v2}, Lksa;-><init>()V

    invoke-virtual {v1, v2}, Lxm9;->h(Lie8;)Lb96;

    move-result-object v1

    new-instance v2, Lorg/proninyaroslav/libretorrent/core/model/p;

    invoke-direct {v2, p0, p2}, Lorg/proninyaroslav/libretorrent/core/model/p;-><init>(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;Ljava/lang/Exception;)V

    new-instance p2, Lorg/proninyaroslav/libretorrent/core/model/q;

    invoke-direct {p2, p1}, Lorg/proninyaroslav/libretorrent/core/model/q;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, p2}, Lb96;->h(Lzf1;Lzf1;)Lrc2;

    move-result-object p2

    invoke-virtual {v0, p2}, Lgd1;->b(Lrc2;)Z

    iget-object p2, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;->a:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    invoke-static {p2}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->w(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;->a:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    invoke-static {p2}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->q(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;)Lgd1;

    move-result-object p2

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/r;

    invoke-direct {v0, p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/r;-><init>(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;Ljava/lang/String;)V

    invoke-static {v0}, Lhb1;->d(Ljava/lang/Runnable;)Lhb1;

    move-result-object p0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lhb1;->j(Lio/reactivex/Scheduler;)Lhb1;

    move-result-object p0

    invoke-virtual {p0}, Lhb1;->f()Lrc2;

    move-result-object p0

    invoke-virtual {p2, p0}, Lgd1;->b(Lrc2;)Z

    :cond_1
    return-void
.end method

.method public onTorrentMoved(Ljava/lang/String;Z)V
    .locals 2

    iget-object p2, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;->a:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    invoke-static {p2}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->q(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;)Lgd1;

    move-result-object p2

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;->a:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    invoke-static {p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->u(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;)Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;->j(Ljava/lang/String;)Lxm9;

    move-result-object p0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lxm9;->r(Lio/reactivex/Scheduler;)Lxm9;

    move-result-object p0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lxm9;->m(Lio/reactivex/Scheduler;)Lxm9;

    move-result-object p0

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/l;

    invoke-direct {v0, p1}, Lorg/proninyaroslav/libretorrent/core/model/l;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/proninyaroslav/libretorrent/core/model/m;

    invoke-direct {v1, p1}, Lorg/proninyaroslav/libretorrent/core/model/m;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lxm9;->p(Lzf1;Lzf1;)Lrc2;

    move-result-object p0

    invoke-virtual {p2, p0}, Lgd1;->b(Lrc2;)Z

    return-void
.end method

.method public onTorrentMoving(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;->a:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    invoke-static {v0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->q(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;)Lgd1;

    move-result-object v0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;->a:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    invoke-static {p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->u(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;)Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;->j(Ljava/lang/String;)Lxm9;

    move-result-object p0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p0, v1}, Lxm9;->r(Lio/reactivex/Scheduler;)Lxm9;

    move-result-object p0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p0, v1}, Lxm9;->m(Lio/reactivex/Scheduler;)Lxm9;

    move-result-object p0

    new-instance v1, Lorg/proninyaroslav/libretorrent/core/model/n;

    invoke-direct {v1, p1}, Lorg/proninyaroslav/libretorrent/core/model/n;-><init>(Ljava/lang/String;)V

    new-instance v2, Lorg/proninyaroslav/libretorrent/core/model/o;

    invoke-direct {v2, p1}, Lorg/proninyaroslav/libretorrent/core/model/o;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lxm9;->p(Lzf1;Lzf1;)Lrc2;

    move-result-object p0

    invoke-virtual {v0, p0}, Lgd1;->b(Lrc2;)Z

    return-void
.end method

.method public final synthetic r(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;->a:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    invoke-virtual {v0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->d0()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;->a:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    invoke-static {p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->v(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;)Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->getTask(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;->pause()V

    :cond_1
    return-void
.end method

.method public final synthetic s(Ljava/lang/String;Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;)V
    .locals 2

    iget v0, p2, Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;->visibility:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;->a:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    invoke-static {v0, p2}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->y(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;)V

    :cond_0
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;->a:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    invoke-static {v0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->t(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;)Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;

    move-result-object v0

    invoke-interface {v0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p2, p2, Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;->downloadPath:Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;->a:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    invoke-static {v0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->t(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;)Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;

    move-result-object v0

    invoke-interface {v0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;->a:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->H0(Ljava/lang/String;Landroid/net/Uri;)V

    :cond_1
    return-void
.end method

.method public final synthetic u(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;->a:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    invoke-virtual {v0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->d0()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;->a:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    invoke-static {p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->v(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;)Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->getTask(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;->pause()V

    :cond_1
    return-void
.end method

.method public final synthetic v(Ljava/lang/Exception;Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;->a:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    invoke-static {p1}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->t(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;)Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;

    move-result-object p1

    invoke-interface {p1}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;->a0()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;->a:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    invoke-static {p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->t(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;)Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;

    move-result-object p1

    invoke-interface {p1}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->z(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;Landroid/net/Uri;)V

    goto :goto_0

    :cond_0
    instance-of p0, p1, Lorg/proninyaroslav/libretorrent/core/exception/FreeSpaceException;

    :cond_1
    :goto_0
    return-void
.end method

.method public final synthetic x(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;->a:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    invoke-virtual {v0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->d0()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;->a:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    invoke-static {p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->v(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;)Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->getTask(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;->pause()V

    :cond_1
    return-void
.end method
