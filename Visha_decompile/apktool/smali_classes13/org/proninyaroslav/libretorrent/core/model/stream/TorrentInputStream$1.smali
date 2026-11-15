.class Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$1;
.super Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;


# direct methods
.method public constructor <init>(Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;)V
    .locals 0

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$1;->a:Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPieceFinished(Ljava/lang/String;I)V
    .locals 0

    iget-object p2, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$1;->a:Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;

    invoke-static {p2}, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->a(Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;)Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;

    move-result-object p2

    iget-object p2, p2, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;->torrentId:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$1;->a:Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;

    invoke-static {p0}, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->b(Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;)V

    return-void
.end method

.method public onReadPiece(Ljava/lang/String;Lorg/proninyaroslav/libretorrent/core/model/data/ReadPieceInfo;)V
    .locals 1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$1;->a:Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;

    invoke-static {v0}, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->a(Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;)Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;

    move-result-object v0

    iget-object v0, v0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;->torrentId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$1;->a:Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;

    invoke-static {p0, p2}, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->d(Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;Lorg/proninyaroslav/libretorrent/core/model/data/ReadPieceInfo;)V

    return-void
.end method
