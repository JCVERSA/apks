.class final Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$LoadTorrentTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LoadTorrentTask"
.end annotation


# instance fields
.field private isMagnet:Z

.field private magnetPaused:Z

.field private magnetSequentialDownload:Z

.field private magnetUri:Ljava/lang/String;

.field private saveDir:Ljava/io/File;

.field final synthetic this$0:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;

.field private torrentId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$LoadTorrentTask;->this$0:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$LoadTorrentTask;->saveDir:Ljava/io/File;

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$LoadTorrentTask;->magnetUri:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$LoadTorrentTask;->isMagnet:Z

    iput-boolean p1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$LoadTorrentTask;->magnetPaused:Z

    iput-boolean p1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$LoadTorrentTask;->magnetSequentialDownload:Z

    iput-object p2, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$LoadTorrentTask;->torrentId:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$LoadTorrentTask;Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$LoadTorrentTask;->lambda$run$0(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V

    return-void
.end method

.method private synthetic lambda$run$0(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$LoadTorrentTask;->torrentId:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;->onRestoreSessionError(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public putMagnet(Ljava/lang/String;Ljava/io/File;ZZ)V
    .locals 0

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$LoadTorrentTask;->magnetUri:Ljava/lang/String;

    iput-object p2, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$LoadTorrentTask;->saveDir:Ljava/io/File;

    iput-boolean p3, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$LoadTorrentTask;->magnetPaused:Z

    iput-boolean p4, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$LoadTorrentTask;->magnetSequentialDownload:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$LoadTorrentTask;->isMagnet:Z

    return-void
.end method

.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$LoadTorrentTask;->this$0:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$LoadTorrentTask;->torrentId:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->v(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$LoadTorrentTask;->isMagnet:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$LoadTorrentTask;->this$0:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$LoadTorrentTask;->magnetUri:Ljava/lang/String;

    iget-object v2, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$LoadTorrentTask;->saveDir:Ljava/io/File;

    iget-boolean v3, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$LoadTorrentTask;->magnetPaused:Z

    iget-boolean v4, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$LoadTorrentTask;->magnetSequentialDownload:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->download(Ljava/lang/String;Ljava/io/File;ZZ)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$LoadTorrentTask;->this$0:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$LoadTorrentTask;->torrentId:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->y(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-static {}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->B()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to restore torrent from previous session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$LoadTorrentTask;->torrentId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$LoadTorrentTask;->this$0:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;

    invoke-static {v1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->m(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;)Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;

    move-result-object v1

    iget-object v2, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$LoadTorrentTask;->torrentId:Ljava/lang/String;

    invoke-interface {v1, v2}, Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;->i(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;->error:Ljava/lang/String;

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$LoadTorrentTask;->this$0:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;

    invoke-static {v0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->m(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;)Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;->c(Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;)V

    :cond_2
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$LoadTorrentTask;->this$0:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;

    new-instance v1, Lorg/proninyaroslav/libretorrent/core/model/session/a0;

    invoke-direct {v1, p0}, Lorg/proninyaroslav/libretorrent/core/model/session/a0;-><init>(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$LoadTorrentTask;)V

    invoke-static {v0, v1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->x(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$CallListener;)V

    :goto_1
    return-void
.end method
