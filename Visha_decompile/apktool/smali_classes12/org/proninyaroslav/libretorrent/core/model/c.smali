.class public final synthetic Lorg/proninyaroslav/libretorrent/core/model/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld5;


# instance fields
.field public final synthetic a:Lorg/proninyaroslav/libretorrent/core/model/DownloadsCompletedListener;

.field public final synthetic b:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;


# direct methods
.method public synthetic constructor <init>(Lorg/proninyaroslav/libretorrent/core/model/DownloadsCompletedListener;Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/c;->a:Lorg/proninyaroslav/libretorrent/core/model/DownloadsCompletedListener;

    iput-object p2, p0, Lorg/proninyaroslav/libretorrent/core/model/c;->b:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/c;->a:Lorg/proninyaroslav/libretorrent/core/model/DownloadsCompletedListener;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/c;->b:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;

    invoke-static {v0, p0}, Lorg/proninyaroslav/libretorrent/core/model/DownloadsCompletedListener;->c(Lorg/proninyaroslav/libretorrent/core/model/DownloadsCompletedListener;Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V

    return-void
.end method
