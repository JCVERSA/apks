.class public final synthetic Lorg/proninyaroslav/libretorrent/core/model/session/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$CallListener;


# instance fields
.field public final synthetic a:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/b;->a:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;

    iput-boolean p2, p0, Lorg/proninyaroslav/libretorrent/core/model/session/b;->b:Z

    return-void
.end method


# virtual methods
.method public final apply(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V
    .locals 1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/b;->a:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;

    iget-boolean p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/b;->b:Z

    invoke-static {v0, p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->e(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;ZLorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V

    return-void
.end method
