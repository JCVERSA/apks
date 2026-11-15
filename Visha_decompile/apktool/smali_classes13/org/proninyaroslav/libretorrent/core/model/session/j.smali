.class public final synthetic Lorg/proninyaroslav/libretorrent/core/model/session/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$CallListener;


# instance fields
.field public final synthetic a:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;

.field public final synthetic b:Lorg/proninyaroslav/libretorrent/core/model/data/ReadPieceInfo;


# direct methods
.method public synthetic constructor <init>(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;Lorg/proninyaroslav/libretorrent/core/model/data/ReadPieceInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/j;->a:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;

    iput-object p2, p0, Lorg/proninyaroslav/libretorrent/core/model/session/j;->b:Lorg/proninyaroslav/libretorrent/core/model/data/ReadPieceInfo;

    return-void
.end method


# virtual methods
.method public final apply(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V
    .locals 1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/j;->a:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/j;->b:Lorg/proninyaroslav/libretorrent/core/model/data/ReadPieceInfo;

    invoke-static {v0, p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->c(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;Lorg/proninyaroslav/libretorrent/core/model/data/ReadPieceInfo;Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V

    return-void
.end method
