.class public final synthetic Lorg/proninyaroslav/libretorrent/core/model/session/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$CallListener;


# instance fields
.field public final synthetic a:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$InnerListener;


# direct methods
.method public synthetic constructor <init>(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$InnerListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/o;->a:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$InnerListener;

    return-void
.end method


# virtual methods
.method public final apply(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/o;->a:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$InnerListener;

    invoke-static {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$InnerListener;->b(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$InnerListener;Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V

    return-void
.end method
