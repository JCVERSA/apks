.class Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$4;
.super Lorg/proninyaroslav/libretorrent/core/TorrentFileObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->u0(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/TorrentFileObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;


# direct methods
.method public constructor <init>(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$4;->b:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    iput-object p3, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$4;->a:Ljava/lang/String;

    invoke-direct {p0, p2}, Lorg/proninyaroslav/libretorrent/core/TorrentFileObserver;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$4;Landroid/net/Uri;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$4;->b(Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public final synthetic b(Landroid/net/Uri;)V
    .locals 2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$4;->b:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    invoke-static {v0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->t(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;)Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;

    move-result-object v0

    invoke-interface {v0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$4;->b:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    invoke-static {p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->s(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;)Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;->d(Landroid/net/Uri;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/proninyaroslav/libretorrent/core/exception/UnknownUriException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->B()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Watch] Unable to delete file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public onEvent(ILjava/lang/String;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$4;->a:Ljava/lang/String;

    invoke-direct {p1, v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v0, ".torrent"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    iget-object p2, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$4;->b:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    invoke-static {p2}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->q(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;)Lgd1;

    move-result-object p2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$4;->b:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    invoke-virtual {v0, p1}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->F(Landroid/net/Uri;)Lhb1;

    move-result-object v0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhb1;->j(Lio/reactivex/Scheduler;)Lhb1;

    move-result-object v0

    new-instance v1, Lorg/proninyaroslav/libretorrent/core/model/d;

    invoke-direct {v1, p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/d;-><init>(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$4;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lhb1;->g(Ld5;)Lrc2;

    move-result-object p0

    invoke-virtual {p2, p0}, Lgd1;->b(Lrc2;)Z

    :cond_3
    :goto_0
    return-void
.end method
