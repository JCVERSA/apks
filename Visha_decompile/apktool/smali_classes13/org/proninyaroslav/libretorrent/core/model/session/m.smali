.class public final synthetic Lorg/proninyaroslav/libretorrent/core/model/session/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$CallListener;


# instance fields
.field public final synthetic a:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$InnerListener;

.field public final synthetic b:Lorg/libtorrent4j/alerts/StateChangedAlert;


# direct methods
.method public synthetic constructor <init>(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$InnerListener;Lorg/libtorrent4j/alerts/StateChangedAlert;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/m;->a:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$InnerListener;

    iput-object p2, p0, Lorg/proninyaroslav/libretorrent/core/model/session/m;->b:Lorg/libtorrent4j/alerts/StateChangedAlert;

    return-void
.end method


# virtual methods
.method public final apply(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V
    .locals 1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/m;->a:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$InnerListener;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/m;->b:Lorg/libtorrent4j/alerts/StateChangedAlert;

    invoke-static {v0, p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$InnerListener;->c(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$InnerListener;Lorg/libtorrent4j/alerts/StateChangedAlert;Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V

    return-void
.end method
